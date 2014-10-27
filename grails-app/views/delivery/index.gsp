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
    %{--<%--}%
    %{--RestServerService   restServerService = grailsApplication.classLoader.loadClass('dport.RestServerService').newInstance()--}%
    %{--%>--}%
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    %{--<link rel="icon" href="../../favicon.ico">--}%

    <title>Cover Template for Bootstrap</title>

 </head>

<body>

%{--<g:javascript src="lib/bootstrap.js" />--}%

%{--<div class="site-wrapper">--}%

    %{--<div class="site-wrapper-inner">--}%

        %{--<div class="cover-container">--}%

            %{--<div class="masthead clearfix">--}%
                %{--<div class="inner">--}%
                    %{--<h3 class="masthead-brand">Cover</h3>--}%
                    %{--<ul class="nav masthead-nav">--}%
                        %{--<li class="active"><a href="#">Home</a></li>--}%
                        %{--<li><a href="#">Features</a></li>--}%
                        %{--<li><a href="#">Contact</a></li>--}%
                    %{--</ul>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="inner cover">--}%
                %{--<h1 class="cover-heading">Cover your page.</h1>--}%
                %{--<p class="lead">Cover is a one-page template for building simple and beautiful home pages. Download, edit the text, and add your own fullscreen background photo to make it your own.</p>--}%
                %{--<p class="lead">--}%
                    %{--<a href="#" class="btn btn-lg btn-default">Learn more</a>--}%
                %{--</p>--}%
            %{--</div>--}%

            %{--<div class="mastfoot">--}%
                %{--<div class="inner">--}%
                    %{--<p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>--}%
                %{--</div>--}%
            %{--</div>--}%

        %{--</div>--}%

    %{--</div>--}%
 %{--</div>--}%
%{--</div>--}%





<div class="container">
    <div class="header">
        <ul class="nav nav-pills pull-right">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
        <h3 class="text-muted">Project name</h3>
    </div>

    <div class="jumbotron">
        <h1>Jumbotron heading</h1>
        <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
    </div>

    <div class="row marketing">
        <div class="col-lg-6">
            <h4>Subheading</h4>
            <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

            <h4>Subheading</h4>
            <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

            <h4>Subheading</h4>
            <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>

        <div class="col-lg-6">
            <h4>Subheading</h4>
            <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

            <h4>Subheading</h4>
            <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

            <h4>Subheading</h4>
            <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
        </div>
    </div>

    <div class="footer">
        <p>&copy; Company 2014</p>
    </div>

</div> <!-- /container -->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
%{--<script src="js/bootstrap.min.js"></script>--}%
<g:javascript src="lib/bootstrap.js" />
</body>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
%{--<g:javascript src="bootstrap.min.js" />--}%
%{--<g:javascript src="lib/jquery-1.11.0.min.js"/>--}%
%{--<g:javascript src="lib/docs.min.js"/>--}%
<g:javascript src="lib/ie10-viewport-bug-workaround.js"/>
</body>
</html>
