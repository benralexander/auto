<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<html>
<head>
<title>${grailsApplication.config.site.title}</title>

    <r:require modules="core"/>
    <r:layoutResources/>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Ben's homepage">
    <meta name="author" content="Ben R Alexander">

    <g:layoutHead/>

</head>

<body>
<g:javascript src="lib/bootstrap.min.js" />

<div id="spinner" class="spinner" style="display:none;">
    <img id="img-spinner" src="${resource(dir: 'images', file: 'ajaxLoadingAnimation.gif')}" alt="Loading"/>
</div>

<div class="container">
    <div class="header" id="header">
        <ul class="nav nav-pills pull-right" role="tablist">
            <li class="active" role="presentation"><a
                    href='<g:createLink controller="delivery" action="index"/>'>Home</a></li>
            <li><a href="#" role="presentation">About</a></li>
            <li><a href="#" role="presentation">Contact</a></li>
        </ul>

        <h3 class="text-muted">Bovine contemplation</h3>
    </div>
</div>

<g:layoutBody/>

<div class="container">

    <div class="footer">
        <p>BA 2014</p>
    </div>

</div>
<g:javascript src="lib/bootstrap.js" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<g:javascript src="lib/ie10-viewport-bug-workaround.js"/>

</body>
</html>