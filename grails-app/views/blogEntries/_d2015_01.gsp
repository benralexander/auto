<h2 class="blog-month-leader">January, 2015</h2>

<div class="blog-post">

    <script>

    </script>
    <style>

    path {
        stroke: #fff;
        fill-rule: evenodd;
    }

    </style>


    <h2 class="blog-post-title"><a name="t2015jan04">DIY sunburst</a></h2>

    <p class="blog-post-meta">January 10, 2015</p>


    <p>Sunburst visualizations can be visually appealing. The idea of the sunburst chart is one of nested pie charts, with adjacent rings
        implying connections within each arc, as suggested by the coloring of the example below (one of Bostock's many <a href="See http://bl.ocks.org/mbostock/4348373">examples</a>.)
        In addition to the rich network of associations suggested by a visual inspection of the graphic, note that clicking on any of the individual subsections
        will allow you to zoom in to view only that subsection and its children, ignoring everything else in the plot. (Click on the center to reset the original display.)
    </p>
    <div id="graphicHere"></div>
    <script>
        var width = 700,
                height = 500,
                radius = Math.min(width, height) / 2;

        var x = d3.scale.linear()
                .range([0, 2 * Math.PI]);

        var y = d3.scale.sqrt()
                .range([0, radius]);

        var color = d3.scale.category20c();

        var svg = d3.select("#graphicHere").append("svg")
                .attr("width", width)
                .attr("height", height)
                .append("g")
                .attr("transform", "translate(" + width / 2 + "," + (height / 2 + 10) + ")");

        var partition = d3.layout.partition()
                .value(function(d) { return d.size; });

        var arc = d3.svg.arc()
                .startAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x))); })
                .endAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x + d.dx))); })
                .innerRadius(function(d) { return Math.max(0, y(d.y)); })
                .outerRadius(function(d) { return Math.max(0, y(d.y + d.dy)); });

        d3.json("${createLink(action:'retrieveJson')}", function(error, root) {
            var path = svg.selectAll("path")
                    .data(partition.nodes(root))
                    .enter().append("path")
                    .attr("d", arc)
                    .style("fill", function(d) { return color((d.children ? d : d.parent).name); })
                    .on("click", click);

            function click(d) {
                path.transition()
                        .duration(750)
                        .attrTween("d", arcTween(d));
            }
        });

        d3.select(self.frameElement).style("height", height + "px");

        // Interpolate the scales!
        function arcTween(d) {
            var xd = d3.interpolate(x.domain(), [d.x, d.x + d.dx]),
                    yd = d3.interpolate(y.domain(), [d.y, 1]),
                    yr = d3.interpolate(y.range(), [d.y ? 20 : 0, radius]);
            return function(d, i) {
                return i
                        ? function(t) { return arc(d); }
                        : function(t) { x.domain(xd(t)); y.domain(yd(t)).range(yr(t)); return arc(d); };
            };
        }


    </script>

     <div class="pull-right"></div>

    <p>This is all great, but the challenge for anyone wanting to utilize a sunburst is that this complex, hierarchical visual representation requires a complex, hierarchical JSON-based data structure.
      Therefore even if you have a good reason for such an illustration and good underlying data, you have to build up a structure in legal JSON bbefore you can
        consider using some borrowed D3 code to create the picture in your webpage.  When I was  drawing a similar picture for someone recently I asked her to put her data
        into a structure that is fundamentally linear, but which is then converted internally into the necessary hierarchical structure. In case anyone else could use such a capability
        I'll include a link to the operational web-based server below.
    </p>


    <p>Note: that there is still no getting away from generating legal JSON -- all I'm claiming is that this new structure might be a little easier to generate.   This new approach
        requires two files; one containing the name of every distinct subsection, and the other using a series of strings delimited by periods that describes exactly how those subsections
        are related to one another.      The first file I'll call 'categories', and here's an example of how it might look:
    </p>
    <pre>
    [
        {"index":"1","name":"protein"},
        {"index":"2","name":"chaperone"},
        {"index":"3","name":"cytoskeletal protein"},
        {"index":"4","name":"enzyme modulator"},
        {"index":"5","name":"kinase"}
    ]
    </pre>
    <p>
        This file should have one line for every single subsection in the graphic. Each subsection should have an index number ( they don't have to be sequential) and a name ( which will show up
        in the final graphic).
    </p>

    <p>The second file  is called 'elements' and it consists of references to the index numbers in the categories file. Here's an example of how it might look:</p>
    <pre>
    [
        {"hierarchy":"1"},
        {"hierarchy":"1.2"},
        {"hierarchy":"1.3"},
        {"hierarchy":"1.5"},
        {"hierarchy":"1.5.4"},
        {"hierarchy":"1.5.4"}
    ]
    </pre>
    <p>
        The idea is that numbers on the left side of the numeric string with periods refer to  inner rings in the sunburst, while the numbers later in the string refer to rings progressively further to the outside of the sunburst. In the example above
        the Sunburst would have one root element at the very center,  three elements in the surrounding ring, with one of those subsections having two children and the other subsection having one.  Repetitions numerical sequences are okay,
        and they simply indicate that there is another instance of a particular category (  and that the specified arc should therefore be proportionally bigger).
    </p>


