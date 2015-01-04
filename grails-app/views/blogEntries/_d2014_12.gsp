<h2 class="blog-month-leader">December, 2014</h2>



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











<div class="blog-post">

    <h2 class="blog-post-title"><a name="t2014dec28">Infinite mind</a></h2>

    <p class="blog-post-meta">December 28, 2014</p>

    <p>When I was a child  back in the 1970s I commonly saw popular articles about brain science suggesting that the capacity of the human brain was infinite. I wonder if anyone
    makes claims like that anymore, now that they are so self-evidently false.  A few keystrokes and I can find a database so large that neither I nor anyone could memorize it, so it's hard to imagine
    a serious claim that a fundamentally finite blob of neural brain jello could contain the vastness of the information landscape.  And though this retrenchment of claims is surely prudent,
    it also raises a  problem  for anyone with ambitions to master scientific/technical topics.</p>


    <p>Because if your subject matter is too complicated to learn comprehensively (and this must be true in almost every field) then wwhich parts of the field are you going to choose NOT to learn?
    And if you field has a strong dependence on other fields, then in which of those fields will you be forced to merely dabble, which will you learn, and which other ones will you ignore completely?
    I regularly encounter this question as I study the topics surrounding drug discovery, since modern drug development/discovery (at least as I think about it) has strong dependencies on so many other fields; biology,
    mathematics, chemistry, and computer science to name a few. Any since the scope of any of those dependent fields is by itself is overwhelming,  what is the ambitious researcher to do if they want to make meaningful inroads
    in their primary field of interest?</p>


    <p>Of course the answer must be to effectively balance breadth and depth.  You need depth in some subfields, but every moment spent diving deeply takes you away from learning some other topic. Perhaps the most successful people
    are those who can balance these two quantities effectively, and who happen to be skillful/lucky in choosing the subfields that they will spend their time on. When I come across one of those successful people
    I definitely want to ask them how they do it, because the whole question  leaves me feeling stumped.</p>


</div><!-- /.blog-post -->
