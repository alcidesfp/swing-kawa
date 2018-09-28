;; -*- coding:utf-8; mode:Scheme -*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Objetivo:
;; Emular el siguiente ejemplo en Clojure:
;;
;; (ns demo1 (:import (javax.swing JFrame JLabel)))
;; (doto (JFrame. "Hello")
;;   (.add (JLabel. "Hello, World!"))
;;   (.pack)
;;   (.setDefaultCloseOperation JFrame/EXIT_ON_CLOSE)
;;   (.setVisible true))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(import (class javax.swing JFrame JLabel))

(let ((f (JFrame "Título de la Ventana" defaultCloseOperation: JFrame:EXIT_ON_CLOSE)))
  (f:add (JLabel "¡Hola a todos!"))
  (f:pack)
  (f:setVisible #t))
