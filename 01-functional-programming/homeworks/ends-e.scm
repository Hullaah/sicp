#lang simply-scheme

(define (word-ends-e wd)
  (cond ((empty? wd) #f)
        ((and (empty? (bf wd)) (equal? (first wd) 'e)) #t)
        (else (word-ends-e (bf wd)))))

(define (ends-e sent)
  (cond ((empty? sent) (sentence))
        ((word-ends-e (first sent)) (sentence (first sent) (ends-e (bf sent))))
        (else (ends-e (bf sent)))))
