<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html itemscope="" itemtype="http://schema.org/Organization" lang="en-US"><!--<![endif]-->
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- ROBOT SPEAK -->
	<meta charset="utf-8">
	<title>CS542 - NBA Database</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

	<!-- RSS -->
	<link rel="alternate" type="application/rss+xml" title="Scotch ♥ Developers bringing fire to the people." href="http://scotch.io/feed">

	<!-- MUST PLEASE EVERYONE -->
		
		
		<!-- SEARCH ENGINES -->
		<meta name="author" content="Work">
		<meta name="description" content="Content handled completely in template.">

	<!-- SCROLLS -->
	<!--[if lt IE 9]><script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Dosis:700">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Slab:300,700">
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
	<link rel="stylesheet" href="http://scotch.io/wp-content/themes/scotch/css/linecons.css">
	<link rel="stylesheet" href="http://scotch.io/wp-content/themes/scotch/css/prism-okaido.css">

	<!-- SCREEN -->
	<link rel="stylesheet" href="<c:url value="/resources/css/screen.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/table2.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/table3.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/table4.css"/>">
	<link rel="stylesheet" href="<c:url value="/resources/css/table5.css"/>">

	<!-- BEGIN UGLY WP HEAD FORMATTING -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/widgets.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/equalize.js"/>"></script>
	
	<script type="text/javascript" src="<c:url value="/resources/js/mixitup.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/work.js"/>"></script>
	
	<style type="text/css">
		.recentcomments a {
			display:inline !important;
			padding:0 !important;
			margin:0 !important;
		}
	</style>

