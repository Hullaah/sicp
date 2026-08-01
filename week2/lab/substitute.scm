#lang simply-scheme

(define (substitute sent oldwd newwd)
  (cond ((empty? sent) (se))
        ((equal? (first sent) oldwd) (se newwd (substitute (bf sent) oldwd newwd)))
        (else (se (first sent) (substitute (bf sent) oldwd newwd)))))
