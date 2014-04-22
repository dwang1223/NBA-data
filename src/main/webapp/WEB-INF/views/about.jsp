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
			<li><a href="<c:url value="league" />">
				<span class="li_news"></span> Teams </a>
			</li>
			<li><a href="<c:url value="/combo" />">
				<span class="li_bulb"></span> Combos
			</a></li>
			<li><a href="<c:url value="stats" />">
				<span class="li_diamond"></span> Cluster
			</a></li>
			
			<li><a href="#">
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
		
		<div style="clear:both;margin:20px">
			<h3><a href="https://github.com/DiWang1223/NBA-data">Github</a></h3>
		</div>
		
		<div id="dwang" style="float:left; margin-left:20px;">
			<img width="200px" src="<c:url value="/resources/img/dwang.png"/>"></img>
			<table style="text-align:center">
				<tr>
					<td>Name:</td>
					<td>Di Wang</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><a href="mailto:dwang@wpi.edu">dwang@wpi.edu</a></td>
				</tr>
			</table>
		</div>
		<div id="ylu" style="float:left; margin-left:20px;">
			<img width="200px" src="<c:url value="/resources/img/ylu.png"/>"></img>
			<table style="text-align:center">
				<tr>
					<td>Name:</td>
					<td>Yang Lu</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><a href="mailto:ylu5@wpi.edu">ylu5@wpi.edu</a></td>
				</tr>
			</table>
		</div>
		<div id="yli" style="float:left; margin-left:20px;">
			<img width="200px" src="<c:url value="/resources/img/yli.png"/>"></img>
			<table style="text-align:center">
				<tr>
					<td>Name:</td>
					<td>Yajing Li</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><a href="mailto:yli11@wpi.edu">yli11@wpi.edu</a></td>
				</tr>
			</table>
		</div>
		
		
		
		</div><!-- .row -->
		</div><!-- #content .container -->
	</div> <!-- main -->

	<script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/nba.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/protovis.js"/>"></script>
	<script>
				
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


			$('#filter').submit(function(e) {
				var groupNumber = $('#groupNumber').val();
				if (!groupNumber) {
					$('#groupNumber').val(0);
				}
				groupNumber = $('#groupNumber').val();
				$('#loading-indicator-2').css('display', 'inline-block');
				
				$.getJSON('${pageContext.request.contextPath}/' + 'api/filter/' + groupNumber, function(combo) {
					
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
					$('#loading-indicator-2').hide();
				});
				
				e.preventDefault(); // prevent actual form submit and page reload
			});
		</script>



<!-- SECRET LAUNCH CODES FOR DEVS -->
<!-- Easter Egg 1: aHR0cDovL3Njb3RjaC5pby/imaU= -->


</body></html>
