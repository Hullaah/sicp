#lang simply-scheme

(define (ordered? numbers)
  (if (or (empty? numbers) (empty? (bf numbers))) #t
      (and (<= (first numbers) (first (bf numbers)))
           (ordered? (bf numbers)))))
