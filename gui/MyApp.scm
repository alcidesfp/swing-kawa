;; -*- coding: utf-8; mode: Scheme -*-
(require "MyAppFrm.scm")

(define-simple-class MyApp (java.lang.Runnable)
  ;; members
  (main-wnd ::MyAppFrm init: (MyAppFrm))
  ;; methods
  ((run)  ;Implementa interfaz Runnable
   (main-wnd:setVisible #t)))
