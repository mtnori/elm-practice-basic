module CreateTypes2 exposing (User(..))


type User
    = LoggedIn String
    | Guest


user1 : User
user1 =
    LoggedIn "Taro"


user2 : User
user2 =
    LoggedIn "Hanako"


user3 : User
user3 =
    Guest
