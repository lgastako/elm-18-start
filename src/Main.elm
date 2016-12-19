module Main exposing (main)

import Html
import Model exposing (Model)
import Msg exposing (Msg)
import Update
import View


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = Model.empty
        , view = View.view
        , update = Update.update
        }
