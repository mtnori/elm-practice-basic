module CreateTypes exposing (output)


output : String
output =
    "1 + 1 = " ++ String.fromInt (add 1 1)


add : Int -> Int -> Int
add a b =
    a + b


message =
    join "Hello" ", " "World"


join : String -> String -> String -> String
join a b c =
    a ++ b ++ c


type alias User =
    { id : Int, name : String, image : String }


isValid : User -> Bool
isValid user =
    String.length user.name > 0


userRecord : User
userRecord =
    User 1 "Taro" "1.png"


type alias UserId =
    Int


generateNewId : UserId -> UserId
generateNewId lastId =
    lastId + 1


newId =
    generateNewId 1


example : Int
example =
    getId { id = 1, title = "Indroduction" }


getId : { a | id : Int } -> Int
getId something =
    something.id



-- カスタム型


type Day
    = Mon
    | Tue
    | Wed
    | Thu
    | Fri
    | Sat
    | Sun


firstDay : Day
firstDay =
    Mon


weekDay : List Day
weekDay =
    [ Mon, Tue, Wed, Thu, Fri ]


type Lang
    = En
    | Ja
    | Fr


hello : Lang -> String
hello lang =
    case lang of
        En ->
            "Hello"

        Ja ->
            "こんにちは"

        Fr ->
            "Bonjour"
