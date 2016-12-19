module View exposing (view)

import Html exposing (Html, div, h1, p, text)
import Model exposing (Model)
import Msg exposing (Msg)


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Elm-18-Start coming soon!" ]
        , p [] [ text "wheee..." ]
        ]
