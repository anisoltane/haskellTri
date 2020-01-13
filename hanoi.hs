hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n-1) a c b ++ [(a,b)] ++ hanoi (n-1) c b a


elem' [] = 0
elem' tab = if (head tab)== (last tab)
                then 1+(elem' ( init tab ))
                else 0+(elem' ( init tab ))


lahdha []=[]
lahdha tab = if elem (head tab) nl
                then lahdha (tail tab)
                else ((head tab)*10):(elem' tab):(lahdha (tail tab))
                where nl = (elem' tab):(lahdha (tail tab))

lahdha2 []=[]
lahdha2 tab = if elem (head tab) nl
                then []
                else
                 nl
                where nl = (elem' tab):(lahdha2 (tail tab))