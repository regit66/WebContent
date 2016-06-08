package starter;

import java.util.ArrayList;

public class Day {
	private ArrayList<Subject> subjects;
	private String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Day(){
		subjects = new ArrayList<Subject>();
	}

	public ArrayList<Subject> getSubjects() {
		return subjects;
	}
	
	public void addSubject(Subject subject){
		subjects.add(subject);
	}
	
	public void removeSubject(Subject subject){
		subjects.remove(subject);
	}
	
    public String printDay(){
        String out=name+"\n";
        for(Subject subject : subjects){
            out+=subject.printSubject()+"\n"+"\n";
        }
        return out;
    }
}
