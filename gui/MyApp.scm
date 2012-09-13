;; -*- coding: utf-8; mode: Scheme -*-
(define-alias MyAppFrmUI gui.MyAppFrmUI)
(define-simple-class MyApp (java.lang.Runnable)
  ;; members
  (main-wnd ::MyAppFrmUI init: (MyAppFrmUI))
  ;; methods
  ((run)  ;Implementa interfaz Runnable
   (main-wnd:setVisible #t)))
