package starter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class Parser {
	public String Download(String URLLink) throws IOException{
		String data = "";
		URL url = new URL(URLLink);
	    URLConnection con = url.openConnection();
	    InputStream is =con.getInputStream();
	    BufferedReader br = new BufferedReader(new InputStreamReader(is));
	    String line = null;
	    while ((line = br.readLine()) != null) {
	        data+=line+"\n";
	    }
	    return getContent(data);
	}
	
	public String getContent(String data){
		String webContent=data.substring(data.indexOf("</tr>")+5);
		webContent=webContent.substring(webContent.indexOf("</tr>")+5);
		webContent=webContent.substring(0,webContent.indexOf("</table>"));
		return webContent;
	}
	
	public Week ParseWeek(String data){
		Week week = new Week();
		String[] days = data.split("<tr>");
		for(int k=1;k<days.length;k++)
		{
			Day day = new Day();
			String[] subjects = days[k].split("</tr>");
			day.setName(subjects[0].substring(subjects[0].indexOf("<b>")+3, subjects[0].indexOf("</b>")));
			for(int i=1;i<subjects.length-1;i++)
			{
				String[] subInfo = subjects[i].split("\n");
				String[] subjectData = new String[8];
				String[] links = new String[3];
				for(int j=2;j<subInfo.length-1;j++)
				{
					if(j<7)
					{
						subjectData[j-2]=subInfo[j].substring(subInfo[j].indexOf(">")+1, subInfo[j].indexOf("</"));
					}
					else
					{
						subInfo[j]=subInfo[j].substring(subInfo[j].indexOf(">")+1);
						subjectData[j-2]=subInfo[j].substring(subInfo[j].indexOf(">")+1, subInfo[j].indexOf("</"));
						if(subInfo[j].contains("href"))
						{
							links[j-7]=subInfo[j].substring(subInfo[j].indexOf("href=")+5, subInfo[j].indexOf(">"));
							links[j-7]="http://plan.uz.zgora.pl/"+links[j-7].replace("\"","");
						}
						else
						{
							links[j-6]="";
						}
					}
				}
				day.addSubject(new Subject(subjectData[0], subjectData[1], subjectData[2], subjectData[3], subjectData[4], subjectData[5], links[0], subjectData[6], links[1], subjectData[7], links[2]));
			}
			week.addDay(day);
		}
		return week;
	}
}
