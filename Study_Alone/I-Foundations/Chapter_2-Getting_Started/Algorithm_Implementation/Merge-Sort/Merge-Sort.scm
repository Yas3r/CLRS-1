;; MERGE-SORT implemented in Scheme
;; by Lawrence X. Amlord
;; Apr 5th, 2014
;; License: GPL v3

(define (merge-sort seq)
  (cond ((null? seq) '())
	((null? (cdr seq)) seq)
	(else
	 (merge (merge-sort (left-half seq))
		(merge-sort (right-half seq))))))
;Value: merge-sort

(define (merge L1 L2)
  (cond ((null? L1) L2)
	((null? L2) L1)
	(else
	 (let ((L1-first (car L1))
	       (L1-rest (cdr L1))
	       (L2-first (car L2))
	       (L2-rest (cdr L2)))
	   (if (<= L1-first L2-first)
	       (cons L1-first
		     (merge L1-rest L2))
	       (cons L2-first
		     (merge L1 L2-rest)))))))
;Value: merge

(define (left-half seq)
  (define (front-part items amount)
    (if (= amount 0)
	'()
	(cons (car items)
	      (front-part (cdr items) (- amount 1)))))
  (cond ((null? seq) '())
	((null? (cdr seq)) (list (car seq)))
	(else
	 (let ((half-amount (ceiling (/ (length seq) 2))))
	   (front-part seq half-amount)))))
;Value: left-half

(left-half '(1 2))
;Value 28: (1)

(left-half '(1 2 3))
;Value 29: (1 2)

(define (right-half seq)
  (define (back-part items amount)
    (if (= amount (length items))
	items
	(back-part (cdr items) amount)))
  (cond ((null? seq) '())
	((null? (cdr seq)) '())
	(else
	 (let ((half-amount (floor (/ (length seq) 2))))
	   (back-part seq half-amount)))))
;Value: right-half

(right-half '(1 2 3))
;Value 30: (3)

(right-half '(1 2 3 4))
;Value 31: (3 4)


(merge-sort '(2 4 5 7 1 2 3 6))
;Value 32: (1 2 2 3 4 5 6 7)



;; the original implementation of
;; LEFT-HALF and RIGHT-HALF

(define (left-half seq)
  (define (front-part seq amount subseq upper-bound)
    (if (> amount upper-bound)
	subseq
	(front-part seq
		    (+ amount 1)
		    (append subseq (list (list-ref seq amount)))
		    upper-bound)))
  (cond ((null? seq) '())
	((null? (cdr seq)) (list (car seq)))
	(else
	 (let* ((seq-len (length seq))
		(valve (- (/ seq-len 2) 1)))
	   (front-part seq 0 '() valve)))))
;Value: left-half

(define (right-half seq)
  (define (back-part seq amount subseq lower-bound)
    (if (< amount lower-bound)
	subseq
	(back-part seq
		   (- amount 1)
		   (cdr subseq)
		   lower-bound)))
  (cond ((null? seq) '())
	((null? (cdr seq)) '())
	(else
	 (let* ((seq-len (length seq))
		(valve (+ (/ seq-len 2) 1)))
	   (back-part seq seq-len seq valve)))))
;Value: right-half

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))
;Value: list-ref

(define (append L1 L2)
  (if (null? L1)
      L2
      (cons (car L1)
	    (append (cdr L1) L2))))
;Value: append

(left-half '(1 2 3 4 5 6))
;Value 17: (1 2 3)

(left-half '(1 2 3 4 5 6 7))
;Value 15: (1 2 3)

(right-half '(1 2 3 4 5 6))
;Value 20: (4 5 6)
