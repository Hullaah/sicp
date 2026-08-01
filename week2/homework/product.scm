#lang simply-scheme

(define (product fn start next stop)
  (if (> start stop) 1
      (* (fn start) (product fn (next start) next stop))))

(define (factorial num)
  (define (inc x) (+ x 1))
  (define (identity x) x)
  (product identity 1 inc num))

(define (pi-product a b)
  (define (inc x) (+ x 1))
  (define (pi-term x)
    (define parity (remainder x 2))
    (define numerator (+ x (if (= 1 parity) 0 1) 1.0))
    (define denominator (+ (if (= 1 parity) x (- x 1)) 2.0))
    (/ numerator denominator))
  (product pi-term a inc b))

(* 4 (pi-product 1 1))
(* 4 (pi-product 1 10))
(* 4 (pi-product 1 100))
(* 4 (pi-product 1 1000))
(* 4 (pi-product 1 10000))
(* 4 (pi-product 1 100000))
(* 4 (pi-product 1 1000000))
