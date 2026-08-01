#lang simply-scheme

(define (switch sent)
  (define (switch-helper sent)
    (cond
      ((empty? sent) (sentence))
      ((or (equal? (first sent) 'me) (equal? (first sent) 'I))
       (sentence 'you (switch (bf sent))))
      ((equal? (first sent) 'you)
       (sentence 'me (switch (bf sent))))
      (else (sentence (first sent) (switch-helper (bf sent))))))
  (if (equal? (first sent) 'You)
      (sentence 'I (switch-helper (bf sent)))
      (switch-helper sent)))
