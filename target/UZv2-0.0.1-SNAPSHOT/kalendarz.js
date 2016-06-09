(function() {
	var dzis = new Date(), dzis_dzien = dzis.getDate(), dzis_mc = dzis
	.getMonth(), dzis_rok = dzis.getFullYear(), miesiace = [
	'Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec',
	'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad',
	'Grudzień' ], dni_tyg = [ "Nd", "Pn", "Wt", "Sr", "Cz", "Pt", "So" ], current_mc = dzis_mc, current_rok = dzis_rok;

	var dzis2 = new Date(), dzis_dzien = dzis.getDate(), dzis_mc = dzis
	.getMonth(), dzis_rok = dzis.getFullYear(), miesiace = [
	'Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec',
	'Lipiec', 'Sierpień', 'Wrzesień', 'Październik', 'Listopad',
	'Grudzień' ], dni_tyg = [ "Nd", "Pn", "Wt", "Sr", "Cz", "Pt", "So" ], current_mc2 = dzis_mc, current_rok2 = dzis_rok;

	function pokaz_kalendarz(in_mc, in_rok, id_k, id_nast, id_poprz,
			id_cal_nav, id_cal) {

		var pierwszy_dzien_mca = new Date(in_rok, in_mc, 1), pozycja_dnia = pierwszy_dzien_mca
				.getDay(), liczba_dni = [ 31, 28, 31, 30, 31, 30, 31, 31, 30,
				31, 30, 31 ], kalendarz_table = document.createElement('table'), kalendarz_div = document
				.getElementById(id_k);
		if (in_rok % 4 == 0) {
			liczba_dni[1] = 29;
		}
		kalendarz_table.border = '0';
		kalendarz_table.cellSpacing = '0';
		kalendarz_table.cellPadding = '2';
		kalendarz_table.width = '220px';
		kalendarz_div.appendChild(kalendarz_table);
		var kalendarz_tbody = document.createElement('tbody');
		kalendarz_table.appendChild(kalendarz_tbody);
		var row = kalendarz_tbody.insertRow(-1), cell;
		for (var i = 0; i < dni_tyg.length; i++) {
			cell = row.insertCell(-1);
			cell.className = 'dni_tyg';
			cell.innerHTML = dni_tyg[i];
		}

		if (id_cal_nav == 'cal_nav')
			document.getElementById(id_cal_nav).innerHTML = '<span class="mon_year"><a id="poprz" style="cursor: pointer;"></a><div style="float:left;width:150px;">'
					+ miesiace[in_mc]
					+ ' '
					+ in_rok
					+ '</div><a id="nast" style="cursor: pointer;"></a></a></span> ';
		else
			document.getElementById(id_cal_nav).innerHTML = '<span class="mon_year"><a id="poprz2" style="cursor: pointer;"></a><div style="float:left;width:150px;">'
					+ miesiace[in_mc]
					+ ' '
					+ in_rok
					+ '</div><a id="nast2" style="cursor: pointer;"></a></a></span> ';
		row = kalendarz_tbody.insertRow(-1);
		if (pozycja_dnia > 0) {
			for (var i = 0; i < pozycja_dnia; i++) {
				cell = row.insertCell(-1);
				cell.innerHTML = '&nbsp;';
			}
		}

		for (var dz = 1; dz <= liczba_dni[in_mc]; dz++) {
			var styl = '', klasa = '';
			if (dz == dzis_dzien && in_rok == dzis_rok && in_mc == dzis_mc) {
				klasa = 'active';
			}
			cell = row.insertCell(-1);
			cell.id = in_rok + '_' + in_mc + '_' + dz;
			cell.align = "center";
			// cell.style.backgroundColor = styl;
			cell.className = klasa;
			cell.innerHTML = dz;
			if (id_cal == 'cal')

				cell.onclick = function() {
					przetworz_date(this.innerHTML, 'tekst');
				}
			else
				cell.onclick = function() {
					przetworz_date(this.innerHTML, 'tekst2');
				}

			pozycja_dnia++;
			if (pozycja_dnia == 7) {
				pozycja_dnia = 0;
				if (dz < liczba_dni[in_mc]) {
					var row = kalendarz_tbody.insertRow(-1);
				}
			}
		}

		if (pozycja_dnia > 0) {
			for (var i = pozycja_dnia; i < 7; i++) {
				cell = row.insertCell(-1);
				cell.innerHTML = '&nbsp;';
			}
		}

		if (id_nast == 'nast')
			{
		document.getElementById(id_nast).onclick = nast;
		document.getElementById(id_poprz).onclick = poprz;
	}
		else
			{
			document.getElementById(id_nast).onclick = nast2;
			document.getElementById(id_poprz).onclick = poprz2;
			}
	}
	function nast2(){
	document.getElementById('kalendarz2').innerHTML = '';
	if (current_mc2 == 11) {
		current_mc2 = 0;
		current_rok2++;
	} else {
		current_mc2++;
	}
	pokaz_kalendarz(current_mc2, current_rok2, 'kalendarz2', 'nast2',
			'poprz2', 'cal_nav2', 'cal2');
}
	
	
	
	function nast() {
		document.getElementById('kalendarz').innerHTML = '';
		if (current_mc == 11) {
			current_mc = 0;
			current_rok++;
		} else {
			current_mc++;
		}
	
		// if(id_cal_nav=='cal_nav')
		// pokaz_kalendarz(current_mc,current_rok);
		// pokaz_kalendarz2(current_mc,current_rok);
		// pokaz_kalendarz(current_mc,current_rok,id_k,id_nast,id_poprz,
		// id_cal_nav,id_cal);
		// if (id_cal=='cal')
		// pokaz_kalendarz(current_mc,current_rok,'kalendarz', 'cal_nav',
		// 'cal');
		// else
		// pokaz_kalendarz(current_mc,current_rok,'kalendarz2', 'cal_nav2'
		// ,'cal2');
		pokaz_kalendarz(current_mc, current_rok, 'kalendarz', 'nast', 'poprz',
				'cal_nav', 'cal');

	}
	function poprz() {
	
		document.getElementById('kalendarz').innerHTML = '';
		if (current_mc == 0) {
			current_mc = 11;
			current_rok--;
		} else {
			current_mc--;
		}
		// pokaz_kalendarz(current_mc,current_rok);
		// pokaz_kalendarz(current_mc,current_rok,id_k, id_nast, id_poprz,
		// id_cal_nav, id_cal);
		// if (id_cal=='cal')
		// pokaz_kalendarz(current_mc,current_rok);
		// else
		pokaz_kalendarz(current_mc, current_rok, 'kalendarz', 'nast', 'poprz',
				'cal_nav', 'cal');
		
	}
	
	function poprz2() {
		
		document.getElementById('kalendarz2').innerHTML = '';
		if (current_mc2 == 0) {
			current_mc2 = 11;
			current_rok2--;
		} else {
			current_mc2--;
		}
		// pokaz_kalendarz(current_mc,current_rok);
		// pokaz_kalendarz(current_mc,current_rok,id_k, id_nast, id_poprz,
		// id_cal_nav, id_cal);
		// if (id_cal=='cal')
		// pokaz_kalendarz(current_mc,current_rok);
		// else

		pokaz_kalendarz(current_mc2, current_rok2, 'kalendarz2', 'nast2',
				'poprz2', 'cal_nav2', 'cal2');
	}

	function wyswietl_cal() {
		if (document.getElementById('cal_all').style.display == "block") {
			document.getElementById('cal_all').style.display = "none";
		} else {
			document.getElementById('cal_all').style.display = "block";
		}
	}

	function wyswietl_cal2() {
		if (document.getElementById('cal_all2').style.display == "block") {
			document.getElementById('cal_all2').style.display = "none";
		} else {
			document.getElementById('cal_all2').style.display = "block";
		}
	}
	function przetworz_date(d, id_tekst) {
		if(id_tekst=='tekst')
			{
		month = current_mc / 1 + 1;
		
		 year = current_rok;
		if (month < 10)
			month = '0' + month;
		 day = d;
		if (day / 1 < 10)
			day = '0' + day;
		document.getElementById('tekst').value = day + '.' + month + '.' + year;
		document.getElementById('cal_all').style.display = "none";
		
		
	}
		else
			{
		 month2 = current_mc2 / 1 + 1;
		 year2 = current_rok2;
		if (month2 < 10)
			month2 = '0' + month2;
		 day2 = d;
		if (day2 / 1 < 10)
			day2 = '0' + day2;
		document.getElementById('tekst2').value = day2 + '.' + month2 + '.' + year2;

		document.getElementById('cal_all2').style.display = "none";

		
	}
		if (day>day2)
			alert( "Zła Data zakonczenie ");
		if (day>day2 && month>month2 && year>year2)
			alert( "Zła Data zakonczenie ");
		if (month>month2 && day>day2 )
			alert( "Zła Data zakonczenie ");
		if (month>month2  )
			alert( "Zła Data zakonczenie ");
		if (year>year2 && day>day2)
			alert( "Zła Data zakonczenie ");
		if (month>month2 && year>year2)
			alert( "Zła Data zakonczenie ");
		if (year>year2)
			alert( "Zła Data zakonczenie ");
	}
	function init(id_cal, id_k, id_nast, id_poprz, id_cal_nav, id_cal_all,
			id_tekst) {

		pokaz_kalendarz(dzis_mc, dzis_rok, id_k, id_nast, id_poprz, id_cal_nav,
				id_cal);

		if (id_cal == 'cal') {
			document.getElementById(id_cal).onclick = wyswietl_cal;
			document.getElementById(id_tekst).onclick = wyswietl_cal;
		} else {
			document.getElementById(id_cal).onclick = wyswietl_cal2;
			document.getElementById(id_tekst).onclick = wyswietl_cal2;
		}
	}


	function start() {
		init('cal', 'kalendarz', 'nast', 'poprz', 'cal_nav', 'cal_all', 'tekst');
		init('cal2', 'kalendarz2', 'nast2', 'poprz2', 'cal_nav2', 'cal_all2','tekst2');
		
	}
	window.onload = start;
})();