<p><strong>Here is the graphic the program created when I fed the contents of the above two files in through the user interface:</strong></p>


<div id="sunburstdiv">
    <svg width="920" height="900"><g transform="translate(450,350)"><path d="M0,175A175,175 0 1,1 0,-175A175,175 0 1,1 0,175Z" id="protein" class="indicateZoomIn" style="stroke: rgb(0, 0, 0); stroke-width: 1px; fill: rgb(49, 130, 189); fill-opacity: 1;"></path><path d="M-303.10889132455367,-174.99999999999977A350,350 0 0,1 -3.7515640385027986e-13,-350L-1.8757820192513993e-13,-175A175,175 0 0,0 -151.55444566227683,-87.49999999999989Z" id="chaperone" class="indicateZoomIn" style="stroke: rgb(0, 0, 0); stroke-width: 1px; fill: rgb(107, 174, 214); fill-opacity: 1;"></path><path d="M-454.6633369868305,-262.49999999999966A525,525 0 0,1 -5.627346057754198e-13,-525L-3.7515640385027986e-13,-350A350,350 0 0,0 -303.10889132455367,-174.99999999999977Z" id="zzull39" class="indicateZoomIn" style="stroke: rgb(255, 255, 255); stroke-width: 0px; fill: rgb(255, 255, 255); fill-opacity: 1;"></path><path d="M-303.1088913245535,175.0000000000001A350,350 0 0,1 -303.10889132455367,-174.99999999999977L-151.55444566227683,-87.49999999999989A175,175 0 0,0 -151.55444566227675,87.50000000000006Z" id="cytoskeletal_protein" class="indicateZoomIn" style="stroke: rgb(0, 0, 0); stroke-width: 1px; fill: rgb(158, 202, 225); fill-opacity: 1;"></path><path d="M-454.6633369868302,262.50000000000017A525,525 0 0,1 -454.6633369868305,-262.49999999999966L-303.10889132455367,-174.99999999999977A350,350 0 0,0 -303.1088913245535,175.0000000000001Z" id="zzull40" class="indicateZoomIn" style="stroke: rgb(255, 255, 255); stroke-width: 0px; fill: rgb(255, 255, 255); fill-opacity: 1;"></path><path d="M303.1088913245535,-175A350,350 0 1,1 -303.1088913245535,175.0000000000001L-151.55444566227675,87.50000000000006A175,175 0 1,0 151.55444566227675,-87.5Z" id="kinase" class="indicateZoomIn" style="stroke: rgb(0, 0, 0); stroke-width: 1px; fill: rgb(198, 219, 239); fill-opacity: 1;"></path><path d="M454.6633369868303,262.4999999999999A525,525 0 0,1 -454.6633369868302,262.50000000000017L-303.1088913245535,175.0000000000001A350,350 0 0,0 303.10889132455355,174.99999999999994Z" id="enzyme_modulator" class="indicateZoomIn" style="stroke: rgb(0, 0, 0); stroke-width: 1px; fill: rgb(230, 85, 13); fill-opacity: 1;"></path><path d="M606.2177826491071,349.9999999999999A700,700 0 0,1 -606.217782649107,350.0000000000002L-454.6633369868302,262.50000000000017A525,525 0 0,0 454.6633369868303,262.4999999999999Z" id="zzull41" class="indicateZoomIn" style="stroke: rgb(255, 255, 255); stroke-width: 0px; fill: rgb(255, 255, 255); fill-opacity: 1;"></path><path d="M454.66333698683025,-262.5A525,525 0 0,1 454.6633369868303,262.4999999999999L303.10889132455355,174.99999999999994A350,350 0 0,0 303.1088913245535,-175Z" id="zzull42" class="indicateZoomIn" style="stroke: rgb(255, 255, 255); stroke-width: 0px; fill: rgb(255, 255, 255); fill-opacity: 1;"></path><path d="M2.1431318985078682e-14,-350A350,350 0 0,1 303.1088913245535,-175L151.55444566227675,-87.5A175,175 0 0,0 1.0715659492539341e-14,-175Z" id="zzull43" class="indicateZoomIn" style="stroke: rgb(255, 255, 255); stroke-width: 0px; fill: rgb(255, 255, 255); fill-opacity: 1;"></path><text text-anchor="start" dy=".2em" transform="rotate(90)translate(5)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(0, 0, 0);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="start" dy=".2em" transform="rotate(-60)translate(180)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(255, 255, 255);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="start" dy=".2em" transform="rotate(59.99999999999997)translate(180)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(0, 0, 0);"><tspan x="0">kinase</tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="start" dy=".2em" transform="rotate(0)translate(355)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(255, 255, 255);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="start" dy=".2em" transform="rotate(89.5)translate(355)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(0, 0, 0);"><tspan x="0">enzyme</tspan><tspan x="0" dy="1em">modulator</tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="start" dy=".2em" transform="rotate(90)translate(530)rotate(0)" style="fill-opacity: 1; pointer-events: none; fill: rgb(255, 255, 255);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="end" dy=".2em" transform="rotate(179.5)translate(180)rotate(-180)" style="fill-opacity: 1; pointer-events: none; fill: rgb(0, 0, 0);"><tspan x="0">cytoskeletal</tspan><tspan x="0" dy="1em">protein</tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="end" dy=".2em" transform="rotate(180)translate(355)rotate(-180)" style="fill-opacity: 1; pointer-events: none; fill: rgb(255, 255, 255);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="end" dy=".2em" transform="rotate(239.99999999999994)translate(180)rotate(-180)" style="fill-opacity: 1; pointer-events: none; fill: rgb(0, 0, 0);"><tspan x="0">chaperone</tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text><text text-anchor="end" dy=".2em" transform="rotate(239.99999999999994)translate(355)rotate(-180)" style="fill-opacity: 1; pointer-events: none; fill: rgb(255, 255, 255);"><tspan x="0"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan><tspan x="0" dy="1em"></tspan></text></g></svg></div>

     <p>
         Three cautions: <ul>
    <li>every number referenced in the elements file must correspond to an index in the categories file, or else the results will be unpredictable.</li>
    <li>The resulting data structure is strictly hierarchical, which means every child can only have one parent ( the parents can of course have multiple children).
    If you go ahead and connect a child index to multiple parent indices then the software will assume that the children are distinct copies of one another.  You could end up
    with more children arcs that way than you expected.</li>
    <li> you should probably provide a common index (in the example above its index 1) from which all other arcs to send, since that approach tells the program explicitly how the whole picture should fit together</li>