</head>
<body class="page page-id-12 page-template page-template-page-work-php page-template page-template-page-work-php" style="" data-twttr-rendered="true">

	<nav id="big-nav" class="main-nav hidden-xs">
		<ul class="text-center">
			<li><a id="logo" href="<c:url value="index" />">NBA Analytics</a></li>
			<li><a href="<c:url value="/league" />">
				<span class="li_news"></span> Teams </a>
			</li>
			<li><a href="<c:url value="/combo" />">
				<span class="li_bulb"></span> Combos
			</a></li>
			<li><a href="<c:url value="/stats" />">
				<span class="li_diamond"></span> Cluster
			</a></li>			
			<li><a href="<c:url value="about" />">
				<span class="li_user"></span> About
			</a></li>
		</ul>
	</nav>


	<div id="main">
		<header class="visible-sm visible-md visible-lg" id="search-header">
			<div class="container">
				<div class="row">
					<div class="search-form" id="search">
						<span class="li_search"></span>
						<form action="http://scotch.io/" method="GET" name="search" role="search">
							<input type="search" name="s">
						</form>
					</div>

					<!-- TAGLINE -->
					<div id="tagline" class="col-md-4 hidden-xs hidden-sm">
						<span>Life is short, live it. Love is rare, grab it.  LET'S GO, ROCKETS!</span>
					</div>

					<!-- SOCIAL NAV -->
				
				</div>
			</div>
		</header>

		<!-- MAIN CONTENT -->
		<div id="content" class="container clearfix">
		<div class="row">
		
		

		<div>						
			<form id="clusterAnalysis">
				<label for="clusterNumber">Cluster Number: </label>
				<input type="number" name="clusterNumber" id="clusterNumber" />
				<input type="submit" value="Show Player Stats" id="submit-button" />
				<div id="loading-indicator"></div>
			</form>		
			
			<form id="filter">
				<label for="groupNumber">Group Filter:</label>
				<input type="number" name="groupNumber" id="groupNumber" />
				<input type="submit" value="Filter" id="submit-button-2" />
				<div id="loading-indicator-2"></div>
			</form>
			
			<div class="ex_highlight_row">
				<table class="sortable" id="table-container">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Group</th>									
						<th class="sorting">Name</th>
						<th class="sorting">Weight(lbs)</th>
						<th class="sorting">Height(cm)</th>
						<th class="sorting">Position</th>
						<th class="sorting">Primary Position</th>
						<th class="sorting">G</th>
						<th class="sorting">Min</th>
						<th class="sorting">Pts</th>
						<th class="sorting">FGA</th>
						<th class="sorting">FGP</th>
						<th class="sorting">3PA</th>
						<th class="sorting">3PP</th>
						<th class="sorting">FTA</th>
						<th class="sorting">FTP</th>
						<th class="sorting">AR</th>
						<th class="sorting">TOR</th>
						<th class="sorting">ORB</th>
						<th class="sorting">DRB</th>
						<th class="sorting">TRB</th>
						<th class="sorting">STL</th>
						<th class="sorting">BLK</th>
						<th class="sorting">Jersey Number</th>
						<th class="sorting">Birth of date</th>
						<th class="sorting">Birth Place</th>
					</tr>
				</thead>
				</table>
			</div>				
		</div>
		
		<div>						
			<form id="ComboAnalysis">
				<label for="ComboNumber">Combo Number: </label>
				<input type="number" name="ComboNumber" id="ComboNumber" />
				<input type="submit" value="Filter" id="submit-button" />
				<div id="loading-indicator"></div>
			</form>		
			
			
			
			<div class="ex_highlight_row">
				<table class="sortable" id="table-container1">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Combination</th>									
						<th class="sorting">Winning Ratio(%)</th>
						
					</tr>
				</thead>
				</table>
				</div>
				
				<div class="ex_highlight_row">
				<table class="sortable" id="table-container2">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Combination</th>									
						<th class="sorting">Winning Ratio(%)</th>
						
					</tr>
				</thead>
				</table>
				</div>
				
				<div class="ex_highlight_row">
				<table class="sortable" id="table-container3">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Combination</th>									
						<th class="sorting">Winning Ratio(%)</th>
						
					</tr>
				</thead>
				</table>
				</div>
				
				<div class="ex_highlight_row">
				<table class="sortable" id="table-container4">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Combination</th>									
						<th class="sorting">Winning Ratio(%)</th>
						
					</tr>
				</thead>
				</table>
				</div>
				
				<div class="ex_highlight_row">
				<table class="sortable" id="table-container5">
				<thead id="table-header-container">
					<tr>		
						<th class="sorting">Combination</th>									
						<th class="sorting">Winning Ratio(%)</th>
						
					</tr>
				</thead>
				</table>
			</div>				
		</div>
		</div><!-- .row -->
		</div><!-- #content .container -->
	</div> <!-- main -->

	<script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/nba.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/protovis.js"/>"></script>
	<script>
			$(document).ready(function(){
				
				$.getJSON('${pageContext.request.contextPath}/api/combo/', function(combos) {
					
					$("#table-container1 tbody").remove();					
					
			        for (var i = 0; i < combos.combo.length; i++) {
			            tr = $('<tr/>');			          
			            tr.append("<td>" + combos.combo[i].group + "</td>");			            
			            tr.append("<td>" + combos.combo[i].winRatio + "</td>");
			            
			            $('#table-container1').append(tr);
			        	}
										
						 for (var i = 0; i < combos.combo2.length; i++) {
					            tr = $('<tr/>');					           
					            tr.append("<td>" + combos.combo2[i].cluster1 +"  "+combos.combo2[i].cluster2+ "</td>");					            
					            tr.append("<td>" + combos.combo2[i].winRatio + "</td>");
					            
					            $('#table-container2').append(tr);
					        }
					
					
						 for (var i = 0; i < combos.combo3.length; i++) {
					            tr = $('<tr/>');					           
					            tr.append("<td>" + combos.combo3[i].cluster1 +"   "+combos.combo3[i].cluster2+"   "+combos.combo3[i].cluster3+ "</td>");					            
					            tr.append("<td>" + combos.combo3[i].winRatio + "</td>");
					            
					            $('#table-container3').append(tr);
					        }
					
					
						 for (var i = 0; i < combos.combo4.length; i++) {
					            tr = $('<tr/>');					           
					            tr.append("<td>" + combos.combo4[i].cluster1 +"   "+combos.combo4[i].cluster2+"   "+combos.combo4[i].cluster3+"   "+combos.combo4[i].cluster4+ "</td>");					            
					            tr.append("<td>" + combos.combo4[i].winRatio + "</td>");
					            
					            $('#table-container4').append(tr);
					        }
					
					
						 for (var i = 0; i < combos.combo5.length; i++) {
					            tr = $('<tr/>');					           
					            tr.append("<td>" + combos.combo5[i].cluster1 +"   "+combos.combo5[i].cluster2+"   "+combos.combo5[i].cluster3+"   "+combos.combo5[i].cluster4+"   "+combos.combo5[i].cluster5+ "</td>");					            
					            tr.append("<td>" + combos.combo5[i].winRatio + "</td>");
					            
					            $('#table-container5').append(tr);
					        }				
			        
			        if (typeof oTable1 === 'undefined') {
						oTable1 = $('#table-container1').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable1.fnDestroy();	
						oTable1.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}
			        if (typeof oTable2 === 'undefined') {
						oTable2 = $('#table-container2').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable2.fnDestroy();	
						oTable2.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}
			        if (typeof oTable3 === 'undefined') {
						oTable3 = $('#table-container3').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable3.fnDestroy();	
						oTable3.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}
			        if (typeof oTable4 === 'undefined') {
						oTable4 = $('#table-container4').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable4.fnDestroy();	
						oTable4.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}
			        if (typeof oTable5 === 'undefined') {
						oTable5 = $('#table-container5').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable5.fnDestroy();	
						oTable5.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}
			        
										
				});
				$('#table-container5').hide();
				$('#table-container4').hide();
				$('#table-container3').hide();
				$('#table-container2').hide();
				$('#table-container1').hide();
			});
			
			$('#clusterAnalysis').submit(function(e) {
				var clusterNumber = $('#clusterNumber').val();
				
				if (!clusterNumber) {
					$('#clusterNumber').focus();
				}
				$('#loading-indicator').css('display', 'inline-block');
				
				$.getJSON('${pageContext.request.contextPath}/' + 'api/cluster/' + clusterNumber, function(combo) {
					
					$("#table-container tbody").remove();					
					
					for (var i = 0; i < combo.length; i++) {
			            tr = $('<tr/>');
			            tr.append("<td>" + combo[i].v.group + "</td>");
			            tr.append("<td>" + combo[i].profile.first_name + " " + combo[i].profile.last_name + "</td>");
			            tr.append("<td>" + combo[i].profile.weight + "</td>");
			            tr.append("<td>" + (combo[i].profile.height * 2.54).toFixed(0) + "</td>");
			            tr.append("<td>" + combo[i].profile.postion + "</td>");
			            tr.append("<td>" + combo[i].profile.primary_position + "</td>");
			            tr.append("<td>" + combo[i].stats.games_played + "</td>");
			            tr.append("<td>" + (combo[i].stats.minutes / combo[i].stats.games_played).toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.pts.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.two_atts.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.two_pct.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.three_atts.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.three_pct.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.ft_atts.toFixed(2) + "</td>"); 
			            tr.append("<td>" + combo[i].v.ft_pct.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.ar.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.tor.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.or.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.dr.toFixed(2) + "</td>");
			            tr.append("<td>" + (combo[i].v.or + combo[i].v.dr).toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.stls.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].v.blks.toFixed(2) + "</td>");
			            tr.append("<td>" + combo[i].profile.jersey_number + "</td>");
			            tr.append("<td>" + combo[i].profile.birthDate + "</td>");
			            tr.append("<td>" + combo[i].profile.birth_place + "</td>");
			            
			            $('#table-container').append(tr);
			        }
			        
			        if (typeof oTable === 'undefined') {
						oTable = $('#table-container').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable.fnDestroy();	
						oTable.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}					
					
					$('#table-container').show();
					$('#loading-indicator').hide();
				});
				
				e.preventDefault(); // prevent actual form submit and page reload
			});
			
			$('#ComboAnalysis').submit(function(e) {
				var ComboNumber = $('#ComboNumber').val();
				
				if (!ComboNumber) {
					$('#ComboNumber').focus();
				}
				$('#loading-indicator').css('display', 'inline-block');
								
					if(ComboNumber==1){
						$('#table-container5').hide();
						$('#table-container4').hide();
						$('#table-container3').hide();
						$('#table-container2').hide();
						$('#table-container1').show();
					}
					else if(ComboNumber==2){
						$('#table-container5').hide();
						$('#table-container4').hide();
						$('#table-container3').hide();
						$('#table-container1').hide(); 
						$('#table-container2').show();
					}
					else if(ComboNumber==3){
						$('#table-container5').hide();
						$('#table-container4').hide();
						$('#table-container1').hide();
						$('#table-container2').hide();
						$('#table-container3').show();
					}
					else if(ComboNumber==4){
						$('#table-container5').hide();
						$('#table-container1').hide();
						$('#table-container3').hide();
						$('#table-container2').hide();
						$('#table-container4').show();
					}
					else if(ComboNumber==5){
						$('#table-container1').hide();
						$('#table-container4').hide();
						$('#table-container3').hide();
						$('#table-container2').hide();
						$('#table-container5').show();
					}
			        
			      /*  if (typeof oTable === 'undefined') {
						oTable = $('#table-container').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable.fnDestroy();	
						oTable.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}	*/			
							
				e.preventDefault(); // prevent actual form submit and page reload
			});


			$('#filter').submit(function(e) {
				var groupNumber = $('#groupNumber').val();
				if (!groupNumber) {
					$('#groupNumber').val(0);
				}
				groupNumber = $('#groupNumber').val();
				$('#loading-indicator-2').css('display', 'inline-block');
				
				$.getJSON('${pageContext.request.contextPath}/api/filter/' + groupNumber, function(combo) {
					
					$("#table-container tbody").remove();					
					
			        for (var i = 0; i < combo.length; i++) {
			            tr = $('<tr/>');
			            tr.append("<td>" + combo[i].v.group + "</td>");
			            tr.append("<td>" + combo[i].profile.first_name + " " + combo[i].profile.last_name + "</td>");
			            tr.append("<td>" + combo[i].profile.weight + "</td>");
			            tr.append("<td>" + combo[i].profile.height * 2.54 + "</td>");
			            tr.append("<td>" + combo[i].profile.postion + "</td>");
			            tr.append("<td>" + combo[i].profile.primary_position + "</td>");
			            tr.append("<td>" + combo[i].profile.jersey_number + "</td>");
			            tr.append("<td>" + combo[i].profile.birthDate + "</td>");
			            tr.append("<td>" + combo[i].profile.birth_place + "</td>");
			            tr.append("<td>" + combo[i].stats.games_played + "</td>");
			            tr.append("<td>" + combo[i].stats.minutes / combo[i].stats.games_played + "</td>");
			            tr.append("<td>" + combo[i].v.ar + "</td>");
			            tr.append("<td>" + combo[i].v.tor + "</td>");
			            tr.append("<td>" + combo[i].v.or + "</td>");
			            tr.append("<td>" + combo[i].v.dr + "</td>");
			            tr.append("<td>" + combo[i].v.stls + "</td>");
			            tr.append("<td>" + combo[i].v.blks + "</td>");
			            tr.append("<td>" + combo[i].v.two_atts + "</td>");
			            tr.append("<td>" + combo[i].v.two_pct + "</td>");
			            tr.append("<td>" + combo[i].v.three_atts + "</td>");
			            tr.append("<td>" + combo[i].v.three_pct + "</td>");
			            tr.append("<td>" + combo[i].v.ft_atts + "</td>"); 
			            tr.append("<td>" + combo[i].v.ft_pct + "</td>");
			            tr.append("<td>" + combo[i].stats.points / combo[i].stats.games_played + "</td>");

			            $('#table-container').append(tr);
			        }
			        
			        if (typeof oTable === 'undefined') {
						oTable = $('#table-container').dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					} else {
						oTable.fnDestroy();	
						oTable.dataTable({
							"bStateSave": true,
							"bPaginate": false,
							"sDom": '<"top"if>rt<"bottom"lp><"clear">',
						});
					}					
					
					$('#table-container').show();
					$('#loading-indicator-2').hide();
				});
				
				e.preventDefault(); // prevent actual form submit and page reload
			});
		</script>



<!-- SECRET LAUNCH CODES FOR DEVS -->
<!-- Easter Egg 1: aHR0cDovL3Njb3RjaC5pby/imaU= -->


</body></html>
