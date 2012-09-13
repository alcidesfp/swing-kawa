;; -*- coding:utf-8; mode:Scheme -*-

(define-alias JFrame javax.swing.JFrame)
(define-alias JLabel javax.swing.JLabel)
(define-alias JButton javax.swing.JButton)

;; event handler
(define (on-click-btn (label ::JLabel))
  (label:setText "¡Hizo click!"))

;; crea controles
(let* ((frame1 (JFrame title: "Hola Swing desde Kawa"
                       defaultCloseOperation: JFrame:EXIT_ON_CLOSE))

       (label1 (JLabel text: "Esta es una aplicación Swing en Kawa"))

       (button1 (JButton text: "Haz click" 
                         action-listener: (lambda (event)
                                            (on-click-btn label1) )) ))
  ;; inicializa UI
  (frame1:add label1 java.awt.BorderLayout:CENTER)
  (frame1:add button1 java.awt.BorderLayout:SOUTH)
  (frame1:pack)
  (frame1:setVisible #t) )
