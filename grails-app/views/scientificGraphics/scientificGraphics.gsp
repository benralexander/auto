<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>



<meta name="keywords" content="sscientific graphics">
<meta name="description" content="Assorted scientific graphics emphasizing interactivity and D3">
<title>Scientific graphics</title>

<link rel="icon" href="${resource(dir: 'images/icons', file: 'dna-strands.ico')}" type="image/x-icon" />
<style>
body {background-image: url('../images/old_mathematics.png')}
</style>

</head>

</head>

<body>
<script>


</script>


<div class="container">

<h1>Scientific graphics</h1>


    <div class="container linkContainerHolder">


        <g:linkDesc buttonName="qq plot" linkUrl="${grailsApplication.config.personalserverbaget}qqPlot/index">
            A <a class="standardLinks" href="http://en.wikipedia.org/wiki/Q%E2%80%93Q_plot">Q-Q plot</a> written with generalized JavaScript code. I put this together as one of the initial offerings in the
            <a class="standardLinks" href="${grailsApplication.config.personalserverbaget}">BAGET project</a>, but the graphic has yet to make its way into any other production software.
        </g:linkDesc>


        <g:linkDesc buttonName="bar chart" linkUrl="${grailsApplication.config.personalserverbaget}barChart/index">
            A few different ways to use bar charts written with generalized JavaScript. This code also originated as part of the <a class="standardLinks" href="${grailsApplication.config.personalserverbaget}">BAGET project</a>,
            and is now running in MPG's <a class="standardLinks" href="http://www.type2diabetesgenetics.org/">type 2 diabetes portal</a>.
        </g:linkDesc>


        <g:linkDesc buttonName="LVH" linkUrl="${grailsApplication.config.personalservercow}veryCross/index">
              The Linked Hierarchies Visualization shown here in currently running in the <a class="standardLinks" href="https://bard.nih.gov/BARD/">BARD project</a>.  This interactive tool
            combines a pie chart-driven filtering mechanism with filters based on hierarchy membership. Combining the two
            representations allows interesting possibilities in set management.
        </g:linkDesc>

        <g:linkDesc buttonName="diamond" linkUrl="${grailsApplication.config.personalservercow}custom/custom_diamond">
            This graphic proposal was never actually implemented in production software.  That's too bad, because I still think it presents an interesting twist on the
            standard notion of comparing columns to rows in a table. In this representation everything is a row, with the diamond in the middle providing
            the outer product comparisons. The possibilities for interactivity have not been fully explored.
        </g:linkDesc>


        <g:linkDesc buttonName="Manhattan" linkUrl="${grailsApplication.config.personalserverbaget}man/manhattanPlot">
            This graphic is called a "Manhattan plot", and it is used to compare the relative impacts of different Single Nucleotide Polymorphisms on a  population broken into
            cases and controls on the basis of phenotype.  This graphic will eventually be deployed on the Diabetes Portal, though this version still needs work.
            The challenge with these plots is the large number of points, which can push up against client memory limits (though not in this toy example).
        </g:linkDesc>

        <g:linkDesc buttonName="Trait SNPs" linkUrl="${grailsApplication.config.personalserverbaget}crossMap/crossTrait">
            This graphic I developed only recently for the diabetes portal. The goal is to take a specified portion of the genome and display a cross-section of
            Single Nucleotide Polymorphisms (SNPs) associated with various traits which bear relevance to diabetes. The size and direction of effect are also indicated,
            so that you might look for dependencies between the traits.  I've added this to the  <a class="standardLinks" href="${grailsApplication.config.personalserverbaget}">BAGET project</a>.
        </g:linkDesc>

        <g:linkDesc buttonName="box whisker 2" linkUrl="${grailsApplication.config.personalserverbaget}boxWhisker/index">
            Here's a version of the box whisker that I'm still working on. The idea is to provide a representation of the data distribution within each box
            by superimposing a histogram along the vertical axis. I've move this new version into the <a class="standardLinks" href="${grailsApplication.config.personalserverbaget}">BAGET project</a>,
            though it is not yet running in any production environment (it still needs work).
        </g:linkDesc>

        <g:linkDesc buttonName="dose resp." linkUrl="${grailsApplication.config.personalservercow}box/doseResponse">
            Here is a dose response curve also used as a part of the <a class="standardLinks" href="http://www.broadinstitute.org/ctrp.v2/">CTRP project</a> .
            This one uses a log scale on the x-axis and includes error bars on the points. The curve is provided by the server in the form of the four
            standard logistic parameters. The JavaScript code then uses these parameters to generate the curve (which is supposed to match the points, though
            the regression analysis in this example looks suspect).
        </g:linkDesc>

        <g:linkDesc buttonName="jqGrid" linkUrl="${grailsApplication.config.personalservercow}jqgrid/index">
            I wanted to implement a molecular spreadsheet with virtual scrolling -- that is, instead of moving page to page through multiple entries (while
            data are pulled from the backend behind the scenes via Ajax).  I used a library called  <a class="standardLinks" href="https://github.com/mleibman/SlickGrid/wiki">jqgrid</a>
            which unfortunately had a bug
            that caused the screen to occasionally go blank while scrolling.
            That's a shame, because in every other way jqgrid is a  nice JavaScript library.
        </g:linkDesc>

        <g:linkDesc buttonName="slick grid" linkUrl="${grailsApplication.config.personalservercow}slick/index">
            Here is a molecular spreadsheet made instead with a JavaScript library called  <a class="standardLinks" href="https://github.com/mleibman/SlickGrid/wiki">slick grid</a>.
            We eventually abandoned the Bart Premium project, but not before I made a working version of this spreadsheet with virtual scrolling. It could be prettier, but it works,
            and it doesn't have the unreliability I found in the jqgrid library.
        </g:linkDesc>

        <g:linkDesc buttonName="MLP sunburst" linkUrl="${grailsApplication.config.personalservercow}probe/probe_targets">
            Here is a presentation that shows the protein classes for every molecule we pushed forward as a probe as part of the
            <a class="standardLinks" href="http://mli.nih.gov/mli/">Molecular Library  Program</a>. The publication has made it past the referees, and will allegedly appeared in Cell in April 2015.  The graphic is live and interactive.
        </g:linkDesc>

        <g:linkDesc buttonName="CTD sunburst" linkUrl="${createLink(controller:'ScientificGraphics', action: 'ccls')}">
            Here is another Sunburst, this time characterizing the relationship between in 860 different cancer cell lines.
            This one arose out of the <a class="standardLinks" href="https://github.com/mleibman/SlickGrid/wiki">CTD2 project</a>, which was also
            the sponsoring project for the CTRP project mentioned above.  In this case the graphic is not interactive, but instead a static image.
        </g:linkDesc>

        <g:linkDesc buttonName="DIY sunburst" linkUrl="${grailsApplication.config.personalservercow}probe/uploadPrep">
            Here is one last Sunburst, this one different from the others in that you can supply your own data. in principle this process should be applicable
            to any strictly hierarchical data, limited only by screen real estate. I provide some additional information in this
            <a class="standardLinks" href="<g:createLink controller='delivery' action='blog' params='[year:"2015",month:"01", fragment: "t2015jan04"]'/>">blog post</a>.
        </g:linkDesc>

        <g:linkDesc buttonName="box whisker" linkUrl="${grailsApplication.config.personalservercow}box/index">
            Here is an  interactive box whisker display that is currently part of the <a class="standardLinks" href="http://www.broadinstitute.org/ctrp.v2/">CTRP project</a>.
            The slider allows the user to define a  multiplier of the interquartile (Q3 - Q1) distance as a way of dynamically adjusting the whisker size.
        </g:linkDesc>

        <g:linkDesc buttonName="scatter plot" linkUrl="${grailsApplication.config.personalservercow}box/scatter">
            Here is a simple scatter plot also used as a part of the <a class="standardLinks" href="http://www.broadinstitute.org/ctrp.v2/">CTRP project</a> .
            Other than the  tooltip over the data points there's no particular interactivity in this example ( though in the live software clicking on the dots
            brings up the matched dose response curve )
        </g:linkDesc>

        <g:linkDesc buttonName="histogram" linkUrl="${grailsApplication.config.personalservercow}histogram/histogram">
            This was a graphic I originally wrote for Bard (go to the  <a class="standardLinks" href="https://bard.nih.gov/BARD/bardWebInterface/index">actual software</a> to see the graphic in action.
            In fact the backend passes the browser a series of specifications for the individual bins, so  from the perspective of the JavaScript it's really just a bar chart,  but the backend is
            passing the information necessary to present a distribution on-screen.
        </g:linkDesc>




    </div>


    </div>

</body>
</html>
