package awt_day1;

import java.awt.*;
import java.awt.event.*;

public class example01 {
    public static void main(String[] args) {
        Frame f=new Frame("GridBagLayout");//create a frame
        //f.setSize(400,300);//size of the frame
        //f.setLocation(300,200);//loacation of the frame
        GridBagLayout layout=new GridBagLayout();
        GridBagConstraints c = new GridBagConstraints();
        f.setLayout(layout);//set flow layout manager
        c.fill = GridBagConstraints.BOTH;
        c.weightx=1;
        c.weighty=2;
        addcomponent("btn1",layout,c,f);
        addcomponent("btn2",layout,c,f);
        addcomponent("btn3",layout,c,f);
        c.gridwidth = GridBagConstraints.REMAINDER;
        addcomponent("btn4",layout,c,f);
        c.weightx=0;
        c.weighty=0;
        c.gridwidth=1;
        addcomponent("bt5",layout,c,f);
        c.gridwidth=GridBagConstraints.REMAINDER;
        addcomponent("bt6",layout,c,f);
        f.pack();
        f.setVisible(true);//set the visibility
        MyWindowListener mw= new MyWindowListener();
        f.addWindowListener(mw);

    }

    private static void addcomponent(String name,GridBagLayout layout,GridBagConstraints c,Frame f)
    {
        Button bt=new Button("name");
        layout.setConstraints(bt,c);
        f.add(bt);

    }
}

class MyWindowListener implements WindowListener{
    public void windowClosing(WindowEvent e){
        Window window = e.getWindow();
        window.setVisible(false);
        window.dispose();
    }

    public void windowActivated(WindowEvent e){

    }

    public void windowClosed(WindowEvent e){

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


