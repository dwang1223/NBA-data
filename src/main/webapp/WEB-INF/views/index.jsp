<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en-US">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- ROBOT SPEAK -->
	<meta charset="utf-8">
	<title>NBA Database</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="yes" name="apple-mobile-web-app-capable">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

	<!-- RSS -->
	<link rel="alternate" type="application/rss+xml" title="Developers bringing fire to the people." href="http://scotch.io/feed">		
		
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

	<!-- BEGIN UGLY WP HEAD FORMATTING -->
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/widgets.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/equalize.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/consoleimage.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/mixitup.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/work.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/allthatpower.js"/>"></script>

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
			<li><a href="<c:url value="combo" />">
				<span class="li_bulb"></span> Combos
			</a></li>
			<li><a href="<c:url value="stats" />">
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
					

					<!-- TAGLINE -->
					<div id="tagline" class="col-md-4 hidden-xs hidden-sm">
						<span>Life is short, live it. Love is rare, grab it.  LET'S GO, ROCKETS!</span>
					</div>

				</div>
			</div>
		</header>

		<!-- MAIN CONTENT -->
		<div id="content" class="container clearfix">
		<div class="row">



			<div id="post-1158" class="col-md-6">
				<div class="article-grid">
					<a class="article-img" href="league"><img width="1200" height="500" src="<c:url value="/resources/img/team2.jpg"/>" class="img-responsive wp-post-image" alt="submitting-ajax-forms-with-jquery" /></a>
					<div class="article-cat">
						<a href="league" title="View combinations of clusters" rel="category tag">Team</a>	
					</div>

					<div class="article-grid-content">
						<h2><a href="league">View Teams</a></h2>
						<p><p>Learn more about NBA league and teams.</p></p>
					</div>
				</div>
			</div>

			<div id="post-1159" class="col-md-6">
				<div class="article-grid">
					<a class="article-img" href="stats"><img width="1200" height="500" src="<c:url value="/resources/img/player.jpg"/>" class="img-responsive wp-post-image" alt="submitting-ajax-forms-with-jquery" /></a>
					<div class="article-cat">
						<a href="stats" title="View all data in Team" rel="category tag">Cluster</a>	
					</div>

					<div class="article-grid-content">
						<h2><a href="stats">Cluster analysis</a></h2>
						<p><p>Let's explore the truth behind player statistics.</p></p>
					</div>
				</div>
			</div>


<!-- SECRET LAUNCH CODES FOR DEVS -->
<!-- Easter Egg 1: aHR0cDovL3Njb3RjaC5pby/imaU= -->

<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* first access */
       //out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /*  return the value */
       //out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>

			<div class="col-md-6" style="clear:both; align:right">
					<p>Total number of visits: <%= hitsCount%></p>
			</div>
		</div><!-- .row -->

	</div><!-- #content .container -->



</div>






</body></html>
