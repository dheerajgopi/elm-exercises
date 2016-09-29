module Main exposing (..)

import Html
import String

upperCase maxLen name =
    if String.length name > maxLen then
        String.toUpper name
    else
        name

upperCaseLen10 =
    upperCase 10

main =
    let
        name =
            "Dheeraj Gopinath"

        length =
            String.length name

    in
        (upperCaseLen10 name)
            ++ " - name length: "
            ++ toString length
            |> Html.text
