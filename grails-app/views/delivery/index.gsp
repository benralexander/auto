<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 10/25/2014
  Time: 8:55 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>


    %{--<link rel="icon" href="../../favicon.ico">--}%

    <style>
    body {background-image: url('')}
    h4 {
        margin: 20px 0px 0 0;
    }
    h4+h5 {
        margin-top: 4px;
        margin-bottom: 14px;
         }
    </style>


</head>

<body>


<div class="container">

    <div class="jumbotron">
        <h1>bovine contemplation</h1>
        <p class="lead">Not so much thinking about cows, but more an exploration of what cows think about.</p>
    </div>

    <div class="row mainnav">
        <div class="col-lg-6">
            <h4><a href='<g:createLink controller="mpg" action="mpgLinks"/>'>Medical Population Genetics</a></h4>
            <h5>Diabetes portals for the Broad Institute</h5>

            <h4><a href='<g:createLink controller="ScientificGraphics" action="index"/>'>Scientific graphics</a></h4>
            <h5>Recent scientific graphics work</h5>

            <h4><a href='<g:createLink controller="UnclassifiedGraphics" action="index"/>'>Exploratory graphics</a></h4>
            <h5>Other graphics, some still in development</h5>
        </div>

        <div class="col-lg-6">
            <h4><a href='<g:createLink controller="WebsitesILike" action="index"/>'>Websites I like</a></h4>
            <h5>Other people's websites</h5>

            <h4><a href='<g:createLink controller="SoftwareContribs" action="index"/>'>Collaborative Websites</a></h4>
            <h5>Collaborative efforts to which I have contributed</h5>

            <h4><a href='<g:createLink controller="ArtAndSocialMedia" action="index"/>'>Arts and social media</a></h4>
            <h5>All the usual links</h5>
        </div>
    </div>


</div> <!-- /container -->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
%{--<script src="js/bootstrap.min.js"></script>--}%
<g:javascript src="lib/bootstrap.js" />

<g:javascript src="lib/ie10-viewport-bug-workaround.js"/>
</body>
</html>
