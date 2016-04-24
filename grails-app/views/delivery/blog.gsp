<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="keywords" content=" ATCV-1,virus,mapbox,d3,JavaScript, clean code,infinite mind, finite mind"/>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>


    <r:layoutResources/>
    <g:external dir="css" file="blog.css"/>
    <g:javascript base="https://api.tiles.mapbox.com/" src="/mapbox.js/v1.6.2/mapbox.js"/>
    <link rel="stylesheet" href="https://api.tiles.mapbox.com/mapbox.js/v1.6.2/mapbox.css" type="text/css">
    %{--<link type="text/css" href="${resource(dir: 'css', file: 'blog.css')}" rel="stylesheet" media="screen, projection" />--}%

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-62269801-1', 'auto');
        ga('send', 'pageview');

    </script>

    <style>
    .map-container {
        position: relative;
        height: 500px;
    }

    #map01 {
        position: absolute;
        top: 0;
        bottom: 0;
        width: 100%;
        margin: 20px auto 10px auto;
    }
    .archive{

    }
    .archive-holder{
        border:0;
        padding-left:0;
    }
    .archive-elements{
        line-height: 10px;
        padding: 0 0 0 5px;
        background: #eef;
    }
    .archive-header{
        font-size: 18px;
        font-weight: bold;
        padding-left: 0;
    }
    .archive-header-holder{
        padding: 0 0 2px 0;
    }
    </style>

</head>

<body>
<script>
    (function(){
        if ("${fragment}") {
            window.location.href = '#${fragment}';
        }
    }());
</script>


