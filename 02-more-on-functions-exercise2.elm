module Main exposing (..)

import Html
import String

(~=) s1 s2 =
    let
        firstCharS1 = String.toUpper (String.left 1 s1)
        firstCharS2 = String.toUpper (String.left 1 s2)

    in
        firstCharS1 == firstCharS2 

main =
    let
        s1 = "Hello"
        s2 = "hi"

    in
        (~=) s1 s2
        |> toString
        |> Html.text
