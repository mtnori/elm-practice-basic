module Greeting exposing (message)


message hour userName =
    let
        greeting =
            if hour < 12 then
                "Good morning"

            else if hour < 18 then
                "Good afternoon"

            else
                "Good evening"
    in
    greeting ++ ", " ++ userName ++ "!"


evaluate boolean =
    case boolean of
        Literal bool ->
            bool

        Not b ->
            not (eval b)

        And b b_ ->
            eval b && eval b_

        Or b b_ ->
            eval b || eval b_
