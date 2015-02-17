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

        <g:linkDesc buttonName="patterns" linkUrl="${grailsApplication.config.personalservercow}cookin/histocruise">
            The purpose of this graphic is as follows:  put it on screen and then click the randomize button a few times.  If you're anything like me you'll start seeing patterns in the ordering of the bars even though
            the process is driven by add  decent pseudorandom generator. That's our brains in action -- we detect patterns whether they exist or not.
        </g:linkDesc>

        <g:linkDesc buttonName="fountain" linkUrl="${grailsApplication.config.personalservercow}cookin/multiElementTransition">
            I found the core of this number fountain  in the book 'Data Visualization with D3.js Cookbook' by Nick Qi Zhu (who also did the awesome dc.js package.  Check out his work  <a href="https://github.com/NickQiZhu">here</a>.
            To me it's kind of a neat demo that could be made into something thoroughly decorative with just a little work.
        </g:linkDesc>

        <g:linkDesc buttonName="force" linkUrl="${grailsApplication.config.personalservercow}curvedForce/index">
            This is a D3 force-directed graph.  I wanted to use it to represent a nonhierarchical set of network relationships but I couldn't find a way to keep the labels from the steering one another. Once I can get this one working
            I'll move it into the scientific  graphics category, but for now it's just an experiment.
        </g:linkDesc>

        <g:linkDesc buttonName="map" linkUrl="${grailsApplication.config.personalservercow}map/mapbox">
            Incorporating maps into a webpage can be quite simple. There is an open source library called 'mapbox.js' which handles many of the low-level details. The example provided here comes from <a href="https://www.packtpub.com/web-development/mastering-d3js"> mastering D3.js</a>,
            a book by Pablo Castillo which I quite like.
        </g:linkDesc>

        <g:linkDesc buttonName="star map" linkUrl="${grailsApplication.config.personalservercow}map/fullScreen">
            A full screen celestial star map, with draggable rotation, color-coded stars, and labels over prominent heavenly bodies.  This graphic is based on D3 functionality, and was also derived based on code from Pablo Castillo's excellent book.
        </g:linkDesc>

        <g:linkDesc buttonName="test harness" linkUrl="${grailsApplication.config.personalservercow}">
            Here's a link to my testing website.  I have permanent links to some of the more complete examples on my testing website, but here's a link to the main page in case anyone is interested.
        </g:linkDesc>

    </div>



</div>



</body>
</html>
