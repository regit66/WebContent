package javaProject.iCal;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;



public class ICalEvent {
	
	public static class ICalData{
		
		private String title;						// nazwa zdarzenia
		private final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd.MM.yyyy");
		private Calendar startDate;					// data rozpoczecia
		private Calendar endDate;					// data zakonczenia
		private String description;					// opis wydarzenia
		private String location;					// miejsce zwiazane z wydarzeniem
		private String urlAddress;					// strona powiazana z wydarzeniem
		
		public ICalData(){
			title = "";
			startDate = null;
			endDate = null;
			description = "The date is not set!";
			location = "";
			urlAddress = "";
		}
		
		public ICalData(String title, Calendar startDate, Calendar endDate, String desc, String location, String address){
			this.title = title;
			this.startDate = startDate;
			this.endDate = endDate;
			this.description = desc;
			this.location = location;
			this.urlAddress = address;
		}
		
		public String toString(){
			return "Tytul: " + title + " Start: " + DATE_FORMAT.format(startDate.getTime())
					+ " Koniec: " +  DATE_FORMAT.format(endDate.getTime()) + " Opis: " 
					+ description + " Miejsce: " + location + " URL: " + urlAddress;
		}
		
		public final Calendar stringToCalendar(String date){
			Calendar cal = Calendar.getInstance();
			
			try{ cal.setTime(DATE_FORMAT.parse(date)); }		// zamienia sting na date o formacie ustalonym w DATE_FORMAT
			catch(ParseException e){ e.printStackTrace(); }
			
			return cal;
		}
		
		// gettery
		public String getTitle() { return this.title; }
		public SimpleDateFormat getDateFormat() { return this.DATE_FORMAT; }
		public Calendar getStartDate() { return this.startDate; }
		public Calendar getEndDate() { return this.endDate; }
		public String getDescription() { return this.description; }
		public String getLocation() { return this.location; }
		public String getUrlAddress() { return this.urlAddress; }
		
		// settery
		public void setTitle(String title){ this.title = title; }
		public void setStartDate(Calendar date){ this.startDate = date; }
		public void setEndDate(Calendar date){ this.endDate = date; }
		public void setDescription(String desc){ this.description = desc; }
		public void setLocation(String location){ this.location = location; }
		public void setUrlAddress(String urlAddress){ this.urlAddress = urlAddress; }
	}
	
	private ICalData iCalData;							// przechowuje dane kalendarza
	private static final String SPLITTER = ";#=";		// wzorzec stringa oddzielajacego poszczegolne wlasciwosci
	
	public ICalEvent(){ iCalData = new ICalData(); }
	public ICalEvent(ICalData data){ iCalData = data; }
	
	public static ICalData stringToICalData(String data){
		String[] separatedData = data.split(SPLITTER);
		ICalData dataToReturn = new ICalData();
		
		dataToReturn.setTitle(separatedData[getValue(PropertiesType.TITLE)]);
		dataToReturn.setStartDate(dataToReturn.stringToCalendar(separatedData[getValue(PropertiesType.START_DATE)]));
		dataToReturn.setEndDate(dataToReturn.stringToCalendar(separatedData[getValue(PropertiesType.END_DATE)]));
		dataToReturn.setDescription(separatedData[getValue(PropertiesType.DESCRITPION)]);
		dataToReturn.setLocation(separatedData[getValue(PropertiesType.LOCATION)]);
		dataToReturn.setUrlAddress(separatedData[getValue(PropertiesType.URL_ADDRESS)]);
		
		return dataToReturn;
	}
	
	private static int getValue(PropertiesType type){ return type.ordinal(); } 		// zwraca dany typ jako liczbe
	
	public ICalData getICalData(){ return this.iCalData; }
	public void setICalData(ICalData data){ this.iCalData = data; }
	
	public String toString(){
		return iCalData.toString();
	}
}
