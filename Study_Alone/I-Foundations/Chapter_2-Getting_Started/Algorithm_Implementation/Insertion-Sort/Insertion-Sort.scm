;; INSERTION-SORT implemented in Scheme
;; by Lawrence X. Amlord
;; Apr 4th, 2014
;; License: GPL v3

(define (insertion-sort sequence)
  (define (iter sorted-items unsorted-items)
    (if (null? unsorted-items)
	sorted-items
	(iter (insert (car unsorted-items) sorted-items)
	      (cdr unsorted-items))))
  (define (insert item seq)
    (if (null? seq)
	(list item)
	(let ((first (car seq))
	      (rest (cdr seq)))
	  (if (< item first)
	      (cons item seq)
	      (cons first (insert item rest))))))
  (if (null? sequence)
      '()
      (iter (list (car sequence)) (cdr sequence))))
;Value: insertion-sort

(insertion-sort '(5 2 4 6 1 3))
;Value 15: (1 2 3 4 5 6)

(insertion-sort '(3 1 4 1 5 9 2 6 5 7))
;Value 16: (1 1 2 3 4 5 5 6 7 9)
