import Html exposing (ul, li, text)

items =
  [ "Functional"
  , "Web focused"
  , "Pure"
  , "Delightful"
  ]

item s =
  li [] [ text s ]

children = List.map item items

main =
  ul [] children
