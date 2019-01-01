package Swingtest;

import java.awt.FlowLayout;
import java.awt.event.*;
import javax.swing.*;
import java.awt.*;

public class Example15 extends JFrame{
   public static void main(String[] args){
        JButton btn1 = new JButton("modal dialog");
        JButton btn2 = new JButton("false modal dialog");
        JFrame f = new JFrame("DialogDemo");
        f.setSize(300,200);
        f.setLocation(300,200);
        f.setLayout(new FlowLayout());
        f.add(btn1);
        f.add(btn2);
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        f.setVisible(true);
        final JLabel label = new JLabel();
        final JDialog dialog = new JDialog(f,"Dialog");
        dialog.setSize(220,150);
        dialog.setLocation(350,250);
        dialog.setLayout(new FlowLayout());
        final JButton btn3 = new JButton("Yes");
        dialog.add(btn3);
        btn1.addActionListener(new ActionListener(){
           public void actionPerformed(ActionEvent e){
               dialog.setModal(true);
               if(dialog.getComponents().length == 1){
                   dialog.add(label);
               }

               label.setText("modal dialog, click Yes to close");
               dialog.setVisible(true);
           }
        });

        btn2.addActionListener(new ActionListener(){
           public void actionPerformed(ActionEvent e){
               dialog.setModal(false);
               if(dialog.getComponents().length == 1){
                   dialog.add(label);
               }
               label.setText("false modal,click Yes to close");
               dialog.setVisible(true);
           }
        });

        btn3.addActionListener(new ActionListener() {
           public void actionPerformed(ActionEvent e){
                dialog.dispose();
           }
        });
   }
}
