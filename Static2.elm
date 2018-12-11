import Html exposing (..)
import Html.Attributes exposing (style, src)

avatar jpg =
  img
    [ src jpg
    , style "float" "left"
    , style "margin-right" "30px"
    , style "width" "96px"
    , style "width" "96px"
    , style "border-radius" "50%"
    ]
    []

person name jpg desc =
  div [ style "min-height" "120px" ]
    [ avatar jpg
    , h2
      [ style "font-family" "Verdana"
      , style "margin-bottom" "5px"
      ]
      [ text name ]
    , p
      [ style "font-family" "Helvetica"
      , style "font-weight" "200"
      , style "margin" "0px"
      ]
      [ text desc ]
    ]

main =
  div
    [ style "width" "520px"
    , style "margin" "50px auto"
    ]
    [ person
        "Johannes Ridderstedt"
        "johannes.jpg"
        "Jojo is a self-thought coder, now CEO of 46elks. Pythonist and indie game developer."
    , person
        "Gregoire Gilbert"
        "greg.jpg"
        "Greg runs Nerdy Makers and loves ice hockey. Cofounder of Uppsala Tech Community and Capsule."
    ]
