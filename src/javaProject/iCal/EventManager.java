package javaProject.iCal;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import biweekly.Biweekly;
import biweekly.ICalendar;
import biweekly.component.VEvent;



public final class EventManager implements Manageable{
	
	private List<ICalEvent> eventList = new ArrayList<ICalEvent>();			// przechowuje wszystkie utworzone wydarzenia	
	private static final EventManager instance = new EventManager();		// singleton
	
	public static EventManager getInstance(){ return instance; }			// zapewnia tylko jedna instancje tej klasy
	private EventManager(){}												// ...
	
	public void addEvent(String event){										// dodaje nowe wydarzenie do listy
		
		eventList.add(new ICalEvent(ICalEvent.stringToICalData(event)));
	}
	
	public String showAllEvents(){
		String show = "";
		
		for (ICalEvent cal : eventList) {
			show += cal.toString() + "\r\n";
		}
		return show;
	}
	public String showAllEvents2(){
		String show = "";
		
		for (ICalEvent cal : eventList) {
			show += cal.toString() + "\r\n<br>";
		}
		return show;
	}
	public void createICalFile(String fileName) throws IOException{
		ICalendar ical = new ICalendar();
		File file = new File(fileName);
		Biweekly.write(ical).go(file);
		if(eventList.isEmpty())
			return;
		
		
		ical.setProductId("PROJEKT - JAVA START CODE uz.zgora.pl");
		for (ICalEvent ice : eventList) {
			
			VEvent event = new VEvent();
			event.setSummary(ice.getICalData().getTitle());
			event.setDateStart(ice.getICalData().getStartDate().getTime());
			event.setDateEnd(ice.getICalData().getEndDate().getTime());
			event.setDescription(ice.getICalData().getDescription());
			event.setLocation(ice.getICalData().getLocation());
			
			if(ice.getICalData().getUrlAddress() != null)
				event.setUrl(ice.getICalData().getUrlAddress());
		
			ical.addEvent(event);
		}
		
		
		try{ Biweekly.write(ical).go(file); }
		catch(IOException e){ System.out.println("COS POSZLO NIE TAK"); }
	}
	
	public void clearEvents(){
		eventList.clear();
	}
}
