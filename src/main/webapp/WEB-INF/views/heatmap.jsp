<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
  <head>
    <title>NBA per game performance of top 50 scorers</title>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/nba.js"/>"></script>
    <style type="text/css">

body {
  font: 12px/134% Helvetica Neue, sans-serif;
  width: 580px;
}

h1 {
  font-size: medium;
  padding-bottom: 10px;
  border-bottom: solid 1px #bbb;
}

    </style>
  </head>
  <body>
  <h1>NBA per game performance of top 50 scorers</h1>
  2008-2009 season<p>
    <script type="text/javascript">

/* Convert from tabular format to array of objects. */
var cols = nba.shift();
nba = nba.map(function(d) pv.dict(cols, function() d[this.index]));
cols.shift();

/* The color scale uses noniles per dimension. */
var fill = pv.dict(cols, function(f) pv.Scale.quantile()
    .quantiles(9)
    .domain(nba.map(function(d) d[f]))
    .range("#dee", "steelblue"));

/* The cell dimensions. */
var w = 24, h = 13;

var vis = new pv.Panel()
    .width(cols.length * w)
    .height(nba.length * h)
    .top(30.5)
    .left(100.5)
    .right(.5)
    .bottom(.5);

vis.add(pv.Panel)
    .data(cols)
    .left(function() this.index * w)
    .width(w)
  .add(pv.Panel)
    .data(nba)
    .top(function() this.index * h)
    .height(h)
    .strokeStyle("white")
    .lineWidth(1)
    .fillStyle(function(d, f) fill[f](d[f]))
    .title(function(d, f) d.Name + "'s " + f + ": " + d[f]);

vis.add(pv.Label)
    .data(cols)
    .left(function() this.index * w + w / 2)
    .top(0)
    .textAngle(-Math.PI / 2)
    .textBaseline("middle");

vis.add(pv.Label)
    .data(nba)
    .left(0)
    .top(function() this.index * h + h / 2)
    .textAlign("right")
    .textBaseline("middle")
    .text(function(d) d.Name);

vis.render();

    </script>
    <div style="text-align:right;">
      Source: <a href="http://flowingdata.com/2010/01/21/how-to-make-a-heatmap-a-quick-and-easy-solution/">FlowingData</a><br>
      Implementation: <a href="http://protovis.org">Protovis</a>
    </div>
  </body>
</html>
