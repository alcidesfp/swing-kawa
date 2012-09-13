;; -*- coding:utf-8; mode:Scheme -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-simple-class Persona ()
  ;; members
  (nombre init: "" ) 
  (ann-nac init: 0 )

  ;; methods
  ((*init*) #!void) ;; default constructor
  ((*init* nombre: ann-nac:) ;; constructor parametrizado
   (set! nombre nombre:)
   (set! ann-nac ann-nac:))
  ;;
  ((edad)(- 2012 ann-nac))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(test-begin "persona-test")

(define persona1 (Persona))

(test-eqv 0 persona1:ann-nac)
(test-eqv "" persona1:nombre)

(set! persona1:nombre "Alcides")
(set! persona1:ann-nac 1974)

(test-eqv 38 (persona1:edad))
(test-end)
;;
(newline)

(format #t "nombre: ~a~%" persona1:nombre)
(format #t "ann-nac: ~a~%" persona1:ann-nac)
(format #t "edad: ~a~%" (persona1:edad))
(newline)
;;
(define persona2 (Persona ann-nac: 1984 nombre: "Persona2"))
(format #t "nombre: ~a~%" persona2:nombre)
(format #t "ann-nac: ~a~%" persona2:ann-nac)
(format #t "edad: ~a~%" (persona2:edad))
