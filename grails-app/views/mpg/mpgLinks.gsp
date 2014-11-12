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
<script>
    var   updateServerFlag  = function (serverNumber,serverStatus)  {
                var serverObject;
                switch (serverNumber) {
                    case 0: serverObject  = $('#tstSrvrImg'); break;
                    case 1: serverObject  = $('#devSrvrImg'); break;
                    case 2: serverObject  = $('#qaSrvrImg'); break;
                    case 3: serverObject  = $('#prodSrvrImg'); break;
                    default: alert(' internal error.  Server number ='+serverNumber+'.') ;
                }
                if (serverStatus == 0) {
                    serverObject[0].src = "/auto/static/images/trouble.png";
                }  else  if (serverStatus == 1) {
                    serverObject[0].src = "/auto/static/images/good.png";
                }  else  if (serverStatus == 2) {
                    serverObject[0].src = "/auto/static/images/caution.png";
                }
          },
    checkServer = function  (serverNumber) {
        $.ajax({
            cache: false,
            type: "post",
            url: "${createLink (action:'checkServerAjax','serverNumber':serverNumber )}",
            data: {serverNumber: serverNumber},
            async: true,
            success: function (data) {
                  updateServerFlag(data["server"],data["status"]);
//                loading.hide();
            },
            error: function (jqXHR, exception) {
                console.log('failed to reach web server') ;
                updateServerFlag(0,2);
                updateServerFlag(1,2);
                updateServerFlag(2,2);
                updateServerFlag(3,2);
//                loading.hide();
            }
        });
    };
    $(document).ready( function(){
                try{
                    checkServer(0);
                    checkServer(1);
                    checkServer(2);
                    checkServer(3);
                } catch(e){
                    console.log(e);
                }
            }
    );
</script>

<h2>Web servers</h2>


<div class="container-fluid" style="margin-top: 15px">

    <ul id="myTab" class="nav nav-tabs" role="tablist">
        <li id="diabetesTab" role="presentation" class="active"><a href="#diabetes" data-toggle="tab">Diabetes</a></li>
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

    <hr class="small">
    <hr class="small">

    <h2>REST servers</h2>

    <div class="row">
        <div class="srvrHolder">
        <div class="col-md-3">
            <ul class="list-unstyled">
                <li>
                    <div id="tstSrvr" class="restSrvrBase">
                        <r:img id="tstSrvrImg" uri="/images/good.png" alt="Broad medical population genetics"
                               onclick="checkServer(0)"/>
                    </div>
                </li>
                <li>
                    <div class="restSrvrDescr">
                        Test Server
                    </div>
                </li>
            </ul>
        </div>

        <div class="col-md-3">
            <ul class="list-unstyled">
                <li>
                    <div id="devSrvr" class="restSrvrBase">
                        <r:img id="devSrvrImg" uri="/images/good.png" alt="Broad medical population genetics"
                               onclick="checkServer(1)"/>
                    </div>
                </li>
                <li>
                    <div class="restSrvrDescr">
                        Dev Server
                    </div>
                </li>
            </ul>
        </div>

        <div class="col-md-3">
            <ul class="list-unstyled">
                <li>
                    <div id="qaSrvr" class="restSrvrBase">
                        <r:img id="qaSrvrImg" uri="/images/good.png" alt="Broad medical population genetics"
                               onclick="checkServer(2)"/>
                    </div>
                </li>
                <li>
                    <div class="restSrvrDescr">
                        QA Server
                    </div>
                </li>
            </ul>

        </div>

        <div class="col-md-3">
            <ul class="list-unstyled">
                <li>
                    <div id="prodSrvr" class="restSrvrBase">
                        <r:img id="prodSrvrImg" uri="/images/good.png" alt="Broad medical population genetics"
                               onclick="checkServer(3)"/>
                    </div>
                </li>
                <li>
                    <div class="restSrvrDescr">
                        Prod Server
                    </div>
                </li>
            </ul>
        </div>
    </div>
    </div>
</div>


</body>
</html>
