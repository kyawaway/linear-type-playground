module Main exposing (..)

import Browser
import Color
import Html exposing (Html, text, div )
import Html.Attributes as HAttrs exposing (style)
import Html.Events as HEvents
import Editor as Editor
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row
import Bootstrap.Navbar as Navbar
import Bootstrap.Button as Button
import Bootstrap.CDN as CDN


---- MODEL ----


type alias Model =
    {
        editor : Editor.Model
        , navbarState : Navbar.State
    }


init : () -> ( Model, Cmd Msg )
init _ =
    let 
        ( editorModel, editorCmd ) =
            Editor.init ()
        
        ( navbarState, navbarCmd ) =
            Navbar.initialState NavbarMsg
    in

    ( {
       editor = Editor.updateCode "//input code here" editorModel
      , navbarState = navbarState
      }
      , Cmd.batch
        [ Cmd.map EditorMsg editorCmd
        ]
    )



---- UPDATE ----


type Msg
    = EditorMsg Editor.Msg
    | NavbarMsg Navbar.State
    | Send
    | LoadCode


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        EditorMsg editorMsg ->
            let
                ( editorModel, editorCmd ) =
                    Editor.update editorMsg model.editor
            in
            ( { model | editor = editorModel }, Cmd.map EditorMsg editorCmd )
        
        NavbarMsg state ->
            ( { model | navbarState = state }, Cmd.none )

        Send ->
            ( model, Cmd.none ) 

        LoadCode ->
            ( model, Cmd.none )




---- VIEW ----

viewNavbar : Model -> Html Msg
viewNavbar model =
    let navbarBaseColor = Color.rgb 0.23 0.21 0.18
        runButtonColor = Color.rgb 0.90 0.76 0.74
        exampleButtonColor = Color.rgb 0.88 0.94 0.78
    in
    Navbar.config NavbarMsg
        |> Navbar.withAnimation
        |> Navbar.darkCustom navbarBaseColor
        |> Navbar.items
            [ Navbar.itemLink
                [ HAttrs.style "padding-bottom" "0"
                , HAttrs.style "padding-top" "0"
                ]
                [ Button.button [ Button.primary, Button.onClick <| Send ] [ text "Run" ] ]
            , Navbar.dropdown
                { id = "exampleDropdown"
                , toggle = Navbar.dropdownToggle [] [ text "Examples" ]
                , items =
                    [ Navbar.dropdownItem [ HEvents.onClick <| LoadCode ]
                        [ text "First Example"]
                    , Navbar.dropdownItem [ HEvents.onClick <| LoadCode ]
                        [ text "Second Exapmle"]
                    , Navbar.dropdownItem [ HEvents.onClick <| LoadCode ]
                        [ text "Third Example." ]
                    ]
                }
            , Navbar.itemLink
                [ HAttrs.style "padding-bottom" "0"
                , HAttrs.style "padding-top" "0"
                ]
                [ Button.button
                    [ Button.secondary, Button.attrs [ HEvents.onClick Send ] ]
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
                    , Grid.col
                        [ Col.xs6
                        , Col.attrs
                            [ HAttrs.style "padding" "0"
                            , HAttrs.style "position" "relative"
                            , HAttrs.style "flex-grow" "1"
                            ]
                        ]
                        [ div
                            [ style "position" "fixed"
                            , style "bottom" "50px"
                            , style "right" "20px"
                            , style "width" "45vw"
                            , style "color" "#5a7323"
                            ]
                            [ text <| "result" ]
                        ]
                    ]
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


---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
