import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

type Element
  = Title String
  | Segment String
  | Image String String

type alias Model =
  { body : String
  , elements : List Element
  }

emptyModel : Model
emptyModel =
  { body = ""
  , elements = []
  }

main =
  beginnerProgram
    { model = emptyModel
    , update = update
    , view = view
    }

type Msg
  = Reset
  | NewText String
  | AddTitle
  | AddSegment
  | AddImage

update msg model =
  case msg of
    Reset ->
      emptyModel
    NewText s ->
      { model | body = s }
    AddTitle ->
      { model
      | elements = model.elements ++ [ Title model.body ]
      , body = ""
      }
    AddSegment ->
      { model
      | elements = model.elements ++ [ Segment model.body ]
      , body = ""
      }
    AddImage ->
      { model
      | elements = model.elements ++ [ Image "happy-cc0.jpg" model.body ]
      , body = ""
      }

view model =
  div [ style [ ("margin","20px auto"), ("width","400px") ] ]
    [ render model
    , textarea [ onInput NewText, value model.body ] []
    , br [] []
    , button [ onClick AddTitle ] [ text "Title" ]
    , button [ onClick AddSegment ] [ text "Segment" ]
    , button [ onClick AddImage ] [ text "Img" ]
    ]

render model =
  let
    renderElement element =
      case element of
        Title s ->
          h1 [] [ text s ]
        Segment s ->
          p [] [ text s ]
        Image url desc ->
          img [ src url, style [ ("height","48px") ], title desc ]
            [ text "Hello"
            ]
  in
    div [] (List.map renderElement model.elements)
