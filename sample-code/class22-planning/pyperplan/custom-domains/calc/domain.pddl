;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Find evaluation order of expressions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain calculator)
  (:requirements :strips)
  (:types object)
  (:predicates (available ?x)
               (assign  ?x)
               (gives ?x ?y ?z)
	       (nopart-div   ?x)
	       (nopart-mult  ?x)
	       (cando-div ?x ?y)
	       (cando-mult  ?x ?y)
	       (cando-add  ?x ?y)
	       (cando-minus  ?x ?y)
	       (done-div ?x ?y)
	       (done-mult  ?x ?y)
	       (done-add  ?x ?y)
	       (done-minus  ?x ?y)
	       )

  (:action do-assign
     :parameters (?x)
     :precondition 
	(available ?x)
     :effect
	(assign ?x))

  (:action do-mult
     :parameters (?x ?y ?z)
     :precondition (and (cando-mult ?x ?y) (available ?x) (available ?y)
                        (gives ?x ?y ?z))
     :effect
	     (and (not (cando-mult ?x ?y))
		   (not (available ?x))
		   (not (available ?y))
		   (nopart-mult ?x)
		   (nopart-mult ?y)
                   (done-mult ?x ?y)
                   (available ?z)))

(:action do-div
     :parameters (?x ?y ?z)
     :precondition (and (cando-div ?x ?y) (available ?x) (available ?y)
                        (gives ?x ?y ?z))
     :effect
	     (and (not (cando-div ?x ?y))
		   (not (available ?x))
		   (not (available ?y))
		   (nopart-div ?x)
		   (nopart-div ?y)
                   (done-div ?x ?y)
                   (available ?z)))

(:action do-add
     :parameters (?x ?y ?z)
     :precondition (and (cando-add ?x ?y) (available ?x) (available ?y)
                        (nopart-mult ?x) (nopart-mult ?y)
                        (nopart-div ?x) (nopart-div ?y) 
                        (gives ?x ?y ?z))
     :effect
	     (and (not (cando-add ?x ?y))
		   (not (available ?x))
		   (not (available ?y))
                   (done-add ?x ?y)
                   (available ?z)))

(:action do-minus
     :parameters (?x ?y ?z)
     :precondition (and (cando-minus ?x ?y) (available ?x) (available ?y)
                        (nopart-mult ?x) (nopart-mult ?y)
                        (nopart-div ?x) (nopart-div ?y) 
                        (gives ?x ?y ?z))
     :effect
	     (and (not (cando-minus ?x ?y))
		   (not (available ?x))
		   (not (available ?y))
                   (done-minus ?x ?y)
                   (available ?z)))

 )