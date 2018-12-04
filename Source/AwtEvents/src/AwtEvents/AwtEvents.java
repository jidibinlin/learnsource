package AwtEvents;
import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public class AwtEvents {
    public static void main(String[] args){
        Frame f=new Frame();
        f.setSize(400,300);
        f.setLocation(300,200);
        f.setVisible(true);
        MyWindowListener ml=new MyWindowListener();
        f.addWindowListener(ml);
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

class MyWindowListener extends WindowAdapter{
    public void windowClosing(WindowEvent e){
        Window window=(Window) e.getComponent();
        window.dispose();
    }
}