#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (square-of-two-max x y z) (
    cond 
      ((and (<= x y) (<= x z)) (sum-of-squares y z))

      ((and (<= y x) (<= y z)) (sum-of-squares x z))
      (else (sum-of-squares x y))
))  

(check-equal? (square-of-two-max 1 2 3) 13)
(check-equal? (square-of-two-max 2 1 5) 29)
(check-equal? (square-of-two-max 0 0 6) 36)