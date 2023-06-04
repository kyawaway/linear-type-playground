module Results exposing (..)


import Bootstrap.Form.Textarea as Textarea
import Html exposing (Html)
import Html.Attributes as HAttrs exposing (style)


-- Constants


initialContent : String
initialContent =
    ""


-- Types


type Msg
    = TextareaMsg String


type alias Model =
    { results : String
    , messages : List String
    }



-- Initialize


init : () -> ( Model, Cmd Msg )
init _ =
    ( { results = initialContent
      , messages = []
      }
    , Cmd.none
    )



-- Update


updateResults : String -> Model -> Model
updateResults results model =
    { model | results = results, messages = "edited" :: model.messages }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TextareaMsg results ->
            ( updateResults results model, Cmd.none )



-- View


view : Model -> Html Msg
view model =
    Textarea.textarea
        [ Textarea.id "myarea"
        , Textarea.attrs
            [ HAttrs.class "codeResult"

            , HAttrs.style "color" "#5a7323"
            , HAttrs.style "border" "none"
            , HAttrs.style "outline" "none"
            , HAttrs.style "padding" "20px"
            , HAttrs.style "height" "100%"

            , HAttrs.style "font-family" "JetBrains Mono, monospace"
            , HAttrs.style "font-size" "20px"
            , HAttrs.style "background" "#e1f0c8"
            , HAttrs.style "resize" "none"
            ]
        , Textarea.rows 30

        , Textarea.value model.results
        , Textarea.onInput TextareaMsg
        ]


-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none