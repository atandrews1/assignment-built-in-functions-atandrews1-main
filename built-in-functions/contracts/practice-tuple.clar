
;; tuple
;; Work with tuples and its functions

;; Tuple Example for this exercise is fixed
(define-constant TUPLE_INPUT {
        id: u1, 
        employee: {
            name: "Stacker", 
            city: "Windy City", 
            language: "Python", 
            clubs: (list {id: u10, name: "Club 1"}
                            {id: u20, name: "Club 2"} 
                            {id: u30, name: "Club 3"}
                    )
        }
    }
)

 (define-public (get-employee-2nd-club-name-from-tuple)
 (let
       
       (
       (employeeTuple (get employee TUPLE_INPUT))
        (clublist (get clubs employeeTuple))
       (club1 (element-at clublist u1)) 
       (clubName (get name club1))   
        
        )
        (ok clubName)
)
 )

 (define-public (set-new-language-for-employee-in-tuple)
     (let
       
       (
        (employeeTuple (get employee TUPLE_INPUT))
        (currentlanguage (get language employeeTuple))
        (updatelanguage (concat currentlanguage "Buid1"))
        (updateemployeeTuple (merge employeeTuple {language: updatelanguage}))
        (updateFinalTuple (merge TUPLE_INPUT {employee: updateemployeeTuple}))
        )
        (print updateemployeeTuple)
        (ok true)
        
        )
        )
