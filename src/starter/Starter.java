package starter;

import java.io.IOException;

public class Starter {

	public static void main(String[] args){
		new Starter();
	}
	public Starter()
	{
		Parser parser = new Parser();
		try {
			Week week = parser.ParseWeek(parser.Download("http://plan.uz.zgora.pl/grupy_plan.php?pId_Obiekt=16672"));
			System.out.println(week.printWeek());
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
