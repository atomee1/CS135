#lang eopl

;;-------------------------------------------------------------------------------
;; Name: William Ee
;; Pledge: I pledge my honor that I have abided by the Stevens Honor System.
;;-------------------------------------------------------------------------------

;; In this lab, you'll implement some basic logic operators using
;;   Scheme's built-in "and", "or", and "not" functions.
;; Keep in mind that you can also define functions in terms of
;;   other functions you've already implemented in this file!
;;
;; Remember that Scheme uses prefix notation,
;;   so "p and q" is written "(and p q)".
;;
;; True and false are written in Scheme as "#t" and "#f".


;; Implement the function (iff p q) to return "p if and only if q":
;; Type signature: (iff boolean boolean) -> boolean
(define (iff p q)
  (if (eqv? p q)
       #t
       #f)
 )

;; Implement (only-if p q) to return "p only if q" 
;; Type signature: (only-if boolean boolean) -> boolean
(define (only-if p q)
  (if (and (eqv? p #t) (eqv? q #f))
      #f
      #t)
 )

;; Implement (unless p q) to return "p unless q"
;; Type signature: (unless boolean boolean) -> boolean
(define (unless p q)
   (if (and (eqv? p #f) (eqv? q #f))
       #f
       #t)
 )

;; Implement (xor p q) also known as "exclusive or".
;; xor should return #t exactly when one of the operands is true. In all other
;; cases it should return #f
;; Type signature: (xor boolean boolean) -> boolean
(define (xor p q)
  (if (or (and (eqv? p #t) (eqv? q #f)) (and (eqv? p #f) (eqv? q #t)))
        #t
        #f)
)

;; Implement (3xor p q r) or 'three way xor". 3xor should return
;; #t when exactly one of the Boolean variables p, q, r is true. In all
;; other cases 3xor should return #f.
;; Type signature: (3xor boolean boolean boolean) -> boolean
(define (3xor p q r)
  (cond ((and ((eqv? p #t) (eqv? q #f) (eqv? r #f)
                           #t)))
        ((and ((eqv? p #f) (eqv? q #t) (eqv? r #f)
                           #t)))
        ((and ((eqv? p #f) (eqv? q #f) (eqv? r #t)
                           #t)))
        (else #f)
   )
 )

;; Implement (3nor p q r), a "three way nor", that is, a function which returns
;; #t exactly when all three operands are false.
;; Type signature: (3nor boolean boolean boolean) -> boolean
(define (3nor p q r)
  (if (and ((eqv? p #f) (eqv? q #f) (eqv? r #f)))
      #t
      #f)
 )

;; Created January 2018 by Samuel Kraus and Edward Minnix
;; Updated January 2020 by Jared Pincus
;; Updated January 2022 by Jacek Ossowski