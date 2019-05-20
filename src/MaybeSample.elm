module MaybeSample exposing (showFirstValue)


showFirstValue : List Int -> String
showFirstValue list =
    case List.head list of
        Just value ->
            String.fromInt value

        Nothing ->
            "Empty!"


resut =
    List.head [ "1", "2", "3" ]
        |> Maybe.andThen String.toInt
        |> Maybe.map (\num -> num * 10)
        |> Maybe.withDefault 0
