package starter;

import java.util.ArrayList;

public class Week {
	private ArrayList<Day> days;
	
	public Week(){
		days = new ArrayList<Day>();
	}

	public ArrayList<Day> getDays() {
		return days;
	}
	
	public void addDay(Day day){
		days.add(day);
	}
	
	public void removeDay(Day day){
		days.remove(day);
	}
	
    public String printWeek(){
        String out="";
        for(Day day : days){
            out+=day.printDay()+"\n"+"\n";
        }
        return out;
    }
}
