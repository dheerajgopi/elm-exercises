module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


receiveFree : Int -> Int -> Item -> Item
receiveFree minQty free item =
    if item.freeQty == 0 && item.qty >= minQty then
        { item
            | freeQty = free
        }
    else
        item


newCart : List Item
newCart =
    List.map ((receiveFree 10 3) >> (receiveFree 5 1)) cart


main : Html.Html msg
main =
    Html.text (toString newCart)
