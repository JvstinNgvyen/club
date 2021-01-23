module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN

main =
  Browser.sandbox { init = 0, update = update,  view = view}

-- MODEL

type Msg = Increment | Decrement

-- UPDATE

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- VIEW

view model =
  div []
    [ button [ onClick Decrement ] [ text "-"]
    , div [] [ text (String.fromInt model)]
    , button [ onClick Increment] [text "+"]
    ]
