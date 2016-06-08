<%@ page import="javaProject.iCal.*"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
 <title>Icl Generator</title>
<script type="text/javascript" src="kalendarz.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link
	href='https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>

<script type="text/javascript">
	function przetwarzaj_dane()

	{
		var brakuje_danych = false;
		var formularz = document.getElementById('for');
		var napis = "";
		if (formularz.tekst6.value == "") {
			//  napis += "imiĂ„â„˘\n"
			brakuje_danych = true;
		}

		if (formularz.tekst3.value == "") {

			//  napis += "nazwisko\n"

			brakuje_danych = true;

		}

		if (formularz.tekst4.value == "") {

			//  napis += "kraj\n"

			brakuje_danych = true;

		}

		if (formularz.tekst5.value == "") {

			//        napis += "telefon\n"

			brakuje_danych = true;

		}

		if (!brakuje_danych) {
			formularz.submit();

			//  document.getElementById("MyEdit").innerHTML = "My new text!"; 
		} else

			alert("Wypełnij wszystkie pola\n" + napis);

	}
</script>




<script>
	function access() {
<%String str = "Hello World";%>
	//eventManager.addEvent(Blam);

		var ja = document.getElementById('Blam').value;

		document.getElementById("MyEdit").innerHTML = "My new text!";
		alert(ja);
	}
</script>


</head>
<body>

	<%
		String Blam = "";
		String date = request.getParameter("cal");
		String date2 = request.getParameter("cal2");
		String tekst6 = request.getParameter("tekst6");
		String tekst3 = request.getParameter("tekst3");
		String tekst4 = request.getParameter("tekst4");
		String tekst5 = request.getParameter("tekst5");

		EventManager eventManager = EventManager.getInstance();

		if (request.getParameter("tekst6") != null) {

			Blam = tekst6 + ";#=" + date + ";#=" + date2 + ";#=" + tekst3 + ";#=" + tekst4 + ";#=" + tekst5;
			eventManager.addEvent(Blam);
			response.sendRedirect("index.jsp");
		}
	%>



	<!-- Nie usuwać mi tego!!!! -->

	<!-- 						<a href="greeting.html"> Register an Employee</a> -->
	<!-- <input type="button"  onclick="location.href='welcome.html'" value="Register" >						 -->
	<!-- <input type="button" value="String Generate" onclick= access() /> -->
	<%-- <input name="Blam" id="Blam" value="<%=eventManager.showAllEvents()%>" size="50" type="hidden"> --%>


	<div class="wrapper">
		<div class="header">
			<div class="logo">ProjectJavaStartCode</div>
		</div>
		<div class="nav">
			<ol>
				<li><a href="#" id="myBtn"> New</a></li>
				<li><a href="down.html">Generate iCal</a></li>
				<li><a href="#">Load</a>
					<ul>
						<li><a href="#">from iCal</a></li>
						<li><a href="#">from CSV</a></li>
						<li><a href="#">from XML</a></li>
						<li><a href="plan.html">from Plan UZ</a></li>
						<li><a href="#">from html table</a></li>
					</ul></li>
				<li><a href="reset.html">Reset</a></li>
			
			</ol>
		</div>
		<div class="content">
			
			<div style="clear: both"></div>
		

			<div style="clear: both"></div>

			<div class="center-content"></div>
			<div class="bottom-content">
			
				<%=eventManager.showAllEvents2()%><br>
			</div>
			<div id="MyEdit"></div>
		</div>

		<div class="footer">projectjavastartcode.me &copy 2016</div>
	</div>
	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				New Event <span class="close"><img alt=""
					src="img/remove.gif"> </span>
			</div>
			<div class="modal-body"></div>
			<form name="formularz1" id="for" action="index.jsp" method="get">
				<table>
					<tr>
						<td colspan="2">Event Title:
							<div style="position: center;">
								<input type="text" id="tekst6" value="" name="tekst6" />
							</div>
						</td>
					</tr>
					<tr>
						<td>Date Start:
							<div style="position: center;">
								<input type="text" id="tekst" value="" name="cal"
									readonly="readonly" /> <input type="button" id="cal" value="" />
								<div id="cal_all" style="display: none;">
									<div id="cal_nav" style="width: 220px; text-align: center;"></div>
									<div id="kalendarz"></div>
								</div>
							</div>
						</td>
						<td>Date END:
							<div style="position: center;">
								<input type="text" id="tekst2" value="" name="cal2"
									readonly="readonly" /> <input type="button" id="cal2" />
								<div id="cal_all2" style="display: none;">
									<div id="cal_nav2" style="width: 220px; text-align: center;"></div>
									<div id="kalendarz2"></div>
								</div>
							</div>
						</td>
					</tr>
					<tr>



						<td colspan="2">Description:
							<div style="position: center;">
								<input type="text" id="tekst3" value="" name="tekst3" />
							</div>
						</td>
					<tr>
						<td colspan="2">Location:
							<div style="position: center;">
								<input type="text" id="tekst4" value="" name="tekst4" />
							</div>
						</td>
					<tr>
						<td colspan="2">URL:
							<div style="position: center;">
								<input type="text" id="tekst5" value="" name="tekst5" />
							</div>
						</td>
				</table>

				<br> <input type="button" id="btnSubmit" name="btnSubmit"
					value="Wyślij!" onClick="przetwarzaj_dane()">
			</form>
			<div class="modal-footer">
				<br> <br> <br> <br>
			</div>
		</div>
	</div>
	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>


</body>
</html>