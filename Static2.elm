import Html exposing (..)
import Html.Attributes exposing (style, src)

avatarStyle =
  style
    [ ("width", "96px")
    , ("width", "96px")
    , ("border-radius", "50%")
    ]

person name jpg desc =
  div [ style [ ("min-height", "120px") ] ]
    [ img
      [ src jpg
      , avatarStyle
      , style [ ("float", "left"), ("margin-right","30px") ]
      ]
      []
    , h2
      [ style [ ("font-family", "Verdana"), ("margin-bottom", "5px") ] ]
      [ text name ]
    , p
      [ style
        [ ("font-family", "Helvetica")
        , ("font-weight", "200")
        , ("margin", "0px")
        ]
      ]
      [ text desc ]
    ]

main =
  div
    [ style
      [ ("width","520px")
      , ("margin", "50px auto")
      ]
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
