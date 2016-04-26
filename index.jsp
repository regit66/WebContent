<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript" src="kalendarz.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>


</head>
<body>




	<div class="wrapper">
		<div class="header">
			<div class="logo">
			ProjectJavaStartCode
			</div>
		</div>
		<div class="nav">
			<ol>
				<li><a href="#" id="myBtn"> New</a></li>
				<li><a href="#">Generate iCal</a></li>
				<li><a href="#">Load</a>
					<ul>
						<li><a href="#">from iCal</a></li>
						<li><a href="#">from CSV</a></li>
						<li><a href="#">from XML</a></li>
						<li><a href="#">from Plan UZ</a></li>
						<li><a href="#">from html table</a></li>
					</ul>
				</li>
				<li><a href="#">Reset</a></li>
				<li><a href="#">Options</a></li>	
			</ol>
		</div>
		<div class="content">
			<div class="top-content">
				<div class="top-content-option">
					<label>
						<input type="checkbox" name="checkbox" value="value">Hide Details
					</label>
				</div>
				<div class="top-content-option">
					Hour Format: 
					<input type="radio" id="radio12" name="radio" checked="checked" style=""/>
					<label for="radio12" class="clock-12h">12H</label>
					<input type="radio" id="radio24" name="radio"/>
					<label	for="radio24" class="clock-24h">24H</label>
				</div>
			</div>
			<div style="clear:both"></div>
			<div class="title-timezone">
				<div class="title-timezone-option">
					<label for="calTitle">Title:</label>
					<input type="text"	id="calTitle" name="calTitle" class="resizedTextbox" />
				</div>
				<div class="title-timezone-option">
					<label for="calTimeZone">Timezone:</label>
						<select name="calTimeZone" id="calTimeZone" class="resizedTextbox">
							<option value="Etc/GMT+12">-12:00 Etc/GMT+12</option>
							<option value="Pacific/Pago_Pago">-11:00 Pacific/Pago_Pago</option>
							<option value="America/Adak">-11:00 America/Adak(DST)</option>
							<option value="Pacific/Honolulu">-10:00 Hawaii Time</option>
							<option value="Pacific/Marquesas">-09:30 Pacific/Marquesas</option>
							<option value="Pacific/Gambier">-09:00 Pacific/Gambier</option>
							<option value="America/Anchorage">-09:00 Alaska Time (DST)</option>
							<option value="America/Los_Angeles">-08:00 Pacific Time (DST)</option>
						    <option value="Pacific/Pitcairn">-08:00 Pacific/Pitcairn</option>
							<option value="America/Phoenix">-07:00 Mountain Time - Arizona</option>
							<option value="America/Denver">-07:00 Mountain Time (DST)</option>
							<option value="America/Guatemala">-06:00 America/Guatemala</option>
							<option value="America/Chicago">-06:00 Central Time (DST)</option>
							<option value="Pacific/Easter">-06:00 Pacific/Easter (DST)</option>
							<option value="America/Bogota">-05:00 America/Bogota</option>
							<option value="America/New_York">-05:00 Eastern Time (DST)</option>
							<option value="America/Caracas">-04:30 America/Caracas</option>
							<option value="America/Halifax">-04:00 America/Halifax (DST)</option>
							<option value="America/Santo_Domingo">-04:00 America/Santo_Domingo</option>
							<option value="America/Asuncion">-04:00 America/Asuncion (DST)</option>
							<option value="America/Cuiaba">-04:00 America/Cuiaba (DST)</option>
							<option value="America/St_Johns">-03:30 America/St_Johns (DST)</option>
							<option value="America/Godthab">-03:00 America/Godthab (DST)</option>
							<option value="America/Argentina/Buenos_Aires">-03:00 America/Argentina/Buenos_Aires</option>
							<option value="America/Montevideo">-03:00 America/Montevideo (DST)</option>
							<option value="America/Sao_Paulo">-03:00 America/Sao_Paulo (DST)</option>
							<option value="America/Noronha">-02:00 America/Noronha</option>
							<option value="Etc/GMT+2">-02:00 Etc/GMT+2 (DST)</option>
							<option value="Atlantic/Azores">-01:00 Atlantic/Azores (DST)</option>
							<option value="Atlantic/Cape_Verde">-01:00 Atlantic/Cape_Verde</option>
							<option value="Etc/UTC">00:00 Etc/UTC</option>
							<option value="Europe/London">00:00 Europe/London (DST)</option>
							<option value="Europe/Berlin">+01:00 Europe/Berlin (DST)</option>
							<option value="Africa/Lagos">+01:00 Africa/Lagos</option>
							<option value="Africa/Windhoek">+01:00 Africa/Windhoek (DST)</option>
							<option value="Asia/Beirut">+02:00 Asia/Beirut (DST)</option>
							<option value="Africa/Johannesburg">+02:00 Africa/Johannesburg</option>
							<option value="Europe/Moscow">+03:00 Europe/Moscow (DST)</option>
							<option value="Asia/Baghdad">+03:00 Asia/Baghdad</option>
							<option value="Asia/Tehran">+03:30 Asia/Tehran (DST)</option>
							<option value="Asia/Dubai">+04:00 Asia/Dubai</option>
							<option value="Asia/Yerevan">+04:00 Asia/Yerevan (DST)</option>
							<option value="Asia/Kabul">+04:30 Asia/Kabul</option>
							<option value="Asia/Yekaterinburg">+05:00 Asia/Yekaterinburg (DST)</option>
							<option value="Asia/Karachi">+05:00 Asia/Karachi</option>
							<option value="Asia/Calcutta">+05:30 Asia/Kolkata</option>
							<option value="Asia/Katmandu">+05:45 Asia/Kathmandu</option>
							<option value="Asia/Dhaka">+06:00 Asia/Dhaka</option>
							<option value="Asia/Omsk">+06:00 Asia/Omsk (DST)</option>
							<option value="Asia/Rangoon">+06:30 Asia/Rangoon</option>
							<option value="Asia/Krasnoyarsk">+07:00 Asia/Krasnoyarsk (DST)</option>
							<option value="Asia/Jakarta">+07:00 Asia/Jakarta</option>
							<option value="Asia/Shanghai">+08:00 Asia/Shanghai</option>
							<option value="Asia/Singapore">+08:00 Asia/Singapore</option>
							<option value="Australia/Perth">+08:00 Australia/Perth</option>
							<option value="Asia/Irkutsk">+08:00 Asia/Irkutsk(DST)</option>
							<option value="Australia/Eucla">+08:45 Australia/Eucla</option>
							<option value="Asia/Yakutsk">+09:00 Asia/Yakutsk (DST)</option>
							<option value="Asia/Tokyo">+09:00 Japan, Korea</option>
							<option value="Australia/Darwin">+09:30 Australia/Darwin</option>
							<option value="Australia/Adelaide">+09:30  Australia/Adelaide (DST)</option>
							<option value="Australia/Brisbane">+10:00 Australia/Brisbane</option>
							<option value="Asia/Vladivostok">+10:00 Asia/Vladivostok (DST)</option>
							<option value="Australia/Sydney">+10:00 Australia/Sydney (DST)</option>
							<option value="Australia/Lord_Howe">+10:30 Australia/Lord_Howe (DST)</option>
							<option value="Asia/Kamchatka">+11:00 Asia/Kamchatka (DST)</option>
							<option value="Pacific/Noumea">+11:00 Pacific/Noumea</option>
							<option value="Pacific/Norfolk">+11:30 Pacific/Norfolk</option>
							<option value="Pacific/Auckland">+12:00 Pacific/Auckland (DST)</option>
							<option value="Pacific/Tarawa">+12:00 Pacific/Tarawa</option>
							<option value="Pacific/Chatham">+12:45 Pacific/Chatham (DST)</option>
							<option value="Pacific/Tongatapu">+13:00 Pacific/Tongatapu</option>
							<option value="Pacific/Apia">+13:00 Pacific/Apia (DST)</option>
							<option value="Pacific/Kiritimati">+14:00 Pacific/Kiritimati</option>
							</select>																			
				</div>
			</div>
			<div style="clear:both"></div>			
			
			<div class="center-content">
				
				<%
				String date = request.getParameter("cal"); 
				String date2 = request.getParameter("cal2"); 
				String tekst6 = request.getParameter("tekst6"); 
				String tekst3 = request.getParameter("tekst3"); 
				String tekst4 = request.getParameter("tekst4"); 
				String tekst5 = request.getParameter("tekst5"); 
				String Data =  "Data Start: " + date+ " Data Zakoncz: " + date2 ;
				String Blam = "Tytul: " + tekst6 + Data + " Opis: " +tekst3 +" Miejsce: " +tekst4 +" URL: " +tekst5;
				
				%>
				<%=Blam%>  <br>
			
		
			</div>
			<div class="bottom-content">
				<div class="bottom-content-option">
					<input type="button" value="Close"/>
					<input type="button" value="Download with ical alert" onclick="download.jsp" /> 
				</div>
			</div>
		</div>
		<div class="footer">
		projectjavastartcode.me &copy 2016
		</div>
	</div>
