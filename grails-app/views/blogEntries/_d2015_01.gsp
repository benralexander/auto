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


    <h2 class="blog-post-title"><a name="t2015jan04"></a></h2>

    <p class="blog-post-meta">January 10, 2015</p>


    <p>Sunburst visualizations can be visually appealing. The idea of the sunburst chart is one of nested pie charts, with adjacent rings
        retain connections within each arc, as suggested by the coloring of the example below. (Which I cribbed from one of <a href="See http://bl.ocks.org/mbostock/4348373">Bostock's examples</a>.)
        In addition to the rich opportunities for suggesting connections between data in the static picture, note that clicking on any of the arcs
        allows you to zoom in, while clicking on the blue centerpiece zooms back out.
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

    <p>This is all great, but the challenge is that this complex, hierarchical visual representation requires a complex, hierarchical JSON-based data structure.
      Therefore even if you have a good reason for such an illustration and good underlying data, you have to build up a structure in legal JSON bbefore you can
        consider using some borrowed D3 code to create the picture in your webpage.  When I was  drawing a similar picture for someone recently I asked her to put her data
        into a structure that is fundamentally linear, but which is then converted internally into the necessary hierarchical structure. In case this capability is useful
        I'm including a link to the operational web-based server below.
    </p>


    <p>Note that there is still no getting away from generating legal JSON -- all in claiming is that the structure might be a little easier to generate.   In particular,
        you'll need to make two files; one containing the name of every arc, and the other using a series of strings delimited by periods describing exactly how those arcs
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
        This file should have one line for every single arc in the graphic. Each arc should have an index number ( they don't have to be sequential) and the name ( arbitrary, but it will show up
        in a tooltip so you may as well make it sensible.
    </p>

    <p>The second file  is called 'elements' for no very good reason and it consists of references to the index numbers in the categories file. Here's an example of how it might look:</p>
    <pre>
    [
    {"hierarchy":"1.2"},
    {"hierarchy":"1.3"},
    {"hierarchy":"4"},
    {"hierarchy":"4.5"},
    {"hierarchy":"4.5"}
    ]
    </pre>
    <p>
        The idea is that numbers on the left refer to  inner rings, while numbers that follow one or more periods refer to rings on the outside. In the example above
        the Sunburst would have two elements in the innermost ring, with one of those arcs having two children and the other arc having one.  Repetitions are okay,
        and they simply indicate that there is another instance of a particular category (  and that the specified arc should therefore be pproportionally bigger).
    </p>

     <p>
         Two cautions: <ul>
    <li>every number referenced in the elements file must correspond to an index in the categories file, or else the results will be unpredictable.</li>
    <li>The resulting data structure is strictly hierarchical, which means every child can only have one parent ( the parents can of course have multiple children).  This means that
    iif you include to child indexes that refer to different parent indices than the software will assume that the children are distinct ccopies of one another.  You could end up
    with more children arcs that way than you expected.</li>
</ul>
     </p>



<p>
    Anyway here is the link <a href='http://graphicscow.com/probe/uploadPrep'>http://graphicscow.com/probe/uploadPrep</a>.  Give it a try if you like, and if you come up with any especially neat
    sunburst graphics tthen I would love to receive a copy of your data set ( use the 'contact' link) so that I can see the picture for myself. Thanks!
</p>


</div><!-- /.blog-post -->
