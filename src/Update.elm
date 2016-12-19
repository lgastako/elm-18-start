module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg)


update : Msg -> Model -> Model
update msg model =
    let
        _ =
            Debug.log "processing msg" msg
    in
        model
