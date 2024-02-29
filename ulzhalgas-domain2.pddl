(define (domain ulzhal)
  (:requirements :typing )
  (:types thing - thing
   location - location
   direction - direction)
  (:predicates (move-dir ?v0 - location ?v1 - location ?v2 - direction)
	(is-nongoal ?v0 - location)
	(clear ?v0 - location)
	(is-block ?v0 - thing)
	(at ?v0 - thing ?v1 - location)
	(is-agent ?v0 - thing)
	(at-goal ?v0 - thing)
	(move ?v0 - direction)
	(is-goal ?v0 - location)
  )

  ; (:actions move)

  

	(:action move
		:parameters (?p - thing ?from - location ?to - location ?dir - direction)
		:precondition (and (move ?dir)
			(is-agent ?p)
			(at ?p ?from)
			(clear ?to)
			(move-dir ?from ?to ?dir))
		:effect (and
			(not (at ?p ?from))
			(not (clear ?to))
			(at ?p ?to)
			(clear ?from))
	)
	

	(:action push-to-goal
		:parameters (?p - thing ?s - thing ?ppos - location ?from - location ?to - location ?dir - direction)
		:precondition (and (move ?dir)
			(is-agent ?p)
			(is-block ?s)
			(at ?p ?ppos)
			(at ?s ?from)
			(clear ?to)
			(move-dir ?ppos ?from ?dir)
			(move-dir ?from ?to ?dir)
			(is-goal ?to))
		:effect (and
			(not (at ?p ?ppos))
			(not (at ?s ?from))
			(not (clear ?to))
			(at ?p ?from)
			(at ?s ?to)
			(clear ?ppos)
			(at-goal ?s))
	)
	

	(:action push-to-nongoal
		:parameters (?p - thing ?s - thing ?ppos - location ?from - location ?to - location ?dir - direction)
		:precondition (and (move ?dir)
			(is-agent ?p)
			(is-block ?s)
			(at ?p ?ppos)
			(at ?s ?from)
			(clear ?to)
			(move-dir ?ppos ?from ?dir)
			(move-dir ?from ?to ?dir)
			(is-nongoal ?to))
		:effect (and
			(not (at ?p ?ppos))
			(not (at ?s ?from))
			(not (clear ?to))
			(at ?p ?from)
			(at ?s ?to)
			(clear ?ppos)
			(not (at-goal ?s)))
	)

)
