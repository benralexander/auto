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

    <g:layoutHead/>
</head>

<body>
<g:javascript src="lib/bootstrap.min.js" />
%{--<style>--}%
%{--.spinner {--}%
%{--position: fixed;--}%
%{--top: 2px;--}%
%{--right: 25%;--}%
%{--margin-left: 0px; /* half width of the spinner gif */--}%
%{--margin-top: 0px; /* half height of the spinner gif */--}%
%{--text-align:center;--}%
%{--z-index:1234;--}%
%{--overflow: auto;--}%
%{--width: 100px; /* width of the spinner gif */--}%
%{--height: 102px; /*hight of the spinner gif +2px to fix IE8 issue */--}%
%{--}--}%
%{--</style>--}%
<div id="spinner" class="spinner" style="display:none;">
    <img id="img-spinner" src="${resource(dir: 'images', file: 'ajaxLoadingAnimation.gif')}" alt="Loading"/>
</div>

<g:layoutBody/>

</body>
</html>