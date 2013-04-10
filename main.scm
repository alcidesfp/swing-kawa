;; -*- coding: utf-8; mode: Scheme -*-
(define-alias EventQueue java.awt.EventQueue)
(define-alias MyApp gui.MyApp)

(EventQueue:invokeLater (MyApp))
