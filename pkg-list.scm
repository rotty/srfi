;; Copyright 2010 Andreas Rottmann.  The MIT-style license is in the file named
;; LICENSE from the original collection this file is distributed with.

(package (srfi (0))
  (synopsis "portable SRFI collection")
  (provides
   srfi-0
   srfi-1
   srfi-2
   srfi-6
   srfi-8
   srfi-9
   srfi-11
   srfi-13
   srfi-14
   srfi-16
   srfi-19
   srfi-23
   srfi-25
   srfi-26
   srfi-27
   srfi-31
   srfi-37
   srfi-38
   srfi-39
   srfi-41
   srfi-42
   srfi-43
   srfi-45
   srfi-48
   srfi-61
   srfi-64
   srfi-67
   srfi-69
   srfi-78
   srfi-98)
  (description
   "This is a portable collection of libraries implementing various SRFIs:"
   " - SRFI 0: Feature-based conditional expansion construct"
   " - SRFI 1: List Library"
   " - SRFI 2: AND-LET*: an AND with local bindings, a guarded LET* special form"
   " - SRFI 6: Basic String Ports"
   " - SRFI 8: receive: Binding to multiple values"
   " - SRFI 9: Defining Record Types"
   " - SRFI 11: Syntax for receiving multiple values"
   " - SRFI 13: String Library"
   " - SRFI 14: Character-Set Library"
   " - SRFI 16: Syntax for procedures of variable arity"
   " - SRFI 19: Time Data Types and Procedures"
   " - SRFI 23: Error reporting mechanism"
   " - SRFI 25: Multi-dimensional Array Primitives"
   " - SRFI 26: Notation for Specializing Parameters without Currying"
   " - SRFI 27: Sources of Random Bits"
   " - SRFI 31: A special form for recursive evaluation"
   " - SRFI 37: args-fold: a program argument processor"
   " - SRFI 38: External Representation for Data With Shared Structure"
   " - SRFI 39: Parameter objects"
   " - SRFI 41: Streams"
   " - SRFI 42: Eager Comprehensions"
   " - SRFI 43: Vector Library"
   " - SRFI 45: Primitives for expressing iterative lazy algorithms"
   " - SRFI 48: Intermediate Format Strings"
   " - SRFI 61: A more general cond clause"
   " - SRFI 64: A Scheme API for test suites"
   " - SRFI 67: Compare Procedures"
   " - SRFI 69: Basic hash tables"
   " - SRFI 78: Lightweight testing"
   " - SRFI 98: An interface to access environment variables")
  (homepage "https://code.launchpad.net/~scheme-libraries-team/scheme-libraries/srfi")
  (libraries ((: "%3a" (* any)) -> "srfi")
             ("private" -> ("srfi" "private"))))

;; Local Variables:
;; scheme-indent-styles: ((package 1))
;; End:
