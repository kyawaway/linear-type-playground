module Examples exposing (..)

{-| This example demonstrates a force directed graph with zoom and drag
functionality.

@delay 5
@category Advanced

-}

-- Constants


id =
    """ 
let id = lin lambda x:lin bool.x;

let main = id (lin true);

    """


app =
    """ 
let rtfn = lin lambda x:lin bool. (lin lambda y:lin (lin bool -> lin bool).y x);

let main = (rtfn (lin true)) (lin lambda x:lin bool.x);

    """


split =
    """
let fst = lin lambda x:lin (un bool * un bool).split x as p,q in p;

let id = lin lambda x:un bool . x;

let main = fst (lin <id (un true),un true>);

    """
