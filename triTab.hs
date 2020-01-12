trierTab [x] = x
trierTab (x:xs) = if min < x
                    then min
                    else x
                    where min=trierTab xs