import Browser
import Html exposing (..)
import Html.Attributes exposing (style, src)
import Html.Events exposing (onClick)

main =
  Browser.sandbox
    { init = 0
    , update = update
    , view = view
    }

type Msg
  = Add
  | Remove

update msg model =
  case msg of
    Add ->
      model + 1
    Remove ->
      model - 1

view model =
  div []
    [ button [ onClick Add ] [ text "Add" ]
    , button [ onClick Remove ] [ text "Remove" ]
    , br [] []
    , br [] []
    , div [] (render [] model)
    ]

render progress i =
  let
    width = (i^1.7) * 16
    image = img
      [ style "border-radius" "50%"
      , style "width" ( String.fromFloat(width) ++ "px" )
      , src "happy-cc0.jpg"
      ]
      []
  in
    if i > 0 then
      [ image ] ++ (render progress (i - 1))
    else
      progress
