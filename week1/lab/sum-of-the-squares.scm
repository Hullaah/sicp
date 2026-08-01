#lang simply-scheme

(define (sum-of-the-squares a b)
  (+ (square a) (square b)))

(define (square a) (* a a))

(define (sum-squares-largest a b c)
  (cond ((or (and (>= a b) (>= b c))
             (and (>= b a) (>= a c)))
         (sum-of-the-squares a b))
        ((or (and (>= a c) (>= c b))
             (and (>= c a) (>= a b)))
         (sum-of-the-squares a c))
        (else (sum-of-the-squares b c))))
