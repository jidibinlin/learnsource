package GUI;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class GUI {
    JPanel control = new JPanel();
    JButton[] tab = new JButton[5];
    JFrame mainframe = new JFrame("mainframe");
    JPanel[] pan = new JPanel[5];

    public void mainInterface() {
        mainframe.setSize(1300, 1000);
        mainframe.setLocation(300, 100);
        mainframe.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        Color[] bgColor = new Color[5];
        bgColor[0]=new Color(147,224,255);
        bgColor[1]=new Color(151,151,151);
        bgColor[2]=new Color(91,74,66);
        bgColor[3]=new Color(179,197,135);
        bgColor[4]=new Color(220,87,18);
        for (int i = 0; i < 5; i++) {
            pan[i] = new JPanel();
            pan[i].setBackground(bgColor[i]);
        }
        for (int i = 0; i < 5; i++) {
            tab[i] = new JButton();
        }


        mainframe.add(control, BorderLayout.NORTH);
        Layout.mainInterfaceLayout(mainframe, pan);
        mainframe.setVisible(true);
        control.setVisible(true);
        tabAdd();
        CloseWindowSpecial ls = new CloseWindowSpecial();
        mainframe.addWindowListener(ls);
    }

    public void tabAdd() {
        GridLayout layout = new GridLayout(1, 5);
        control.setLayout(layout);
        tab[0].setText("商户信息管理");
        tab[1].setText("库存管理");
        tab[2].setText("商品管理");
        tab[3].setText("财务管理");
        tab[4].setText("员工管理");
        Font f = new Font("Fonts/Go Mono for Powerline.ttf", Font.BOLD, 20);
        for (int i = 0; i < 5; i++) {
            control.add(tab[i]);
            tab[i].setVisible(true);
            tab[i].setFont(f);
        }
    }
}

class CloseWindowSpecial extends WindowAdapter {
    public void windowClosing(WindowEvent e) {
        JFrame fratran = (JFrame) e.getComponent();
        NoticeCloseSureDialog.CloseSure(fratran);
    }
}

class MouseListen extends MouseAdapter {
    public void mousePressed(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON1 && e.getClickCount() == 1) {
            System.out.println("left button pressed once");
        }

        if (e.getButton() == MouseEvent.BUTTON1 && e.getClickCount() == 2) {

            System.out.println("left button pressed twice");
        }


        if (e.getButton() == MouseEvent.BUTTON2) {
            System.out.printf("right button pressed");
        }
    }
}

class NoticeCloseSureDialog {
    static void CloseSure(JFrame fratran) {
        JDialog closeSureDia = new JDialog(fratran, true);
        closeSureDia.setTitle("warning");
        closeSureDia.setLocationRelativeTo(fratran);
        closeSureDia.setSize(300, 200);
        JButton Exit = new JButton("Exit");
        JButton back = new JButton("back");
        JLabel message = new JLabel();
        message.setText("you really want to exit?");
        Layout.NoticeLayout(closeSureDia, Exit, back, message);
        Exit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                closeSureDia.dispose();
                fratran.dispose();
            }
        });
        back.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                closeSureDia.dispose();
            }
        });
        closeSureDia.setVisible(true);
    }
}

class Layout {
    static void NoticeLayout(JDialog diaTran, JButton Exit, JButton back, JLabel message) {
        GridBagLayout layout = new GridBagLayout();
        diaTran.setLayout(layout);
        GridBagConstraints constraints = new GridBagConstraints();
        constraints.gridwidth = GridBagConstraints.RELATIVE;
        constraints.gridheight = 1;
        constraints.weightx = 1;
        constraints.weighty = 1;
        layout.setConstraints(Exit, constraints);
        constraints.gridwidth = GridBagConstraints.REMAINDER;
        constraints.gridheight = 1;
        constraints.weightx = 1;
        constraints.weighty = 1;
        layout.setConstraints(back, constraints);
        diaTran.add(Exit);
        diaTran.add(back);
        constraints.gridwidth = GridBagConstraints.REMAINDER;
        constraints.gridheight = 1;
        constraints.weightx = 1;
        constraints.weighty = 1;
        layout.setConstraints(message, constraints);
        diaTran.add(message);
    }

    static void mainInterfaceLayout(JFrame fratran, JPanel[] pan) {
        CardLayout layout = new CardLayout();
        fratran.add(pan[0], BorderLayout.CENTER);
        pan[0].setLayout(layout);
        Layout.funcLayout(pan[0]);
        pan[0].add(pan[1]);
        pan[0].add(pan[2]);
        pan[0].add(pan[3]);
        pan[0].add(pan[4]);
    }

    static void funcLayout(JPanel gspve) {
        GridBagLayout layout = new GridBagLayout();
        gspve.setLayout(layout);
        GridBagConstraints constraints = new GridBagConstraints();
        constraints.gridwidth = 5;
        constraints.gridheight = 5;
    }
}