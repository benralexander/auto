<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>


    %{--<link rel="icon" href="../../favicon.ico">--}%

    <style>
    body {background-image: url('../images/light_noise_diagonal.png')}
    </style>


    <meta name="keywords" content="Broad Institute, medical population genetics">
    <meta name="description" content="Assorted websites with software engineering by Ben Alexander">
    <title>Assorted websites with software engineering by Ben Alexander</title>


</head>

<body>
<script>


</script>


<div class="container">

<h1>Packages to which I have contributed software</h1>



    <div class="container linkContainerHolder">


        <g:linkDesc buttonName="BARD" linkUrl="https://bard.nih.gov/BARD/">
            I spent quite a bit of time over a couple of years working on this package, as did 10 - 20 other software engineers across five other institutions (though the majority of the
           software was written at the <a class="standardLinks" href="https://www.broadinstitute.org/">Broad Institute</a>. My work included most of the graphics, the molecular spreadsheet,
           assorted UI development, as well as a fair bit of architectural development.
        </g:linkDesc>

        <g:linkDesc buttonName="Firebrowse" linkUrl="http://firebrowse.org/viewGene.html?egfr">
            In this case I integrated a graphical widget which was in fact written by a different engineer (Kane Hadley).  The purpose of this plot is to show the relative degree of expression
            for a single gene across multiple tissue types in both cancerous and noncancerous conditions. The data come from the well known
            <a class="standardLinks" href="http://www.gtexportal.org/home/">GTEX project</a>
        </g:linkDesc>

        <g:linkDesc buttonName="CTRP" linkUrl="http://www.broadinstitute.org/ctrp.v2/">
            The Cancer Therapeutics Response Portal,  which attempts to draw conclusions about the impact  of a select set of small molecules on a large number of different cancer subtypes.  My work
            on this project was mostly limited to graphics development.  Note that an earlier version of the <a class="standardLinks" href="http://www.broadinstitute.org/ctrp.v1/">portal</a> also exists
            (for which I did nothing at all).
        </g:linkDesc>

        <g:linkDesc buttonName="Chalice" linkUrl="http://cwr.horizondiscovery.com/slides/index.html">
            I originally created a software package called "Chalice" back in 2004 for the company then called  'CombinatoRx'.  I later parted ways with this little Boston-based startup company but they retained the software I had written
            for them and in fact they eventually pushed it forward quite a bit, so I can now claim no more than partial authorship the software as it stands now.
        </g:linkDesc>


    </div>



</div>



</body>
</html>
