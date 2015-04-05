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

    <h4>This form doesn't seem to be working very well yet.  I'm still investigating...</h4>

    <h3 style="display:none">Bovine contemplation forum</h3>
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
