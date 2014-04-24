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
			<li><a id="logo" href="<c:url value="/index" />">NBA Analytics</a></li>
			<li><a href="<c:url value="/league" />">
				<span class="li_news"></span> Teams </a>
			</li>
			<li><a href="<c:url value="/combo" />">
				<span class="li_bulb"></span> Combos
			</a></li>
			<li><a href="<c:url value="/stats" />">
				<span class="li_diamond"></span> Cluster
			</a></li>
			
			<li><a href="<c:url value="/about" />">
				<span class="li_user"></span> About
			</a></li>
		</ul>
	</nav>


	<div id="main">
		<header class="visible-sm visible-md visible-lg" id="search-header">
			<div class="container">
				<div class="row">

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

		<table class="info">
			<thead>
			<tr>
				<th>Name</th>
				<th>City</th>
				<th>Conference</th>
				<th>Division</th>
				<th>Alias</th>
				<th>Venue Name</th>
				<th>Venue Capacity</th>
				<th>Address</th>
				<th>State</th>
			</tr>
			</thead>
			<tbody>
				<tr>
					<td><c:out value="${team.name}" /></td>
					<td><c:out value="${team.city}" /></td>
					<td><c:out value="${team.conference}" /></td>
					<td><c:out value="${team.division}" /></td>
					<td><c:out value="${team.alias}" /></td>
					<td><c:out value="${team.venue_name}" /></td>
					<td><c:out value="${team.capacity}" /></td>
					<td><c:out value="${team.address}" /></td>
					<td><c:out value="${team.state}" /></td>
				</tr>
			</tbody>
		</table>
		
		</div><!-- .row -->
		
		<div>
			<table class="info">
				<thead>
				<tr>
					<th>Name</th>
					<th>Abbr</th>
					<th>Weight</th>
					<th>Height</th>
					<th>Birth Date</th>
					<th>Position</th>
					<th>Primary Position</th>
					<th>Jersey Number</th>
					<th>Birth Place</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${roster}" var="player">
					<tr>
						<td>
							<a href="${pageContext.request.contextPath}/player/<c:out value="${player.profile_id}"/>">
								<c:out value="${player.first_name} ${player.last_name}" />
							</a>
						</td>
						<td><c:out value="${player.abbr_name}" /></td>
						<td><c:out value="${player.weight}" /></td>
						<td><c:out value="${player.height}" /></td>
						<td><c:out value="${player.birthDate}" /></td>
						<td><c:out value="${player.postion}" /></td>
						<td><c:out value="${player.primary_position}" /></td>
						<td><c:out value="${player.jersey_number}" /></td>
						<td><c:out value="${player.birth_place}" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
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
				
				$.getJSON('http://localhost:8080/NBA-data/api/cluster/' + clusterNumber, function(combo) {
					
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
			            tr.append("<td>" + (combo[i].stats.minutes / combo[i].stats.games_played).toFixed(1) + "</td>");
			            tr.append("<td>" + (combo[i].stats.points / combo[i].stats.games_played).toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.two_atts.toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.two_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.three_atts.toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.three_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.ft_atts.toFixed(1) + "</td>"); 
			            tr.append("<td>" + combo[i].v.ft_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.ar.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.tor.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.or.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.dr.toFixed(3) + "</td>");
			            tr.append("<td>" + (combo[i].v.or + combo[i].v.dr).toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.stls.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.blks.toFixed(3) + "</td>");
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
				
				$.getJSON('http://localhost:8080/NBA-data/api/filter/' + groupNumber, function(combo) {
					
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
			            tr.append("<td>" + (combo[i].stats.minutes / combo[i].stats.games_played).toFixed(1) + "</td>");
			            tr.append("<td>" + (combo[i].stats.points / combo[i].stats.games_played).toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.two_atts.toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.two_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.three_atts.toFixed(1) + "</td>");
			            tr.append("<td>" + combo[i].v.three_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.ft_atts.toFixed(1) + "</td>"); 
			            tr.append("<td>" + combo[i].v.ft_pct.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.ar.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.tor.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.or.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.dr.toFixed(3) + "</td>");
			            tr.append("<td>" + (combo[i].v.or + combo[i].v.dr).toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.stls.toFixed(3) + "</td>");
			            tr.append("<td>" + combo[i].v.blks.toFixed(3) + "</td>");
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
