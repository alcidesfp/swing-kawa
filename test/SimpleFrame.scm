;; -*- coding:utf-8; mode:Scheme -*-

"Demuestra el uso de clases Java Swing en Scheme Kawa"

(define-alias JLabel javax.swing.JLabel)
(define-alias JButton javax.swing.JButton)

;;========================================================================
(define-simple-class SimpleFrame (javax.swing.JFrame)
  ;; members
  (label ::JLabel allocation: 'instance  access: 'private
         init: (JLabel "Aplicación Swing en Kawa"))
  (button allocation: 'instance  access: 'private
          init: (JButton "Haz click"
                         action-listener: (lambda (event)(on-click-btn))))
  ;; methods
  ;;----------------------------------------------------------------------
  ((*init*) ;; constructor
   (invoke-special javax.swing.JFrame (this)
                   '*init* "Hola Swing desde Kawa")
   (format #t "Inicializando ...~%")
   ;; inicializa UI
   (add label java.awt.BorderLayout:CENTER)
   (add button java.awt.BorderLayout:SOUTH)
   (setDefaultCloseOperation javax.swing.JFrame:EXIT_ON_CLOSE)
   (pack))
  ;;----------------------------------------------------------------------
  ((on-click-btn) allocation: 'instance  access: 'protected ;; event handler
   (label:setText "¡Hizo click!"))
  ;;----------------------------------------------------------------------
  ;; public static void main(String[] args)
  ((main args ::String[]) ::void allocation: 'static access: 'public
   (let ((frame (SimpleFrame)))
     (frame:setVisible #t) )) )
;;========================================================================
