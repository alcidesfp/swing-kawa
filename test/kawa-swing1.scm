;; -*- coding:utf-8; mode:Scheme -*-
(display "Hola a todos\n")
;;========================================================================
(define-alias JFrame javax.swing.JFrame)
(define-alias EventQueue java.awt.EventQueue)
(define-alias Runnable java.lang.Runnable)

(define-simple-class MyApp (Runnable)
  ;;members
  (main-wnd ::JFrame)
  ;;methods
  ((*init*) ;constructor
   (set! main-wnd (JFrame "Ventana de prueba"))
   (main-wnd:setDefaultCloseOperation JFrame:EXIT_ON_CLOSE))

  ((run) ;interfaz Runnable
   (main-wnd:pack)
   (main-wnd:setVisible #t))

  ((main args ::String[]) ::void allocation:'static
   (let ((app1 (MyApp)))
     (EventQueue:invokeLater app1) )))

(require MyApp)
