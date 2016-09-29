module Main exposing (..)

import Html
import String
import List


wordCount =
    String.words >> List.length


main =
    "Hello! How are you?"
        |> wordCount
        |> toString
        |> Html.text
