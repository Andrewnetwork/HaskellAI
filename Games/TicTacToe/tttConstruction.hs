-- tttConstruction.hs
-- Andrew Ribeiro 
-- November 2018
-- In this script we look to consruct Tic-Tac-Toe 

-- Each cell can either be filled with an X,Y or empty space E. 
data Cell = X | Y | E deriving Show

-- Each board is composed of 9 cells. 
data Board = Board Cell Cell Cell Cell Cell Cell Cell Cell Cell deriving Show

-- Each turn is a board with a player turn indicator. E indicates a terminal turn. 
type Turn = (Cell,Board)

data Game = G1 Turn | G2 Turn Turn | G3 Turn Turn Turn | G4 Turn Turn Turn Turn |
            G5 Turn Turn Turn Turn Turn | G6 Turn Turn Turn Turn Turn Turn |
            G7 Turn Turn Turn Turn Turn Turn Turn | G8 Turn Turn Turn Turn Turn Turn Turn Turn |
            G9 Turn Turn Turn Turn Turn Turn Turn Turn Turn

-- Board E E E E E E E E E
--x = ( X , (E E E E E E E E E ) )

-- z = G1 (X,Board E E E E E E E E E)

makeCell :: Int -> Cell
makeCell x
    | x == 0 = E
    | x == 1 = X
    | x == 2 = Y
