import Html exposing (ul, li, text)

main = ul [] (List.map (\s -> li [] [ text s ]) [ "All code", "On one line", "Is not very", "Delightful" ] )