<div class="container">

    <div class="blog-header">
        <h1 class="blog-title">Notes to myself</h1>

        <p class="lead blog-description">An effort to extend the time between the recently learned and soon forgotten</p>

    </div>

    <div class="row">

        <div class="col-sm-8" style="top: 65px; z-index: 1">

            <div class="btn-group pull-right" role="group" aria-label="blog">
                <a class="btn btn-default" href="<g:createLink controller='delivery' action='blogPrevMonth'
                                                               params='[year: "${year}", month: "${month}"]'/>"><span
                        class="glyphicon glyphicon-hand-left" aria-hidden="true"></span></a>
                <a class="btn btn-default" href="<g:createLink controller='delivery' action='blogNextMonth'
                                                               params='[year: "${year}", month: "${month}"]'/>"><span
                        class="glyphicon glyphicon-hand-right" aria-hidden="true"></span></a>

            </div>
        </div>

        <div class="col-sm-4">

        </div>
    </div>

    <div class="row">

        <div class="col-sm-8 blog-main">

            <g:render template="../blogEntries/d${year}_${month}"/>














            <nav>
                <ul class="pager">
                    <li><a href="<g:createLink controller='delivery' action='blogPrevMonth'
                                               params='[year: "${year}", month: "${month}"]'/>">Previous</a></li>
                    <li><a href="<g:createLink controller='delivery' action='blogNextMonth'
                                               params='[year: "${year}", month: "${month}"]'/>">Next</a></li>
                </ul>
            </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
        <h4 class="sidebar-module">Archives</h4>
            <div class="sidebar-module sidebar-module-inset">

                <div class="panel-group archive" id="accordion">
                    <div class="panel panel-default archive-holder">
                       <div class="panel-heading archive-header-holder">
                         <h4 class="panel-title archive-header">
                             <a data-toggle="collapse" data-parent="#accordion" href="#t2014nov"/>November, 2014</a>
                         </h4>
                       </div>
                        <div id="t2014nov" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                                   params='[year: "2014", month: "11", fragment: "t2014nov15"]'/>">Brain algae virus</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2014", month: "11", fragment: "t2014nov28"]'/>">Maps/open source</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2014dec"/>December, 2014</a>
                            </h4>
                        </div>
                        <div id="t2014dec" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                              params='[year: "2014", month: "12", fragment: "t2014dec26"]'/>">Clean D3 code</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2014", month: "12", fragment: "t2014dec28"]'/>">Infinite mind</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015jan"/>January, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015jan" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "01", fragment: "t2015jan04"]'/>">DIY sunburst</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "01", fragment: "t2015jan11"]'/>">Clean JavaScript?</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "01", fragment: "t2015jan18"]'/>">Chikungunya virus</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015feb"/>February, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015feb" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "02", fragment: "t2015feb8"]'/>">BRCA challenge</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "02", fragment: "t2015feb9"]'/>">Chromothripsis</a></li>
                                 </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015mar"/>March, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015mar" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "03", fragment: "t2015mar1"]'/>">DNA sequencing</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "03", fragment: "t2015mar15"]'/>">Household heating</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "03", fragment: "t2015mar30"]'/>">CRISPR evolution</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015apr"/>April, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015apr" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "04", fragment: "t2015qpr05"]'/>">Climate change</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "04", fragment: "t2015qpr26"]'/>">Antibiotic resistance</a></li>
                               </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015may"/>May, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015may" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "05", fragment: "t2015may15"]'/>">Obama's chance</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t201jun"/>June, 2015</a>
                            </h4>
                        </div>
                        <div id="t201jun" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "06", fragment: "t2015jun14"]'/>">Recent evolution</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t201jul"/>July, 2015</a>
                            </h4>
                        </div>
                        <div id="t201jul" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "07", fragment: "t2015jul03"]'/>">Obesity and diabetes</a></li>
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "07", fragment: "t2015jul28"]'/>">Clash of curves</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015aug"/>August, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015aug" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "08", fragment: "t2015aug31"]'/>">Lamarck revisited</a></li>
                                 </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015sep"/>September, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015sep" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "09", fragment: "t2015sep25"]'/>">The North Atlantic</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015oct"/>October, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015oct" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "10", fragment: "t2015oct10"]'/>">Nonuniform genome</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015nov"/>November, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015nov" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "11", fragment: "t2015nov11"]'/>">Exposed deaths</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2015dec"/>December, 2015</a>
                            </h4>
                        </div>
                        <div id="t2015dec" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2015", month: "12", fragment: "t2015dec15"]'/>">Garden of mutations</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2016jan"/>January, 2016</a>
                            </h4>
                        </div>
                        <div id="t2016jan" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2016", month: "01", fragment: "t2016jan29"]'/>">Microbiome</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2016feb"/>February, 2016</a>
                            </h4>
                        </div>
                        <div id="t2016feb" class="panel-collapse collapse">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2016", month: "02", fragment: "t2016feb27"]'/>">Evolution engine</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default archive-holder">
                        <div class="panel-heading archive-header-holder">
                            <h4 class="panel-title archive-header">
                                <a data-toggle="collapse" data-parent="#accordion" href="#t2016mar"/>March, 2016</a>
                            </h4>
                        </div>
                        <div id="t2016mar" class="panel-collapse collapse in">
                            <div class="panel-body archive-elements">
                                <ol class="list-unstyled">
                                    <li><a href="<g:createLink controller='delivery' action='blog'
                                                               params='[year: "2016", month: "03", fragment: "t2016mar21"]'/>">Personal genomics</a></li>
                                </ol>
                            </div>
                        </div>
                    </div>

                </div>





                    %{--<ol class="list-unstyled">--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2014", month: "11"]'/>">November</a>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2014", month: "11", fragment: "t2014nov15"]'/>">Brain algae virus</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2014", month: "11", fragment: "t2014nov28"]'/>">Maps / open source</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2014", month: "12"]'/>">December</a>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2014", month: "12", fragment: "t2014dec26"]'/>">Clean D3 code</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2014", month: "12", fragment: "t2014dec28"]'/>">Infinite mind</a>--}%
                        %{--</em>--}%

                        %{--</li>--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "01"]'/>">January</a>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "01", fragment: "t2015jan04"]'/>">DIY sunburst</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "01", fragment: "t2015jan11"]'/>">Clean JavaScript?</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "01", fragment: "t2015jan18"]'/>">Chikungunya virus</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "02"]'/>">February</a>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "02", fragment: "t2015feb8"]'/>">BRCA challenge</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "02", fragment: "t2015feb9"]'/>">Chromothripsis</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "03"]'/>">March</a>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "03", fragment: "t2015mar1"]'/>">DNA sequencing</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "03", fragment: "t2015mar15"]'/>">Household heating</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "03", fragment: "t2015mar30"]'/>">CRISPR evolution</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%


                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "04"]'/>">April</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "04", fragment: "t2015qpr05"]'/>">Climate change</a>--}%
                        %{--</em>--}%
                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "04", fragment: "t2015qpr26"]'/>">Antibiotic resistance</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "05"]'/>">May</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "05", fragment: "t2015may15"]'/>">Obama's chance</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%


                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "06"]'/>">June</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "06", fragment: "t2015jun14"]'/>">Recent evolution</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%


                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "07"]'/>">July</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "07", fragment: "t2015jul03"]'/>">Obesity and diabetes</a>--}%
                        %{--</em>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "07", fragment: "t2015jul28"]'/>">Clash of curves</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "08"]'/>">August</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "08", fragment: "t2015aug31"]'/>">Lamarck revisited</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "09"]'/>">September</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "09", fragment: "t2015sep25"]'/>">The North Atlantic</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "10"]'/>">October</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "10", fragment: "t2015oct10"]'/>">Nonuniform genome</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "11"]'/>">November</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "11", fragment: "t2015nov11"]'/>">Exposed deaths</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%

                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2015", month: "12"]'/>">December</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2015", month: "12", fragment: "t2015dec15"]'/>">Garden of mutations</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2016", month: "01"]'/>">January</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2016", month: "01", fragment: "t2016jan29"]'/>">Fellow travelers</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2016", month: "02"]'/>">February</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2016", month: "02", fragment: "t2016feb27"]'/>">Evolution engine</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%
                        %{--<li><a href="<g:createLink controller='delivery' action='blog'--}%
                                                   %{--params='[year: "2016", month: "03"]'/>">March</a>--}%

                            %{--<br/><em><a href="<g:createLink controller='delivery' action='blog'--}%
                                                            %{--params='[year: "2016", month: "03", fragment: "t2016mar21"]'/>">Personal genomics</a>--}%
                        %{--</em>--}%
                        %{--</li>--}%



                    %{--</ol>--}%










            </div>

            <div class="sidebar-module">
            </div>

        </div><!-- /.blog-sidebar -->

    </div>

    %{--</div><!-- /.row -->--}%

</div>

</body>
</html>
