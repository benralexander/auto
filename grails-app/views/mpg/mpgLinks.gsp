<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 11/2/2014
  Time: 7:55 AM
--%>

%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="core"/>
    <r:require modules="core"/>

    <r:layoutResources/>


    %{--<link rel="icon" href="../../favicon.ico">--}%

</head>

<body>
<g:javascript src="lib/bootstrap.js" />
<script>
//    $('#diabetesTab').click(function (e) {
//        e.preventDefault()
//        $(this).tab('show')
//    })
//    $('#sigmaTab').click(function (e) {
//        e.preventDefault()
//        $(this).tab('show')
//    })
</script>


<div class="container">

    <ul  id="myTab" class="nav nav-tabs" role="tablist">
        <li id="diabetesTab" role="presentation" class="active"><a href="#diabetes"  data-toggle="tab">Diabetes</a></li>
        <li id="sigmaTab" role="presentation"><a href="#sigma" data-toggle="tab" data-toggle="tab">Sigma</a></li>
    </ul>

    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="diabetes">
            <p>
                <g:render template="diabetes"/>
            </p>
        </div>
        <div class="tab-pane fade" id="sigma">
            <p>
                <g:render template="sigma"/>
            </p>
        </div>


    </div> <!-- /container -->





</body>
</html>
