package ktv;
import java.util.*;
import java.util.Scanner;
public class Test {
	public static void main(String[] args) {
		Scanner S1=new Scanner(System.in);
		songOperate So=new songOperate();
		for(int i=0;i<3;i++)
			So.addSong();
		show Show1=new show();
		/*
		Show1.Song_show(So.Song);
		So.TopSong(So.Song);
		Show1.Song_show(So.Song);
		So.mvSong(So.Song);
		Show1.Song_show(So.Song);
		*/
		int choice=3;
		do {
			Show1.Menu();
			choice=S1.nextInt();
			switch (choice){
			case 0:
				So.addSong();
				break;
			case 1:
				So.TopSong(So.Song);
				break;
			case 2:
				So.mvSong(So.Song);
			}
			if(choice!=3) {
				Show1.Song_show(So.Song);
			}
		}while(choice!=3);
	}
}

class show{
	void Menu() {
		System.out.println("0.添加歌曲列表");
		System.out.println("1.置顶歌曲");
		System.out.println("2.将歌曲前移一位");
		System.out.println("3.退出");
	}
	
	void Song_show (ArrayList Song) {
		Iterator it1=Song.iterator();
		System.out.print("[");
		while(it1.hasNext())
		{
			System.out.print(it1.next()+" ");
			//System.out.println();
		}
		System.out.println("]");
	}
}

class songOperate{
	ArrayList Song=new ArrayList();
	void addSong() {
		System.out.println("请输入歌名");
		Scanner S1=new Scanner(System.in);
		Song.add(Song.size(), S1.next());
	}
	
	void TopSong (ArrayList Song) {
		Scanner S1=new Scanner(System.in);
		System.out.println("请输入要置顶的歌曲");
		String top=new String(S1.next());
		int Posi=Song.indexOf(top);
		Song.add(0, top);
		Song.remove(Posi+1);
	}
	
	void mvSong(ArrayList Song) {
		Scanner S1=new Scanner(System.in);
		System.out.println("请输入要前移的歌曲");
		String top=new String(S1.next());
		int Posi=Song.indexOf(top);
		Song.add(Posi-1, top);
		Song.remove(Posi+1);
	}
}