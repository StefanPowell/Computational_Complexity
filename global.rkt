#lang racket
(require rackunit)
(provide (all-defined-out))

(define (final-element x)
	(cond
		[(equal? (length x) 1) (car x)]
		[else (final-element (rest x))]
))