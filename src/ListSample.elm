module ListSample exposing (filter, filter2, filterMap, filterMap2, foldl, foldl2, foldl3, foldr, head, indexedMap, length, map, tail)


head =
    List.head [ "foo", "bar", "baz" ]


tail =
    List.tail [ "foo", "bar", "baz" ]


length =
    List.length [ 1, 2, 3, 4, 5 ]


map =
    List.map (\lang -> "I LOVE " ++ lang) [ "Elm", "JavaScript" ]


indexedMap =
    List.indexedMap (\index lang -> String.fromInt index ++ ": " ++ lang) [ "Elm", "JavaScript" ]


filter =
    List.filter (\( _, staticType ) -> staticType) [ ( "Elm", True ), ( "JavaScript", False ) ]


filter2 =
    List.filter (\n -> remainderBy 2 n == 1) [ 2, 3, 5 ]


filterMap =
    List.filterMap
        (\( lang, staticType ) ->
            if staticType then
                Just lang

            else
                Nothing
        )
        [ ( "Elm", True ), ( "JavaScript", False ) ]


filterMap2 =
    List.filterMap
        (\n ->
            if remainderBy 2 n == 1 then
                Just (10 * n)

            else
                Nothing
        )
        [ 2, 3, 5 ]


foldl =
    List.foldl (\n sum -> sum + n) 0 [ 1, 2, 3, 4, 5 ]


foldl2 =
    List.foldl (+) 0 [ 1, 2, 3, 4, 5 ]


foldl3 =
    List.foldl (\n str -> str ++ " " ++ String.fromInt n) "Prime Numbers: " [ 2, 3, 5, 7, 11 ]


foldr =
    List.foldr (\n str -> str ++ " " ++ String.fromInt n) "Prime Numbers: " [ 2, 3, 5, 7, 11 ]
