package AwtEvents;
import java.awt.*;
import java.awt.event.*;

public class AwtEvents {
    public static void main(String[] args){
        Frame f=new Frame();
        f.setSize(400,300);
        f.setLocation(300,200);
        f.setVisible(true);
        Button btn = new Button("exit");
        f.add(btn);
        btn.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e){
                System.exit(0);
            }
        });
    }
}
/*
class MyWindowListner implements WindowListener {
    public void windowClosing(WindowEvent e){
        Window window = e.getWindow();
        window.setVisible(false);
        window.dispose();
    }

    public void windowActivated(WindowEvent e){

    }

    public void windowClosed(WindowEvent e) {

    }

    public void windowDeactivated(WindowEvent e){

    }


    public void windowDeiconified(WindowEvent e){

    }

    public void windowIconified(WindowEvent e){

    }

    public void windowOpened(WindowEvent e){

    }
}
*/

/*class MyWindowListener extends WindowAdapter{
    public void windowClosing(WindowEvent e){
        Window window=(Window) e.getComponent();
        window.dispose();
    }
}*/