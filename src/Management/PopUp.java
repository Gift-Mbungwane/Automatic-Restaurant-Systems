/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Management;

import java.util.List;
import javax.swing.*;

/**
 *
 * @author anicia
 */
public class PopUp extends JFrame  {

    /**
     * Creates new form PopUp
     */
    public PopUp(String popupText){
        this.popupText=popupText;
        initComponents();
        (new aTask()).execute();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new JPanel();
        jSeparator1 = new JSeparator();
        jLabel1 = new JLabel();
        jLabel2 = new JLabel();
        jLabel3 = new JLabel();
        jLabel4 = new JLabel();

        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(51, 51, 51));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setForeground(new java.awt.Color(255, 255, 255));

        jLabel1.setText(popupText);
        jLabel1.setForeground(new java.awt.Color(0, 0, 0));
        jLabel1.setHorizontalAlignment(SwingConstants.CENTER);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 10)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(153, 153, 153));
        jLabel2.setHorizontalAlignment(SwingConstants.RIGHT);
        jLabel2.setText("Popup window disappears in");

        jLabel3.setForeground(new java.awt.Color(153, 153, 153));
        jLabel3.setHorizontalAlignment(SwingConstants.CENTER);
        jLabel3.setText("5");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 10)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(153, 153, 153));
        jLabel4.setHorizontalAlignment(SwingConstants.LEFT);
        jLabel4.setText("seconds");

        GroupLayout jPanel1Layout = new GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(84, 84, 84)
                        .addComponent(jLabel2, GroupLayout.PREFERRED_SIZE, 158, GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel3, GroupLayout.PREFERRED_SIZE, 20, GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel4, GroupLayout.PREFERRED_SIZE, 67, GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(28, 28, 28)
                        .addGroup(jPanel1Layout.createParallelGroup(GroupLayout.Alignment.LEADING, false)
                            .addComponent(jSeparator1, GroupLayout.DEFAULT_SIZE, 375, Short.MAX_VALUE)
                            .addComponent(jLabel1, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap(29, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addGroup(GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addComponent(jLabel1, GroupLayout.PREFERRED_SIZE, 38, GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, GroupLayout.PREFERRED_SIZE, 10, GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4))
                .addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        GroupLayout layout = new GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, GroupLayout.Alignment.TRAILING, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(PopUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PopUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PopUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PopUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {

                PopUp dialog = new PopUp(popupText);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e)
                    {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    private void quit() {
        this.dispose();
    }

    private class aTask extends SwingWorker<Boolean, String> {
        @Override
        protected Boolean doInBackground() throws Exception {
            for (int i = 5; i > 0; i--) {
                publish("" + i);
                Thread.sleep(1000);
            }
            return true;
        }

        @Override
        protected void done() {
            quit();
        }

        @Override
        protected void process(List<String> txt) {
            jLabel3.setText(txt.get(txt.size() - 1));
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private JLabel jLabel1;
    private JLabel jLabel2;
    private JLabel jLabel3;
    private JLabel jLabel4;
    private JPanel jPanel1;
    private JSeparator jSeparator1;
    // End of variables declaration//GEN-END:variables
    static private String popupText;

}


