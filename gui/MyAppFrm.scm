;; -*- coding: utf-8; mode: Scheme -*-
(define-alias showMsgDlg javax.swing.JOptionPane:showMessageDialog)

(define-simple-class MyAppFrm (gui.MyAppFrmUI)
  ;; methods
  ((onMenuSalir evt :: java.awt.event.ActionEvent)
   (showMsgDlg (this) "Salir desde Kawa")))