<!-- The Modal -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
	New Event
      <span class="close"><img alt="" src="img/remove.gif">
	  </span>
    </div>
    <div class="modal-body">	
    </div>
	<form action="index.jsp" method="post" onsubmit="">
	<table >
<tr>
	<td colspan="2">Event Title:<div style="position:center;"><input type="text" id="tekst6" value="" name="tekst6"  /></div></td>
</tr>
<tr>
	<td>Date Start:<div style="position:center;">
		<input type="text" id="tekst" value="" name="cal" readonly="readonly" />
		<input type="button" id="cal" value="" />
		<div id="cal_all" style="display: none;">
		<div id="cal_nav" style="width: 220px; text-align: center;"></div>
		<div id="kalendarz"></div></div>
		</div></td>	<td>
		Date END:<div style="position:center;">
		<input type="text" id="tekst2" value="" name="cal2" readonly="readonly" />
		<input type="button" id="cal2" />
		<div id="cal_all2" style="display: none;">
		<div id="cal_nav2" style="width: 220px; text-align: center;"></div>
		<div id="kalendarz2"> </div>
		</div>
		</div>
		</td>
</tr>
<tr>



	<td colspan="2">Description:<div style="position:center;"><input type="text" id="tekst3" value="" name="tekst3"  /></div></td>
	<tr>
	<td colspan="2">Location:<div style="position:center;"><input type="text" id="tekst4" value="" name="tekst4"  /></div></td>
	<tr>
	<td colspan="2">URL:<div style="position:center;"><input type="text" id="tekst5" value="" name="tekst5"  /></div></td>
</table>
	
<br>
			
		<input type="submit" value="dodaj" onclick="main.jsp"/>
		</form>	
    <div class="modal-footer">
    <br>  <br>  <br>  <br>
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