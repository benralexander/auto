<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>


    <meta name="keywords" content="scientific graphics, D3, D3 examples,Sierpinski triangle,Mandelbrot set, JavaScript">
    <meta name="description" content="assorted exploratory graphics, often scientific graphics still in development">
    <title>Exploratory graphics still in development</title>


<style>
    body {background-image: url('../images/connect.png')}
</style>

</head>

<body>
<script>


</script>


<div class="container">

<h1>Exploratory graphics</h1>

    <div class="container linkContainerHolder">


        <g:linkDesc buttonName="Sierpinski" linkUrl="${grailsApplication.config.personalservercow}cookin/sierpinski">
            Here we have a JavaScript implementation that will draw multiple recursive levels of the <a class="standardLinks" href="http://en.wikipedia.org/wiki/Sierpinski_triangle">Sierpinski triangle</a>.
            I find I can't go too far before my browser runs out of memory -- maybe eight or nine levels.  Of course for good clean fun (and pedagogical potential) I prefer
            <a class="standardLinks" href="https://www.youtube.com/watch?v=DK5Z709J2eo">Vi Harts</a> presentations on the topic.
        </g:linkDesc>

        <g:linkDesc buttonName="Mandelbrot" linkUrl="${grailsApplication.config.personalservercow}cookin/mandelbrot">
            A representation of the <a class="standardLinks" href="http://en.wikipedia.org/wiki/Mandelbrot_set">Mandelbrot set</a> written using D3.  This classic of computer graphics is in fact not terribly well-suited
            to SVG output (since the image bitmapped, not vector at heart) or to JavaScript (tight loops and high-speed processing would be better).  It was a fun exercise on a rainy Sunday afternoon, however, and I present it despite its limitations.
        </g:linkDesc>

        <g:linkDesc buttonName="local thoughts" linkUrl="${grailsApplication.config.personalservercow}map/localThoughts">
            An interactive world map with a locator pin.  Place the locator wherever you like on the map and the server will pull back all tweets originating within a specified radius of that location.
        </g:linkDesc>

        <g:linkDesc buttonName="star map" linkUrl="${grailsApplication.config.personalservercow}map/fullScreen">
            A full screen celestial star map, with draggable rotation, color-coded stars, and labels over prominent heavenly bodies.  This graphic is based on D3 functionality, and was derived based on code from
            <a class="standardLinks" href="https://www.packtpub.com/web-development/mastering-d3js"> mastering D3.js</a>, Pablo Castillo's excellent book.
        </g:linkDesc>

        <g:linkDesc buttonName="patterns" linkUrl="${grailsApplication.config.personalservercow}cookin/histocruise">
            The purpose of this graphic is as follows:  put it on screen and then click the randomize button a few times.  If you're anything like me you'll start seeing patterns in the ordering of the bars even though
            the process is driven by add  decent pseudorandom generator. That's our brains in action -- we detect patterns whether they exist or not.
        </g:linkDesc>

        <g:linkDesc buttonName="force" linkUrl="${grailsApplication.config.personalservercow}curvedForce/index">
            This is a D3 force-directed graph.  I wanted to use it to represent a nonhierarchical set of network relationships but I couldn't find a way to keep the labels from the steering one another. Once I can get this one working
            I'll move it into the scientific  graphics category, but for now it's just an experiment.
        </g:linkDesc>

        <g:linkDesc buttonName="fountain" linkUrl="${grailsApplication.config.personalservercow}cookin/multiElementTransition">
            I found the core of this number fountain  in the book 'Data Visualization with D3.js Cookbook' by Nick Qi Zhu (who also did the awesome dc.js package.  Check out his work  <a class="standardLinks" href="https://github.com/NickQiZhu">here</a>.
            To me it's kind of a neat demo that could be made into something thoroughly decorative with just a little work.
        </g:linkDesc>

        <g:linkDesc buttonName="Hierarchy" linkUrl="${createLink(controller:'unclassifiedGraphics',action:'dataHierarchy')}">
            We are using a data set that can be broken down into a nested set of hierarchies. It was useful to convert into a sunburst.
        </g:linkDesc>


        <g:linkDesc buttonName="D3, JS talk" linkUrl="${createLink(controller:'unclassifiedGraphics',action:'downloadPowerpoint')}">
            I gave a talk while back regarding graphics, D3, JavaScript, and some of my notions about relevant best practices. The slides are available here.  For the full monty you can also catch the video presentation of the talk
            on my YouTube channel.
        </g:linkDesc>

        <g:linkDesc buttonName="test harness" linkUrl="${grailsApplication.config.personalservercow}">
            Here's a link to my testing website.  Some of the examples I like best already have links that you can find elsewhere on this site, but here's a link to the index page for the complete
            test harness in case anyone is interested.
        </g:linkDesc>

    </div>



</div>



</body>
</html>
