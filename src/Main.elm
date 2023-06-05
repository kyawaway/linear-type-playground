port module Main exposing (main)

import Browser
import Color
import Html exposing (Html, text, div )
import Html.Attributes as HAttrs exposing (style, href)
import Html.Events as HEvents
import Editor as Editor
import Results as Results
import Examples as Examples
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline as DP
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Bootstrap.Navbar as Navbar
import Bootstrap.Button as Button
import Bootstrap.CDN as CDN
import Bootstrap.Modal as Modal

-- PORTS


port sendMessage : String -> Cmd msg


port messageReceiver : (String -> msg) -> Sub msg


type alias Message =
    { 
      results : String
    }


decodeMessage : Decoder Message
decodeMessage =
    Decode.succeed Message
        |> DP.required "results" Decode.string
 
---- MODEL ----


type alias Model =
    {
          editor : Editor.Model
        , results : Results.Model
        , navbarState : Navbar.State
        , messages : List String
        , aboutModal : Modal.Visibility
    }


init : () -> ( Model, Cmd Msg )
init _ =
    let 
        ( editorModel, editorCmd ) =
            Editor.init ()
        
        ( resultsModel, resultsCmd ) =
            Results.init ()
        
        ( navbarState, navbarCmd ) =
            Navbar.initialState NavbarMsg
    in

    ( {
        messages = []
      , editor = Editor.updateCode "//input code here" editorModel
      , results = Results.updateResults "result" resultsModel
      , navbarState = navbarState
      , aboutModal = Modal.hidden
      }
      , Cmd.batch
        [ Cmd.map EditorMsg editorCmd
        ]
    )



---- UPDATE ----


type Msg
    = EditorMsg Editor.Msg
    | ResultsMsg Results.Msg
    | NavbarMsg Navbar.State
    | Send
    | Receive (Result Decode.Error Message)
    | LoadCode String
    | CloseAboutModal
    | ShowAboutModal


updateCode : String -> Model -> Model
updateCode code model =
    { model
        | editor = Editor.updateCode code model.editor
        , messages = "udpateCode" :: model.messages
    }

updateResults : String -> Model -> Model
updateResults results model =
    { model
        | results = Results.updateResults results model.results
        , messages = "udpateResults" :: model.messages
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        EditorMsg editorMsg ->
            let
                ( editorModel, editorCmd ) =
                    Editor.update editorMsg model.editor
            in
            ( { model | editor = editorModel }, Cmd.map EditorMsg editorCmd )
        
        ResultsMsg resultsMsg ->
            let
                ( resultsModel, resultsCmd ) =
                    Results.update resultsMsg model.results
            in
            ( { model | results = resultsModel }, Cmd.map ResultsMsg resultsCmd )
        
        NavbarMsg state ->
            ( { model | navbarState = state }, Cmd.none )

        Send ->
            ( { model | messages = "Send" :: model.messages }
            , sendMessage <| model.editor.code
            )
        
        Receive (Ok { results }) ->
            ( updateResults results model
            , Cmd.none
            )
        
        Receive (Err err) ->
            ( { model | messages = Decode.errorToString err :: model.messages }
            , Cmd.none
            )

        LoadCode code ->
            ( updateCode code model, Cmd.none )

        CloseAboutModal ->
            ( { model | aboutModal = Modal.hidden }
            , Cmd.none
            )

        ShowAboutModal ->
            ( { model | aboutModal = Modal.shown }
            , Cmd.none
            )




---- VIEW ----

viewAboutModel : Model -> Html Msg
viewAboutModel model =
    Modal.config CloseAboutModal
        |> Modal.large
        |> Modal.h5 [] [ text "A Playground of Linear Types" ]
        |> Modal.scrollableBody True
        |> Modal.body []
            [ Html.p []
                [ text """
                The concrete syntax of the language is follows:
                """
                , Html.img
                    [ HAttrs.style "max-width" "100%"
                    , HAttrs.src "syntax.png"
                    , HAttrs.alt "The syntax of the λGT language."
                    ]
                    []
                ]
            ]
        |> Modal.footer []
            [ Button.button
                [ Button.outlinePrimary
                , Button.attrs [ HEvents.onClick CloseAboutModal ]
                ]
                [ text "Close" ]
            ]
        |> Modal.view model.aboutModal


viewNavbar : Model -> Html Msg
viewNavbar model =
    let navbarBaseColor = Color.rgb 0.23 0.21 0.18
--        runButtonColor = Color.rgb 0.90 0.76 0.74
--        exampleButtonColor = Color.rgb 0.88 0.94 0.78
    in
    Navbar.config NavbarMsg
        |> Navbar.darkCustom navbarBaseColor
        |> Navbar.items
            [ Navbar.itemLink
                [ HAttrs.style "padding-bottom" "0"
                , HAttrs.style "padding-top" "0"
                , HAttrs.style "flex-grow" "1"
                , HAttrs.style "height" "100%"
                ]
                [ Button.button [ Button.primary, Button.onClick <| Send ] [ text "Run" ] ]
            , Navbar.dropdown
                { id = "exampleDropdown"
                , toggle = Navbar.dropdownToggle [] [ text "Examples" ]
                , items =
                    [ Navbar.dropdownItem [ HEvents.onClick <| LoadCode Examples.id ]
                        [ text "id" ]
                    , Navbar.dropdownItem [ HEvents.onClick <| LoadCode Examples.app ]
                        [ text "apply" ]
                    , Navbar.dropdownItem [ HEvents.onClick <| LoadCode Examples.split ]
                        [ text "split" ]
                    ]
                }
            , Navbar.itemLink
                [ HAttrs.style "padding-bottom" "0"
                , HAttrs.style "padding-top" "0"
                ]
                [ Button.button
                    [ Button.secondary, Button.attrs [ HEvents.onClick ShowAboutModal ] ]
                    [ text "About" ]
                ]
            ] 
        |> Navbar.view model.navbarState


view : Model -> Html Msg
view model =
    let
        height100 =
            HAttrs.style "height" "100%"

        paneMain =
            [ viewNavbar model
            , Grid.containerFluid [ HAttrs.style "flex-grow" "1", height100 ]
                [ Grid.row [ Row.attrs [ height100 ] ]
                    [ Grid.col [ Col.xs6, Col.attrs [ height100, HAttrs.style "padding" "0" ] ]
                        [
                            Html.map EditorMsg <| Editor.view model.editor
                        ]
                    , Grid.col [ Col.xs6, Col.attrs [ height100, HAttrs.style "padding" "0" ] ]
                        [
                            Html.map ResultsMsg <| Results.view model.results
                        ]
                    ]
                , viewAboutModel model
                ]
            ]
    in
    div []
        [ CDN.stylesheet
        , div
            [ style "display" "flex"
            , HAttrs.style "display" "flex"
            , HAttrs.style "flex-flow" "column"
            , HAttrs.style "height" "100vh"
            ]
            paneMain
        ]


---- Subscriptions ----


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ messageReceiver <| Receive << Decode.decodeString decodeMessage
        , Sub.map EditorMsg <| Editor.subscriptions model.editor
        , Navbar.subscriptions model.navbarState NavbarMsg
        ]


---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }
