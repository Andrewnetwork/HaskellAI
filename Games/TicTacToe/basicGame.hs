-- basicGame.hs
-- Andrew Ribeiro 
-- November 2018

-- TYPES --
data Cell = X | Y | E deriving Show
data Board = Board Cell Cell Cell Cell Cell Cell Cell Cell Cell deriving Show
type Turn = (Cell,Board)
data Game = G1 Turn | G2 Turn Turn | G3 Turn Turn Turn | G4 Turn Turn Turn Turn |
            G5 Turn Turn Turn Turn Turn | G6 Turn Turn Turn Turn Turn Turn |
            G7 Turn Turn Turn Turn Turn Turn Turn | G8 Turn Turn Turn Turn Turn Turn Turn Turn |
            G9 Turn Turn Turn Turn Turn Turn Turn Turn Turn deriving Show
-- FUNCTIONS --
move :: (Turn,TTTMove) -> Turn
move state, move
    | (X,Board) = "X"
    | (Y,Board) = "Y"
    | (E,Board) = "E"
