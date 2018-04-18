import Html exposing (..)
import Html.Attributes exposing (src)

main =
  hr [] []

main =
  img [ src "test.png" ] []

main =
  h1 [] [ text "Title" ]

seconds hours =
  hours * 60 * 60

speeding speed =
  if speed >= 120 then
    True
  else
    False

location =
  "Uppsala, Sweden"

todo =
  [ "Attend meetup"
  , "Join Slack"
  , "Have fun"
  ]

-- Type inference

input = "100"
age = 34

isCorrect =
  if input == toString age then
    True
  else
    False

title t =
  h1 [] [ text t ]

main =
  div []
    [ title "2018"
    , p [] [ text "Epic (f)ail" ]
    ]
