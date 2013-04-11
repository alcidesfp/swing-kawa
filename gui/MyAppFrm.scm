;; -*- coding: utf-8; mode: Scheme -*-
(define-alias MyAppFrmUI gui.MyAppFrmUI)
(define-alias ActionEvent java.awt.event.ActionEvent)
(define-alias showMsgDlg javax.swing.JOptionPane:showMessageDialog)

(define-simple-class MyAppFrm (MyAppFrmUI)
  ;; methods
  ((onMenuSalir evt ::ActionEvent)
   (showMsgDlg (this) "Salir desde Kawa")))
