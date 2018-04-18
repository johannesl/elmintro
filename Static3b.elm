import Html exposing (ul, li, text)

items =
  [ "Functional"
  , "Web focused"
  , "Pure"
  , "Delightful"
  ]

main =
  let
    item s = li [] [ text s ]
    children = List.map item items
  in
    ul [] children