</ul>
     </p>



<p>
    Here is the link <a href='http://graphicscow.com/probe/uploadPrep'>http://graphicscow.com/probe/uploadPrep</a>.  Give it a try if you like, and if you come up with any especially interesting
    sunburst graphics then I would love to receive a copy of your data set ( use the 'contact' link) and see the picture for myself. Thanks!
</p>


</div><!-- /.blog-post -->


<div class="blog-post">


    <h2 class="blog-post-title"><a name="t2015jan11">How clean is your JavaScript?</a></h2>

    <p class="blog-post-meta">January 11, 2015</p>

    <p><em>[incomplete]</em></p>

    <p>JavaScript  as a language  has undergone a vast surge in popularity over the past few years.  As recently as five years ago
    the language was despised by many (including me) as unreliable and filled with browser dependent peculiarities.
    Furthermore I would've claimed at that time that writing any sort of a large project in JavaScript would've been
    a frustrating and probably futile effort, since the lack of an object orientation led inevitably
    to poorly structured and fundamentally unmaintainable code.  My, how things have changed.
    ECMA 5 has brought reliable standardization across browsers, JavaScript has become the principal
     tool for giving websites interactivity, and people (including me again) are finally learning to use the
     language in a way that makes large-scale software development quite feasible.
    </p>

    <p>The language is still loosely typed, of course, and makes no claims about object orientation. The trick,
    therefore,  is to adopt language patterns well-suited to Java's  functional nature. I thought I'd sketch out
    a few of my favorites.  Like all software patterns the ones I'll cite here are in wide use, whether
    with explicit intentionality or not.   I'll provide references when possible, but some of these patterns come from
    the JavaScript zeitgeist and aren't ( to my knowledge) attributable to any one author.</p>

    <p>The goal of this exercise is simply stated:  we seek to make computer code as simple as it can possibly be.
    Can we categorize approaches to achieving simplicity, I wonder?
    <ul>
    <li>module interfaces should be expressed with very few functions</li>
    </ul>
    </p>

     <p>Pattern 1: explicitly identifying publicly accessible interface functions.  Here is my preferred approach:
     <pre>
          var myFunctionName = function (argument1) {

           var privateFunction = (function () {
             return 1;
           },

           publicFunction = function () {
             return privateFunction()
           };

           return {
                publicFunction: publicFunction;
           }
        }());
     </pre>
         </p>

     <p>Pattern number 2: encapsulate everything, even if only inside of an immediately executed function</p>
          <pre>
          (function (argument1) {

              var hi = 47;
              console.log('hi='+hi);

        }());
     </pre>
    </p>

     <p>Pattern number 2: encapsulate everything, even if only inside of and immediately executed function</p>
          <pre>
          (function (argument1) {

              var hi = 47;
              console.log('hi='+hi);

          }());
          </pre>
          Or alternatively (though what to me it seems more obscure)
           <pre>
          !function (argument1) {
              var hi = 47;
              console.log('hi='+hi);
          }();
          </pre>

     <p>Pattern number 3: Namespace management</p>

     <p>For larger projects it is critically important not to pollute your namespace with any unnecessary
     variable names. Therefore you might think to start every file with a single global variable declaration
     and then to add all subsequent definitions inside that single variable name. That plan  works well enough
     if you have only one external file, but if multiple files each begin by creating a global variable of the same name
     then these files worldwide about all the definitions that came before them. My preferred approach  is to
     define a global variable, but to use the existing global variable if another file is already created it.
     A one-liner can accomplish this goal like this:</p>


     <pre>
       var baget = baget || {};  // encapsulating variable

       baget.someFineNewVariable = 47;  // adding something to your encapsulating variable
      </pre>

</div><!-- /.blog-post -->