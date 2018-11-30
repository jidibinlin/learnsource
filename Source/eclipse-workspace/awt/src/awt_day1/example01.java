package awt_day1;

import java.awt.*;

public class example01 {
    public static void main(String[] args) {
        Frame f=new Frame("flowlayout");//create a frame
        f.setLayout(new FlowLayout(FlowLayout.LEFT,50,50));//set flow layout manager
        f.setSize(400,300);//size of the frame
        f.setLocation(300,200);//loacation of the frame
        f.add(new Button("first"));//add button
        f.add(new Button("second"));
        f.add(new Button("third"));
        f.setVisible(true);//set the visibility
    }
}


