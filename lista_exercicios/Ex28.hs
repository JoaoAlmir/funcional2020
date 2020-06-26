rotDir:: Int -> String -> String

rotDir 0 str = str
rotDir num str = rotDir (num+(-1)) (last str:init str)  