package javaProject.iCal;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import starter.Parser;
import starter.Week;

@Controller
public class Main {

	////////////////////// KOntrolery //////////////
	EventManager eventManager = EventManager.getInstance();
	// @RequestMapping(params = "action1")

	@RequestMapping("/reset")

	public ModelAndView helloWorld() {
		eventManager.clearEvents();
		return new ModelAndView("reset");
	}

	@RequestMapping("/plan")

	public ModelAndView plans() throws IOException {
		// // Parser parser = new Parser();
		//
		// // Week week =
		// parser.ParseWeek(parser.Download("http://plan.uz.zgora.pl/grupy_plan.php?pId_Obiekt=16672"));
		// // String s=(week.printWeek());
		// , "message", s
		return new ModelAndView("plan");
	}

	@RequestMapping(value = "/plan", params = "action1", method = RequestMethod.POST)
	public ModelAndView action1() throws IOException {
		Parser parser = new Parser();

		Week week = parser.ParseWeek(parser.Download("http://plan.uz.zgora.pl/grupy_plan.php?pId_Obiekt=16672"));
		 String s=(week.printWeek());
		return new ModelAndView("plan", "message", s);
	}

	@RequestMapping(value = "/plan", params = "action2", method = RequestMethod.POST)
	public ModelAndView action2() throws IOException {
		Parser parser = new Parser();

		Week week = parser.ParseWeek(parser.Download("http://plan.uz.zgora.pl/grupy_plan.php?pId_Obiekt=16672"));
		 String s=(week.printWeek());
	
		return new ModelAndView("plan", "message", s);
	}

	@RequestMapping(value = "/down")
	public void download(HttpServletResponse response) throws IOException {
		eventManager.createICalFile("../plik.ical");
		File file = new File("../plik.ical");
		FileInputStream is = new FileInputStream(file);

		// MIME type of the file
		response.setContentType("application/octet-stream");
		// Response header
		response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
		// Read from the file and write into the response
		OutputStream os = response.getOutputStream();
		byte[] buffer = new byte[1024];
		int len;
		while ((len = is.read(buffer)) != -1) {
			os.write(buffer, 0, len);
		}
		os.flush();
		os.close();
		is.close();
}

}
