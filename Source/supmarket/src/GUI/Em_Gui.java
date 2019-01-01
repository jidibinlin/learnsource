package GUI;

import javax.swing.*;

public class Em_Gui {
        public void Em_Interface() {
        JFrame mainframe = new JFrame("mainframe");
        mainframe.setSize(1300, 700);
        mainframe.setLocation(400, 200);
        mainframe.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        mainframe.setVisible(true);
        CloseWindowSpecial ls = new CloseWindowSpecial();
        mainframe.addWindowListener(ls);
    }
}
