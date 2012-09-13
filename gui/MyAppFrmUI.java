package gui;
import javax.swing.*;

public class MyAppFrmUI extends JFrame{
    // Variables declaration - do not modify//GEN-BEGIN:variables
    protected javax.swing.JLabel jLabel1;
    protected javax.swing.JMenu jMenu2;
    protected javax.swing.JMenuBar jMenuBar1;
    protected javax.swing.JMenu mnArchivo;
    protected javax.swing.JMenuItem mntmSalir;
    // End of variables declaration//GEN-END:variables
    public MyAppFrmUI(){
        initComponents();
    }
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        mnArchivo = new javax.swing.JMenu();
        mntmSalir = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("MyAppFrmUI");
        setMinimumSize(new java.awt.Dimension(640, 480));

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Etiqueta1:");
        jLabel1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        getContentPane().add(jLabel1, java.awt.BorderLayout.CENTER);

        mnArchivo.setText("Archivo");

        mntmSalir.setText("Salir");
        mntmSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                onMenuSalir(evt);
            }
        });
        mnArchivo.add(mntmSalir);

        jMenuBar1.add(mnArchivo);

        jMenu2.setText("Edit");
        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);
    }// </editor-fold>//GEN-END:initComponents

    protected void onMenuSalir(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_onMenuSalir
        // TODO add your handling code here:
        System.out.println("onMenuSalir desde Java");
    }//GEN-LAST:event_onMenuSalir
}
