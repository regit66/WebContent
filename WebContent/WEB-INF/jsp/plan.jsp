<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Import from Plan</title>
<script type="text/javascript" src="kalendarz.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		
		
		$('#Wydzial').bind('change', function() {
			var elements = $('div.container').children().hide(); // hide all the elements
			var value = $(this).val();

			if (value.length) { // if somethings' selected
				elements.filter('.' + value).show(); // show the ones we want
			}
		}).trigger('change');

		$('.second-level-select').bind('change', function() {
			var elements = $('div.second-level-container').children().hide(); // hide all the elements
			var value = $(this).val();

			if (value.length) { // if somethings' selected
				elements.filter('.' + value).show(); // show the ones we want
			}
		}).trigger('change');
		$('.third-level-select').bind('change', function() {
			var elements = $('div.third-level-container').children().hide(); // hide all the elements
			var value = $(this).val();

			if (value.length) { // if somethings' selected
				elements.filter('.' + value).show(); // show the ones we want
				$('div.four-level-container').show();
			}
		}).trigger('change');
	
	});
</script>
</head>
<body>


  <form:form action="plan.html" method="post">
   
	<!-- wydzialy -->
	<select size="1" id="Wydzial" title="" name="Wydzial">
		<option value="">-Wybierz wydział-</option>
		<option value="1">Wydział Artystyczny</option>
		<option value="2">Wydział Budownictwa, Architektury i Inżynierii Środowiska</option>
		<option value="3">Wydział Ekonomii i Zarządzania</option>
		<option value="4">Wydział Fizyki i Astronomii</option>
		<option value="5">Wydział Humanistyczny</option>
		<option value="6">Wydział Informatyki, Elektrotechniki i Automatyki</option>
		<option value="7">Wydział Lekarski i Nauk o Zdrowiu</option>
		<option value="8">Wydział Matematyki, Informatyki i Ekonometrii</option>
		<option value="9">Wydział Mechaniczny</option>
		<option value="10">Wydział Nauk Biologicznych</option>
		<option value="11">Wydział Pedagogiki, Psychologii i Socjologii</option>
		<option value="12">Wydział Prawa i Administracji</option>
	</select>
	<!---------------------------------------------------------------------------------------------->
	
	
	<!--dla wydzialu artystycznego -->
	<div class="container">
		<div class="1">
			<select class="second-level-select">
				<option value="">-Wybierz Kierunek-</option>
				<option value="Architektura-wnetrz">Architektura wnetrz</option>
				<option value="Edukacja-artystyczna-w-zakresie-sztuk-plastycznych">Edukacja artystyczna w zakresie sztuk plastycznych</option>
				<option value="Edukacja-artystyczna-w-zakresie-sztuki-muzycznej">Edukacja artystyczna w zakresie sztuki muzycznej</option>
				<option value="Grafika">Grafika</option>
				<option value="Jazz-i-muzyka-estradowa">Jazz i muzyka estradowa</option>
				<option value="Malarstwo">Malarstwo</option>
			</select>
		</div>
		
		<!--dla Wydział Budownictwa, Architektury i Inżynierii Środowiska-->
		<div class="2">
			<select class="second-level-select">
				<option value="">-Wybierz Kierunek-</option>
				<option value="Architektura">Architektura</option>
				<option value="Architektura-i-urbanistyka">Architektura i urbanistyka</option>
				<option value="Budownictwo">Budownictwo</option>
				<option value="Inzynieria-srodowiska">Inżynieria środowiska</option>

			</select>
		</div>
		
	<!---------------------------------------------------------------------------------------------->
	</div>
				<!--grupy architektura wnetrz -->
				<div class="second-level-container">
					<div class="Architektura-wnetrz">
						<select class="third-level-select">
							<option value="">-Wybierz Grupe-</option>
							<option value="11AWSP">11AWSP</option>
							<option value="21AWSP">21AWSP</option>
							<option value="31AWSP">31AWSP</option>
						</select>
					</div>
				</div>
				<!--grupy Edukacja artystyczna w zakresie sztuk plastycznych -->
				<div class="second-level-container">
					<div class="Edukacja-artystyczna-w-zakresie-sztuk-plastycznych">
						<select class="third-level-select">
							<option value="">-Wybierz Grupe-</option>
							<option value="11EAwZSPSD">11EAwZSPSD</option>
							<option value="11EAwZSPSP">11EAwZSPSP</option>
							<option value="21EAwZSPSD">21EAwZSPSD</option>
							<option value="21EAwZSPSP">21EAwZSPSP</option>
							<option value="31EASPSP">31EASPSP</option>
						</select>
					</div>
				</div>
				




	<div class="third-level-container">
		<div class="four-level-container">
		<input type="text" id="tekst" value="" name="cal" readonly="readonly" />
		<input type="button" id="cal" value="" />
		<div id="cal_all" style="display: none;">
			<div id="cal_nav" style="width: 220px; text-align: center;"></div>
			<div id="kalendarz"></div>
		</div>
	</div>
	
	
	
		<div class="11AWSP">plan dla 11AWSP    <input type = "submit" name = "action2" value="Action2"/> </div>
		<div class="21AWSP">plan dla 12AWSP"<input type = "submit" name = "action1" value="Action1"/></div>
		<div class="31AWSP">plan dla 13AWSP"</div>

	</div>
	  <input type = "button"  onclick="$:location.href='index.jsp'" name = "action1" value="Wróć"/>
 <div id="show" align="center">${message}</div>
   </form:form>







</body>
</html>