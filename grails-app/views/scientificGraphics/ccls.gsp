<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>

</head>

<body>
<script>


</script>


<div class="container">

    <h1>Cancer cell lines</h1>


    <div class="container linkContainerHolder">
        <div class="row">
            <p>
                The Broad Institute has been working with the NCI (National Cancer Institute) in an attempt to characterize a large number of the 949 human cancer cell lines currently available for study. Each of these cancer cell lines has been explored in terms of
                gene expression, gene copy number and somatic mutations. For more information on this project visit the <a class="standardLinks" href="http://www.broadinstitute.org/ccle">Cancer Cell Line Encyclopedia</a>.
            </p>

            <p>
                Some of the computational work has been undertaken by  Brinton Seashore-Ludlow and Matthew Rees.  Brinton worked out a nice set of hierarchical relationships between the cell lines which
                I put into the form of a sunburst visualization.  A static presentation of this hierarchy may be seen below.
            </p>

        </div>

        <div class="row" style="margin: 20px 0 20px 0">
            <r:img uri="/images/CCLsunburst.png"  width='1000' heigth='1000' class="webServerImage" alt="Cancer Cell Lines from CTD2"/>
        </div>

        <div class="row">
            <p>
                 The main motivation for reworking the interactive image into a static  form comes from the labels, which are tough to read when they are all overlapping one another. To fix this problem
                 Brinton took the raw SVG my code generated and used Adobe Illustrator  to rework
                 each of those labels, giving them all a nice, roomy place on the screen and the line linking the label to the appropriate arc.  This is the process
                 people commonly undertake to take svg image and make it suitable for publication.
            </p>

        </div>



    </div>


</div>

</body>
</html>
