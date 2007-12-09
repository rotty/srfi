#! /usr/bin/env scheme-script
(import 
  (ikarus) 
  (srfi registry)
  (srfi eager-comprehensions)
  (match))

(define (problem msg . args)
  (apply error 'make-alias-libraries msg args))


(for-each ; output to file <alias>.ss:
 (match-lambda
   [((primary-name . primary-filename) output-aliases ...)
    (let* ([get-exports (lambda (lib-form) (cdr (caddr lib-form)))]
           [exports (get-exports (with-input-from-file primary-filename read))])
      (for-each (lambda (oa)
                  (with-output-to-file (string-append (symbol->string oa) ".ss")
                    (lambda ()
                      (printf ";;; Automatically generated by ~a\n" (car (command-line)))
                      (pretty-print 
                       `(library (srfi ,oa)
                          (export ,@exports)
                          (import (srfi ,primary-name)))))
                    'replace))
                output-aliases))])
 ; construct: 
 ;   ([(primary-name . primary-filename) output-alias ...] ...)
 (match aliases
   ; aliases is structured: 
   ;   ([primary [library-aliases ...] [feature-aliases ...]] ...)
   [([('srfi primary-name) [('srfi output-alias) ...] [feature-aliases ...]] ...)
    (list-ec (:parallel (:list pn primary-name) (:list oal output-alias))
             (cons (cons pn (string-append (symbol->string pn) ".ss")) oal))]
   [else (problem "can't understand registry's `aliases'" aliases)]))