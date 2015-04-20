<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>

    <meta name="keywords" content="deviant art,LinkedIn, github">
    <meta name="description" content="social media connections for Ben Alexander">
    <title>social media links for Ben Alexander</title>


    <style>
    body {
        background-image: url('../images/geometry.png')
    }
    .personalLinks>.row:first-child {
        margin-top:50px;
    }
    .personalLinks>.row:last-child {
        margin-bottom:50px;
    }
    </style>



</head>

<body>
<script>


</script>


<div class="container">

    <h1>Open public forum</h1>

    <h3>Bovine contemplation forum</h3>

    <p>Google Groups (or any of the equally easy-to-use alternatives) now make the construction of a forum trivially simple.
    The limiting factor in communicating with other humans
    is apparently no longer the absence of a container for your words, but
    instead the lack of a topic worthy of the time it takes to write down.
    I think I'll call this switch the Gutenberg Inversion, and claim it to be
    a great challenge of our times.  If anyone wants to
    argue the point (or extend it, or say anything else) then feel free to use the
    topic pages below.</p>


    <div class="container linkContainerHolder">

        <div class="container-fluid personalLinks" style="border: 2px solid black; background-color: #eeeeee">

            <iframe id="forum_embed"
                    src="javascript:void(0)"
                    scrolling="no"
                    frameborder="0"
                    width="900"
                    height="700">
            </iframe>
            <script type="text/javascript">
                document.getElementById('forum_embed').src =
                        'https://groups.google.com/forum/embed/?place=forum/bovine-contemplation'
                        + '&showsearch=true&showpopout=true&showtabs=false'
                        + '&parenturl=' + encodeURIComponent(window.location.href);
            </script>


        </div>
    </div>


</div>



</body>
</html>
