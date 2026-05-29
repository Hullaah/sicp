#lang simply-scheme

(define (dupls-removed s)
  (define (dupls-removed-helper s seen-words)
    (if (empty? s)
        (sentence)
        (if (member? (last s) seen-words)
            (dupls-removed-helper (bl s) seen-words)
            (sentence (dupls-removed-helper
                       (bl s)
                       (sentence seen-words (last s)))
                      (last s)))))
  (dupls-removed-helper s (sentence)))
