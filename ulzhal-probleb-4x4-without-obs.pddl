(define (problem p01) (:domain ulzhal)
  (:objects
        down - direction
    	left - direction
    	right - direction
    	up - direction
    	robot - thing
    	pos-1-1 - location
    	pos-1-2 - location
    	pos-1-3 - location
    	pos-1-4 - location
    	pos-2-1 - location
    	pos-2-2 - location
    	pos-2-3 - location
    	pos-2-4 - location
    	pos-3-1 - location
    	pos-3-2 - location
    	pos-3-3 - location
    	pos-3-4 - location
    	pos-4-1 - location
    	pos-4-2 - location
    	pos-4-3 - location
    	pos-4-4 - location
    	block-01 - thing
    	
  )
  (:goal (and
	(at-goal block-01)))

  (:init 
	(at robot pos-4-4)
	(at block-01 pos-3-3)

    (clear pos-1-1)
	(clear pos-1-2)
	(clear pos-1-3)
	(clear pos-1-4)
	(clear pos-2-1)
	(clear pos-2-4)
	(clear pos-3-1)
	(clear pos-4-1)
	(clear pos-2-2)
	(clear pos-2-3)
	(clear pos-3-2)
	(clear pos-3-4)
	(clear pos-4-2)
	(clear pos-4-3)
	(clear pos-4-4)
	(is-goal pos-4-2)
	(is-nongoal pos-1-1)
	(is-nongoal pos-1-2)
	(is-nongoal pos-1-3)
	(is-nongoal pos-1-4)
	
	(is-nongoal pos-2-1)
	(is-nongoal pos-2-2)
	(is-nongoal pos-2-3)
	(is-nongoal pos-2-4)

	(is-nongoal pos-3-1)
	(is-nongoal pos-3-2)
	(is-nongoal pos-3-3)
	(is-nongoal pos-3-4)

	(is-nongoal pos-4-1)
	(is-nongoal pos-4-2)
	(is-nongoal pos-4-3)
	(is-nongoal pos-4-4)



	(is-agent robot)
	(is-block block-01)
	(move down)
	(move left)
	(move right)
	(move up)

    (move-dir pos-1-1 pos-1-2 down)
    (move-dir pos-1-1 pos-2-1 right)
    (move-dir pos-1-2 pos-2-2 right)
	(move-dir pos-1-2 pos-1-3 down)
	(move-dir pos-1-2 pos-1-1 up)
	(move-dir pos-1-3 pos-1-2 up)
	(move-dir pos-1-3 pos-2-3 right)
	(move-dir pos-1-3 pos-1-4 down)
	(move-dir pos-1-4 pos-1-3 up)
	(move-dir pos-1-4 pos-2-4 right)
	(move-dir pos-2-1 pos-1-1 left)
	(move-dir pos-2-1 pos-3-1 right)
	(move-dir pos-2-1 pos-2-2 down)
	(move-dir pos-2-2 pos-3-2 right)
	(move-dir pos-2-2 pos-2-1 up)
	(move-dir pos-2-3 pos-2-2 up)
	(move-dir pos-2-3 pos-3-3 right)
	(move-dir pos-2-3 pos-2-4 down)
	(move-dir pos-2-3 pos-1-3 left)
	(move-dir pos-2-2 pos-1-2 left)	
	(move-dir pos-2-2 pos-2-3 down)
	(move-dir pos-2-4 pos-1-4 left)
	(move-dir pos-2-4 pos-3-4 right)
	(move-dir pos-2-4 pos-2-3 up)
	
	(move-dir pos-3-1 pos-2-1 left)
	(move-dir pos-3-1 pos-4-1 right)
	(move-dir pos-3-1 pos-3-2 down)
	(move-dir pos-3-2 pos-2-2 left)
	(move-dir pos-3-2 pos-3-3 down)
	(move-dir pos-3-2 pos-4-2 right)
	(move-dir pos-3-2 pos-3-1 up)
	
	(move-dir pos-3-3 pos-2-3 left)
	(move-dir pos-3-3 pos-3-2 up)
	(move-dir pos-3-3 pos-3-4 down)
	(move-dir pos-3-3 pos-4-3 right)
	(move-dir pos-3-4 pos-2-4 left)
	(move-dir pos-3-4 pos-3-3 up)
	(move-dir pos-3-4 pos-4-4 right)
	
	(move-dir pos-4-1 pos-3-1 left)
	(move-dir pos-4-1 pos-4-2 down)
	(move-dir pos-4-2 pos-3-2 left)
	(move-dir pos-4-2 pos-4-3 down)
	(move-dir pos-4-2 pos-4-1 up)
	(move-dir pos-4-3 pos-3-3 left)
	(move-dir pos-4-3 pos-4-2 up)
	(move-dir pos-4-3 pos-4-4 down)
	(move-dir pos-4-4 pos-3-4 left)
	(move-dir pos-4-4 pos-4-3 up)




))
        