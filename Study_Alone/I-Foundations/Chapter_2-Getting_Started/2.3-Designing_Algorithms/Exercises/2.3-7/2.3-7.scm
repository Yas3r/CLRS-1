;; CLRS Exercise 2.3-7 implementation
;; by Lawrence X. Amlord
;; May 1st, 2014
;; GNU GPLv3

;; Sorting Procedures

(define (quicksort items)
  (let ((p (pivot items)))
    (if (equal? p 'done)
	items
	(let ((parts (partition p items '() '())))
	  (append (quicksort (car parts))
		  (quicksort (cadr parts)))))))

(define (pivot items)
  (cond ((null? items) 'done)
	((null? (cdr items)) 'done)
	((<= (car items) (cadr items))
	 (pivot (cdr items)))
	(else (car items))))

(define (partition p items p1 p2)
  (if (null? items)
      (list p1 p2)
      (if (< (car items) p)
	  (partition p
		     (cdr items)
		     (cons (car items) p1)
		     p2)
	  (partition p
		     (cdr items)
		     p1
		     (cons (car items) p2)))))

;; Core Modules

(define (sum-pair? x s)
  (if (null? s)
      false
      (let ((new-s (quicksort s))
	    (s-prime (map (lambda (y) (- x y))
			   s)))
	(let ((new-s-prime (quicksort s-prime)))
	  (consecutive-equal?
	   (merge (remove-duplicate new-s)
		  (remove-duplicate new-s-prime)))))))

(define (remove item seq)
  (filter (lambda (x) (not (= x item)))
	  seq))

(define (remove-duplicate seq)
  (if (null? seq)
      '()
      (cons (car seq)
	    (remove (car seq)
		    (remove-duplicate (cdr seq))))))

(define (merge seq1 seq2)
  (cond ((null? seq1) seq2)
	((null? seq2) seq1)
	(else
	 (let ((seq1-first (car seq1))
	       (seq1-rest (cdr seq1))
	       (seq2-first (car seq2))
	       (seq2-rest (cdr seq2)))
	   (cond ((< seq1-first seq2-first)
		  (cons seq1-first
			(merge seq1-rest seq2)))
		 ((> seq1-first seq2-first)
		  (cons seq2-first
			(merge seq1 seq2-rest)))
		 (else
		  (cons seq1-first
			(cons seq2-first ;; Quiz: What if seq2-first be discarded? ;)
			      (merge seq1-rest seq2-rest)))))))))

(define (consecutive-equal? seq)
  (cond ((null? seq) false)
	((null? (cdr seq)) false)
	((equal? (car seq) (cadr seq))
	 true)
	(else
	 (consecutive-equal? (cdr seq)))))



;; Test

(sum-pair? 100 '())
;Value: #f

(sum-pair? 10 '(1 2 3 4 5 6))
;Value: #f

(sum-pair? 34 '(1 1 2 3 5 8 13 21))
;Value: #t
