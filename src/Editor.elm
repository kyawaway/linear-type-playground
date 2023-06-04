module Editor exposing (..)


import Bootstrap.Form.Textarea as Textarea
import Html exposing (Html, div, text)
import Html.Attributes as HAttrs exposing (style)
import Json.Decode as Decode exposing (Decoder)


-- Constants


initialContent : String
initialContent =
    ""


-- Types


type Msg
    = TextareaMsg String


type alias Model =
    { code : String
    , messages : List String
    }



-- Initialize


init : () -> ( Model, Cmd Msg )
init _ =
    ( { code = initialContent
      , messages = []
      }
    , Cmd.none
    )



-- Update


updateCode : String -> Model -> Model
updateCode code model =
    { model | code = code, messages = "edited" :: model.messages }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TextareaMsg code ->
            ( updateCode code model, Cmd.none )



-- View


view : Model -> Html Msg
view model =
    Textarea.textarea
        [ Textarea.id "myarea"
        , Textarea.attrs
            [ HAttrs.class "codeEditor"

            , HAttrs.style "color" "#3c372d"
            , HAttrs.style "border" "none"
            , HAttrs.style "outline" "none"
            , HAttrs.style "padding" "20px"
            , HAttrs.style "height" "100%"

            , HAttrs.style "font-family" "JetBrains Mono, monospace"
            , HAttrs.style "font-size" "20px"
            , HAttrs.style "background" "#fffae6"
            , HAttrs.style "resize" "none"
            ]
        , Textarea.rows 30

        , Textarea.value model.code
        , Textarea.onInput TextareaMsg
        ]



-- Subscriptions


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
