trierTab [] = []
trierTab (x:xs) = if min < x
                    then min:(trierTab xs)
                    else x:(trierTab xs)
                    where min=x