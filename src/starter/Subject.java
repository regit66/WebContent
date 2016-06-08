package starter;

public class Subject {
	private String subgroup;
	private String timeStart;
	private String timeEnd;
	private String name;
	private String type;
	private String teacher;
	private String teacherURL;
	private String classroom;
	private String classroomURL;
	private String info;
	private String infoURL;
	
	public String getSubgroup() {
		return subgroup;
	}
	public void setSubgroup(String subgroup) {
		this.subgroup = subgroup;
	}
	public String getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getTeacherURL() {
		return teacherURL;
	}
	public void setTeacherURL(String teacherURL) {
		this.teacherURL = teacherURL;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getClassroomURL() {
		return classroomURL;
	}
	public void setClassroomURL(String classroomURL) {
		this.classroomURL = classroomURL;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getInfoURL() {
		return infoURL;
	}
	public void setInfoURL(String infoURL) {
		this.infoURL = infoURL;
	}
    public String printSubject(){
        return subgroup+"\n"+timeStart+"\n"+timeEnd+"\n"+name+"\n"+type+"\n"+teacher+"\n"+teacherURL+"\n"+classroom+"\n"+classroomURL+"\n"+info+"\n"+infoURL;
    }
	
	public Subject(String subgroup, String timeStart, String timeEnd, String name, String type, String teacher,
			String teacherURL, String classroom, String classroomURL, String info, String infoURL) {
		super();
		this.subgroup = subgroup;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
		this.name = name;
		this.type = type;
		this.teacher = teacher;
		this.teacherURL = teacherURL;
		this.classroom = classroom;
		this.classroomURL = classroomURL;
		this.info = info;
		this.infoURL = infoURL;
	}
}
