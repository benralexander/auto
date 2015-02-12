<%@ page import="temporary.BuildInfo" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <r:require modules="core"/>
    <r:layoutResources/>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Ben Alexander, benralexander, benr, scientific graphics, bovine, Styrofoam heads, left nostril">
    <meta name="subject" content="software, science, graphics, diabetes, and uncategorized randomness">
    <meta name="language" content="ES">
    <meta name="description" content="Homepage for Ben Alexander">
    <meta name="author" content="Ben R Alexander">
    <meta name="url" content="http://bovinecontemplation.org">
    <meta name="identifier-URL" content="http://bovinecontemplation.org">
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-56555656-1', 'auto');
        ga('send', 'pageview');

    </script>
    %{--<link href="${resource(dir: 'images', file: 'dna_projecten.png')}"  rel="icon">--}%
    %{--<link rel="icon"   type="image/x-icon" href="${resource(dir: 'images/icons', file: 'dna-strands.ico')}">--}%
    %{--<g:external  type="image/x-icon" uri="/images/icons/favicon.ico"/>--}%
    %{--<link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'dna-strands.ico')}" type="image/x-icon" />--}%
    <link rel="Shortcut Icon" href="${resource(dir: 'images/icons', file: 'dna-strands.ico')}" type="image/x-icon" />
    <g:layoutHead/>

</head>

<body>
<g:javascript src="lib/bootstrap.min.js" />

<div id="spinner" class="spinner" style="display:none;">
    %{--<img src="${resource(dir: 'images', file: 'ajaxLoadingAnimation.gif')}" alt="Loading"/>--}%
</div>




%{--<div class="container">--}%
    %{--<div class="header" id="header">--}%
        %{--<ul class="nav nav-pills pull-right" role="tablist">--}%
            %{--<li class="active" role="presentation"><a href='<g:createLink controller="delivery" action="index"/>'>Home</a></li>--}%
            %{--<li><a href="<g:createLink controller="delivery" action="about"/>" role="presentation">About</a></li>--}%
            %{--<li><a href="<g:createLink controller="delivery" action="contact"/>" role="presentation">Contact</a></li>--}%
        %{--</ul>--}%

        %{--<h3 class="text-muted">Bovine contemplation</h3>--}%
    %{--</div>--}%
%{--</div>--}%

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<g:createLink controller="delivery" action="index"/>">bovine contemplation</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href='<g:createLink controller="delivery" action="index"/>'>Home</a>
                </li>
                <li>
                    <a href="<g:createLink controller="delivery" action="contact"/>" role="presentation">Contact</a>
                </li>
                <li>
                    <a href="<g:createLink controller="delivery" action="blog"/>" role="presentation">Blog</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


<div style="margin:50px">

</div>



<g:layoutBody/>

<div class="container">
    <div class="row">
        <div class="footer" class="pull-right">
            <div class="col-lg-9"></div>
            <div class="col-lg-3">
                <p style="font-size: 8pt">Built on ${BuildInfo?.buildHost}${BuildInfo?.buildTime}.  Version=${BuildInfo?.appVersion}.${BuildInfo?.buildNumber}</p>
            </div>

        </div>
    </div>

</div>
<g:javascript src="lib/bootstrap.js" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:javascript src="lib/ie10-viewport-bug-workaround.js"/>
<g:javascript src="lib/tooltip.js"/>
<g:javascript src="lib/popover.js"/>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip({
            delay: { show: 300, hide: 0 },
            animation: true,
            html: true
        });
        $('[data-toggle="popover"]').popover({
            animation: true,
            html: true,
            template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
        });
    });
</script>
)

</body>
</html>