<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>


    <r:layoutResources/>
    <g:external dir="css" file="blog.css"/>
    <g:javascript base="https://api.tiles.mapbox.com/" src="/mapbox.js/v1.6.2/mapbox.js"/>
    <link rel="stylesheet" href="https://api.tiles.mapbox.com/mapbox.js/v1.6.2/mapbox.css" type="text/css">
    %{--<link type="text/css" href="${resource(dir: 'css', file: 'blog.css')}" rel="stylesheet" media="screen, projection" />--}%

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

</script>


<div class="container">

    <div class="blog-header">
        <h1 class="blog-title">Additional notes</h1>

        <p class="lead blog-description">Uncategorized comments</p>
    </div>

    <div id="nov2014">
        <div class="row">

            <div class="col-sm-8 blog-main">

                <div class="blog-post">

                    <h2 class="blog-post-title"><a name="t2014nov15">Brain algae virus</a></h2>

                    <p class="blog-post-meta">November 15, 2014</p>

                    <p>I read a story last week about algae growing in people's brains that seems pretty disturbing. Why this story isn't making more waves I'm not sure, since the potential implications of this report are huge.</p>
                    <hr>

                    <p>Robert Yolken, an infectious disease expert at John Hopkins University, recently discovered a virus in the throats of people with psychiatric disease. This virus, ATCV-1, had been identified before but its prevalence was unclear. Literature searches indicated only that
                    this virus infected a species of green algae  commonly found in lakes.</p>

                    <p>The disturbing development occurred when the researchers started looking at healthy people as well as those previously identified as sick. They found  this virus in almost half the people they examined, with other tests indicating <strong>that those infected with the virus performed 10% worse
                    than uninfected people in tests of their visual processing</strong>. As well the attention spans oof infected people seemed to be lower. The effects they identified were not enormous but they were significant.
                    </p>

                    <p>To distinguish between causation and association, the researchers then infected mice with the virus.  The infected animals took  longer to find their ways out of mazes and spent less time exploring new objects, suggesting an impact on attention span.   An examination of gene expression
                    in the animals hippocampus found changes in the expression of almost 1300 genes.</p>

                    <p>So the bottom line is this: there is a virus that at least some people have contracted.  It may have a connection to mental illness and/or declines in cognitive ability.  We have little idea about how widespread this virus might be(the original sample included only 92 healthy people in
                    one geographical area).  In the worst case scenario, however, there could be a sickness that is making some or all of us stupider than we would be otherwise.  For me at least this is concerning-- to become 10% <em>even dumber</em> would not be a welcome change.  Or maybe we all have it already,
                    which would maybe explain a thing or two, such as the popularity of celebrities or reality TV.  The story is still unfolding but so far I find the implications pretty troubling.
                    </p>

                    <p>If you want to see a journalistic summary of this story then check out <a
                            href="http://news.sciencemag.org/biology/2014/10/algal-virus-found-humans-slows-brain-activity?utm_campaign=email-news-latest&utm_source=eloqua">this article</a>
                    </p>

                </div><!-- /.blog-post -->

                <div class="blog-post">

                    <h2 class="blog-post-title"><a name="t2014nov28">Maps and the mysteries of open source</a></h2>

                    <p class="blog-post-meta">November 28, 2014</p>


                    <p>How difficult would it be to add a map to a website? Provided that you're hoping to go beyond a simple static image, I might have thought that it would be pretty tricky, and probably expensive as well. It seems that there is a way
                    to build a powerful mapping application into a webpage, and to give panning and zooming to your users, along with all the other fun things that we've come to expect from online maps.  Technically it's pretty trivial, requiring only a few lines of JavaScript and a little CSS.  Financially
                    the cost is a little less clear, though I'm actively  working to try and figure it out.</p>

                    <p>First let's consider the technical story.  I'll use a library that is distributed by a company called  <a
                            href="https://www.mapbox.com/">mapbox</a>, and they certainly make the process easy.  You need only make
                    one call containing exactly 4 parameters ( your starting place on the globe, your level of zoom, an identifier called a map ID, and a selector providing the idea of a DOM object.)  You'll also need to create that DOM object, and
                    include enough CSS to hold that DOM object in place. The sum total of  the code used in my example is reproduced below:
                    </p>

                    <pre>
                        <code class="language-html" data-lang="html">
                            <span class="nt">&lt;div</span> <span class="na">class=</span><span
                                class="s">"map-container"</span><span class="nt">&gt;</span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nt">&lt;div</span> <span
                                class="na">class=</span><span class="s">"map01"</span><span class="nt">&gt;</span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nt">&lt;/div&gt;</span>
                            <span class="nt">&lt;/div&gt;</span>
                        </code>

                        <code class="language-javascript" data-lang="javascript">
                            var mapID = 'examples.map-i86nkdio',
                            center = [42.2317, -71.6449],
                            zoomLevel = 13;
                            L.mapbox.map('map01', mapID).setView(center, zoomLevel);
                        </code>
                    </pre>

                    <p>Add a little bit of sizing and positioning with CSS</p>

                    <pre>
                        <code class="language-css" data-lang="css">
                            .map-container {
                            position: relative;
                            width: 500px;
                            height: 500px;
                            }

                            #map01 {
                            position: absolute;
                            top: 0;
                            bottom: 0;
                            width: 100%;
                            }
                        </code>
                    </pre>

                    <p>And you'll end up with a map that looks like the one below:</p>

                    <div class="map-container">
                        <div id="map01"></div>
                    </div>

                    <script>
                        // Declare the map ID, the center and zoom level of the map view
                        var mapID = 'examples.map-i86nkdio',
                                center = [42.2317, -71.6449],
                                zoomLevel = 13;

                        // Create an instance of the map and render it in the container div
                        L.mapbox.map('map01', mapID).setView(center, zoomLevel);
                    </script>


                    <p>And all of this, both in terms of the power of the resulting graphical widget and the straightforward simplicity of the implementation,
                    is most impressive. The tricky part about all of this, however, is whether or not it's actually free.  The code itself is mostly open source after all,
                    (apparently a mixture of a volunteer-donated open source project, along with code that was commercially developed
                    under an open-source license) so the code should in principle be available for download.  The data are also publicly available (some of it coming from NASA satellite imagery
                    and some coming from the massive and fascinating <a
                            href="http://www.openstreetmap.org">openstreetmap</a> project) so the data are also there for the taking.  So is all of
                    mapbox therefore available like air is for anyone to breathe?</p>

                    <p>Definitely not.  Mapbox is a for-profit company and they sell services, server time, processed data, and certain kinds of code. A quick look at their price list ranges from
                    their starter kit (up to 3000 map views per month aare available for free), to their Premium plan ($499/month) up to Mapbox Enterprise for $49,000/year.  And why, after all, would
                    anyone expect these capabilities to come be free?  The company has 25+ employees  hard at work developing new code and harmonizing data. I approve of the fact that some large portion of their code
                    is open source, but there is always the challenge of how a company dedicated to sharing code and data can  actually sustain themselves.  Software is difficult to develop,
                    and if you're going to extend and maintain high-quality code then it doesn't seem surprising that such a project asks for funding.</p>

                    <p>So, for small-end websites there does is in fact seem to be a way to access a well-crafted and well-maintained JavaScript library along with the vast quantities of supporting data
                    necessary to power a zoomable map with a global range. If you want to build a business around a map-related application then you're going to have to pay some money, even if the data
                    and the code originated in the public domain.  To me this approach seems like a pretty reasonable compromise, and maybe provides one model of how for-profit, software driven businesses can adopt
                    an open source approach to most of their code.  I'm not yet familiar enough with the project to endorse it, or even to be confident that I can perceive the project's real strengths
                    or weaknesses yet. At least it sounds like some fun programming for snowy afternoon indoors, however, so I plan to give it another try.</p>
                </div><!-- /.blog-post -->


                <div class="blog-post">

                    <h2 class="blog-post-title"><a name="t2014dec26">Clean D3 code</a></h2>

                    <p class="blog-post-meta">December 26, 2014</p>

                    <p>I've been coding  in D3 (among other languages) for the last 18 months or so.  During that time I've been ever searching for the perfect, all-knowing book that would  explain all the little D# stubling blocks
                    and still have some modicum of readability. I'm not sure if I found the perfect volume yet, but this weekend I've been going through <a href="https://www.packtpub.com/web-development/mastering-d3js">
                    Mastering D3.js by  Pablo Navarro Castillo</a> and so far I'm pretty impressed.  I want to commit the lesson I learned today to the page  before I have a chance to forget it.</p>

                    <p>Previously  I had written D3 modules that followed the normal sorts of principles regarding encapsulation in JavaScript (no global variables, avoid side effects, use accessors, etc) all of which is fine,
                    but I was also including a publicly available method  in every D3 module that I called render().  Then I would allow the caller to initialize one of my objects, set some parameters, and then call
                    <em>render</em> at the end  in order to make a picture. The code might look a little like this:</p>

                <pre>
                    <code class="language-css" data-lang="javascript">
                        var barChart = baget.barChart()
                        .selectionIdentifier("#chart3")
                        .assignData(data3)
                        .width(width)
                        .height(height)
                        .roomForLabels (roomForLabels)
                        .render();
                    </code>
                </pre>

                    <p>After reading Pablo Castillo, however, I now think that my old style was not so good. The two complaints I have about this approach  are as follows: 1) I loaded the data into the object instance
                        ( in the .assignData() line) which then bound the data onto the DOM implicitly; and 2) I asked the code to explicitly render, which implies a distinction between the storage of the code and the presentation,
                        which is counter to the approach of Data Driven Documents (at least as far as I understand it).  Castillo instead emphasizes that reusable charts should use the D3 <strong>call</strong> mechanism,, and in his examples the code
                        that performs the presentation is always explicitly connected to the DOM element that contains the data. I like these ideas.
                    </p>

                <p>In order to adopt them, but to still maintain maximum simplicity for the calling programmer ( who may or may not know D3) I wrote a method that I call dataHanger().  This method  takes two arguments,
                    where the first is the string that can identify the DOM element where the graphic needs to go,  and the second argument provides the data.  I then rearranged the code that used to  sit inside
                    my render() method and made it always began by looping through the array implicilty passed in through the <em>call</em> formalism.  This looping provides nice additional flexibility: I had a plot that
                    only took one data set, but now
                    if I pass multiple data sets then each one of those sets will receive the same treatment and end up on the screen. The resulting calling code now looks like this:
                </p>

                <pre>
                    <code class="language-css" data-lang="javascript">
                        var barChart = baget.barChart()
                        .assignData()
                        .width(width)
                        .height(height)
                        .roomForLabels (roomForLabels)
                        .dataHanger ("#chart3", data3);

                        d3.select("#scatterPlot1").call(barChart);
                    </code>
                </pre>


                    <p>I'm claiming that this new approach is better.  It is true that   I've taken what was a single continuous sequence of method calls and broken it into
                    two separate lines, but I think  the flexibility of the code is greatly increased. In this case the second line is pointing at the data that are loaded in the first line
                    by the dataHanger(), but if I used a different DOM element (that happened to have the right data attached in the right format) then I would get a different graphic.  And
                    moreover there is this nice notion that this instance of the bar chart class is responsible for its own presentation -- you don't have to tell it to render, because
                    instead the object knows what to do with its own data.</p>

                    <p>Now I'm not claiming this approach is perfect.  it is admittedly true, for example, that  sometimes it's nice to be able to display without performing calculations
                    ( if you're resizing, let's say,  or requesting some other minor change) and a render function feels natural  in a circumstance like that. Also I hate to force the caller
                     to reference D3 primitives if they don't want to, and in the second model they're going to have to perform the D3 <em>select</em> in order to get their picture. As always I'm trying to
                        walk the curvy path that tries to provide code simplicity,  great functionality, and a simplistic user interface. At all in all, however, I think this is a step forward.
                    </p>


                <p>And by the way, if you think this approach is flawed and you know a better way then please drop me a line.  If alternatively you've always been doing it this way and you're wondering
                    why it took me so long to catch on then that's great, but just keep your thoughts to yourself.  I may be a little slow at times and it's not always necessary to point that out!
                </p>


                </div><!-- /.blog-post -->



                <nav>
                    <ul class="pager">
                        <li><a href="#">Previous</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </nav>

            </div><!-- /.blog-main -->

            <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
                <div class="sidebar-module sidebar-module-inset">
                    <h4>About</h4>

                    <p>currently the vault is empty since the website is new.</p>
                </div>

                <div class="sidebar-module">
                    <h4>Archives</h4>
                    <ol class="list-unstyled">
                        <li><a href="#t2014nov15">November 15, 2014<br/><em>Brain algae virus</em></a></li>
                        <li><a href="#t2014nov28">November 28, 2014<br/><em>Maps and open source</em></a></li>
                        <li><a href="#t2014dec26">December 26, 2014<br/><em>Clean D3 code</em></a></li>
                    </ol>
                </div>

            </div><!-- /.blog-sidebar -->

        </div>

    </div><!-- /.row -->

</div>

</body>
</html>
