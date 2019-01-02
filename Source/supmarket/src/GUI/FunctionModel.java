package GUI;

import javax.swing.*;
import java.awt.*;

public class FunctionModel {
    JPanel[] pan=null;
    void add(JPanel[] pan, Color[] bgColor,String[] panName){
        pan[0]=new JPanel();//承载具体功能模块
        for (int i = 1; i < 6; i++) {
            pan[i] = new JPanel();
            pan[i].setBackground(bgColor[i-1]);//设置具体功能模块的背景色
            pan[i].setName(panName[i-1]);
        }
        this.pan=pan;
    }
    static JScrollPane[] addfunchild(){
        JScrollPane[] funchild={new JScrollPane(),new JScrollPane(),new JScrollPane(),new JScrollPane()};
        //Dimension[] Di={new Dimension(300,700),new Dimension(1000,700),new Dimension(300,300),new Dimension(1000,300)};
        //for(int i=0;i<4;i++){
//            funchild[i].setPreferredSize(Di[i]);
//        }
        return funchild;
    }
}
