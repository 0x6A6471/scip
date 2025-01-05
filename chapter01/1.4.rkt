#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; if b > 0 then add
; which gets compiled to (+ 2 2)
(a-plus-abs-b 2 2)

; if b <= 0 then subract
; which gets compiled to (- 2 0)
(a-plus-abs-b 2 0)
