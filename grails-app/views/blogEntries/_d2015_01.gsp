<h2 class="blog-month-leader">January, 2015</h2>

<div class="blog-post">

    <h2 class="blog-post-title"><a name="t2015jan04"></a></h2>

    <p class="blog-post-meta">January 4, 2015</p>

    <p>(Incomplete)</p>

    <p>Sunburst visualizations can be visually appealing. The idea is not dissimilar from having multiple nested pie charts, provided only that the sections between the pies in adjacent rings
        retain a logical mapping from one to another. That is, if the inner ring has a section A, then every element in the outer ring  that is physically adjacent to section A must also bear some logical
        connection to the elements in section A.  One common interpretation is to let the outer rings represent specific instances of elements in the inner ring.  Using the phrasing of computer science,
        the outer ring this contains elements that subclass elements in the inner ring.  I have several graphics of this sort on the website -- go  <a href="http://bovinecontemplation.org/scientificGraphics/ccls">here</a> for an example.
    </p>


    <p>In addition to representing logical relationships between different types of elements in different nested rings, the sunburst visualization can also be used to describe quantitative relationships.
       One type of quantification is familiar from pie charts,  which imply that the length of an arc is proportional to the number of elements within each category.  If I have 100 beans and 25 of them are blue, for example, then
        the arc representing blue beans should take up a quarter of the circle.  Interpreting subsequent rings is maybe a little more ambiguous.  Do the outer rings represent proportions of the total, or else proportions
        of the arc of the inner segment they are subclassing?  Only the second interpretation guarantees that outer rings don't overrun the arc length of the inner rings they are subclassing,  but the result of this
        interpretation is that the outer rings may start to have gaps.  This is not a logical problem, and can also be useful.  Considering again that 25 blue beans, if we want to further subdivide the classifications of only 20 of these
        then the outer arc will cover only 4/5  of the inner arc, so that it's easy to tell at a glance at some blue beans have not been further categorized.
    </p>


    <p>While these graphics are visually interesting and analytically useful, they have often been hard to make. Mike Bostock's program D3 goes a long way towards remedying this problem, but the graphics
        are realistically still only available to those with reasonably strong programming skills.  As one way of bringing these capabilities  to others, I've rejiggered some of my code to accept
        user-specified JSON files and to thereby create custom sunburst graphics. If you are interested in giving this code a try  then you can follow this <a href="http://graphicscow.com/probe/uploadPrep">link</a>.
    </p>


</div><!-- /.blog-post -->
