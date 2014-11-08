<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>


    %{--<link rel="icon" href="../../favicon.ico">--}%

</head>

<body>
<script>


</script>


<div class="container">

<h1>Scientific graphics</h1>


    <div class="container linkContainerHolder">


        <g:linkDesc buttonName="qq plot" linkUrl="http://baget-prod.elasticbeanstalk.com/qqPlot/index">
            A Q-Q written with generalized JavaScript code. I put this together as one of the initial offerings in the <a class="standardLinks" href="http://bagetsoftware.org">BAGET project</a>
        </g:linkDesc>


        <g:linkDesc buttonName="bar chart" linkUrl="http://baget-prod.elasticbeanstalk.com/barChart/index">
            A few different ways to use bar charts written with generalized JavaScript. Also part of the <a class="standardLinks" href="http://bagetsoftware.org">BAGET project</a>.
        </g:linkDesc>

        <g:linkDesc buttonName="LVH" linkUrl="http://graphicsdemo.elasticbeanstalk.com/veryCross/index">
              The core code used in the Linked Hierarchies Visualization in the <a class="standardLinks" href="https://bard.nih.gov/BARD/">BARD project</a>.  This interactive tool
            combines a simple, pi chart-driven filtering mechanism with a drill down that can filter based on hierarchy membership. Traversing between the two
            representations presents interesting possibilities  in set management.
        </g:linkDesc>

        <g:linkDesc buttonName="diamond" linkUrl="http://graphicsdemo.elasticbeanstalk.com/custom/custom_diamond">
            This proposal was never implemented in production software.  That's too bad, because I still think it presents an interesting twist on the
            standard notionof comparing columns to rows in a table. In this representation everything is a row, with the diamond in the middle providing
            the outer product comparisons.
        </g:linkDesc>

        <g:linkDesc buttonName="box whisker" linkUrl="http://graphicsdemo.elasticbeanstalk.com/box/index">
             Here is an  interactive box whisker display that is currently part of the <a class="standardLinks" href="http://www.broadinstitute.org/ctrp.v2/">CTRP project</a>.
            The slider allows the user to define a  multiplier of the interquartile (Q3 - Q1) distance as a way of dynamically adjusting the whisker size.
        </g:linkDesc>

        <g:linkDesc buttonName="jqGrid" linkUrl="http://graphicsdemo.elasticbeanstalk.com/jqgrid/index">
            I wanted to implement a molecular spreadsheet with virtual scrolling -- that is, instead of moving page to page through multiple entries (while
            data are pulled from the backend behind the scenes via Ajax).  I used a library called  <a class="standardLinks" href="https://github.com/mleibman/SlickGrid/wiki">jqgrid</a>
            which unfortunately had a bug
            that caused the screen to occasionally go blank while scrolling.
            That's a shame, because in every other way jqgrid is a  nice library.
        </g:linkDesc>

        <g:linkDesc buttonName="slick grid" linkUrl="http://graphicsdemo.elasticbeanstalk.com/slick/index">
            Here is a molecular spreadsheet made instead with a JavaScript library called  <a class="standardLinks" href="https://github.com/mleibman/SlickGrid/wiki">slick grid</a>.
            We eventually abandoned the project, but nnot before I made a working version of this spreadsheet with virtual scrolling. It could be prettier, but it definitely works.
        </g:linkDesc>

        <g:linkDesc buttonName="sunburst" linkUrl="http://graphicsdemo.elasticbeanstalk.com/probe/probe_targets">
             Here is a presentation that shows the protein classes for every molecule we pushed forward as a probe as part of the
            <a class="standardLinks" href="http://mli.nih.gov/mli/">Molecular Library  Program</a>, which was
            a focus for much of the work I did over in the Chemical Biology platform in 2011 and 2012.
        </g:linkDesc>






    </div>


    </div>

</div>

</body>
</html>
