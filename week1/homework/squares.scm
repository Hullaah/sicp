#lang simply-scheme

(define (squares numbers)
  (define (square x) (* x x))
  (if (empty? numbers) (sentence)
      (sentence (square (first numbers)) (squares (bf numbers)))))      
