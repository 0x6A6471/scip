#lang racket

(define (sum-of-squares x y z)
  (define (square n)
    (* n n))

  (cond
    [(and (<= x y) (<= x z)) (+ (square y) (square z))]
    [(and (<= y x) (<= y z)) (+ (square x) (square z))]
    (else (+ (square x) (square y)))))

(sum-of-squares 1 2 3)
(sum-of-squares 2 1 3)
(sum-of-squares 3 2 1)
