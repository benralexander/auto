<h2 class="blog-month-leader">November, 2014</h2>


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
