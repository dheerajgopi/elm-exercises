module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


receiveFree minQty free item =
    if item.freeQty == 0 && item.qty >= minQty then
        { item
            | freeQty = free
        }
    else
        item


newCart =
    List.map ((receiveFree 10 3) >> (receiveFree 5 1)) cart


main =
    Html.text (toString newCart)
