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

                <ol class="list-unstyled">
                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2014", month: "11"]'/>">November</a>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2014", month: "11", fragment: "t2014nov15"]'/>">Brain algae virus</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2014", month: "11", fragment: "t2014nov28"]'/>">Maps / open source</a>
                    </em>
                    </li>
                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2014", month: "12"]'/>">December</a>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2014", month: "12", fragment: "t2014dec26"]'/>">Clean D3 code</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2014", month: "12", fragment: "t2014dec28"]'/>">Infinite mind</a>
                    </em>

                    </li>
                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "01"]'/>">January</a>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "01", fragment: "t2015jan04"]'/>">DIY sunburst</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "01", fragment: "t2015jan11"]'/>">Clean JavaScript?</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "01", fragment: "t2015jan18"]'/>">Chikungunya virus</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "02"]'/>">February</a>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "02", fragment: "t2015feb8"]'/>">BRCA challenge</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "02", fragment: "t2015feb9"]'/>">Chromothripsis</a>
                    </em>
                   </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "03"]'/>">March</a>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "03", fragment: "t2015mar1"]'/>">DNA sequencing</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "03", fragment: "t2015mar15"]'/>">Household heating</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "03", fragment: "t2015mar30"]'/>">CRISPR evolution</a>
                    </em>
                    </li>


                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "04"]'/>">April</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "04", fragment: "t2015qpr05"]'/>">Climate change</a>
                    </em>
                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "04", fragment: "t2015qpr26"]'/>">Antibiotic resistance</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "05"]'/>">May</a>

                    <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "05", fragment: "t2015may15"]'/>">Obama's chance</a>
                    </em>
                    </li>


                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "06"]'/>">June</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "06", fragment: "t2015jun14"]'/>">Recent evolution</a>
                    </em>
                    </li>


                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "07"]'/>">July</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "07", fragment: "t2015jul03"]'/>">Obesity and diabetes</a>
                    </em>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "07", fragment: "t2015jul28"]'/>">Clash of curves</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "08"]'/>">August</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "08", fragment: "t2015aug31"]'/>">Lamarck revisited</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "09"]'/>">September</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "09", fragment: "t2015sep25"]'/>">The North Atlantic</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "10"]'/>">October</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "10", fragment: "t2015oct10"]'/>">Nonuniform genome</a>
                    </em>
                    </li>

                    <li><a href="<g:createLink controller='delivery' action='blog'
                                               params='[year: "2015", month: "11"]'/>">November</a>

                        <br/><em><a href="<g:createLink controller='delivery' action='blog'
                                                        params='[year: "2015", month: "11", fragment: "t2015nov11"]'/>">Exposed deaths</a>
                    </em>
                    </li>

                </ol>
            </div>

            <div class="sidebar-module">
            </div>

        </div><!-- /.blog-sidebar -->

    </div>

    %{--</div><!-- /.row -->--}%

</div>

</body>
</html>
