<script>
    var checkAWebHost = function  (serverNumber) {
        $.ajax({
            cache: false,
            type: "post",
            url: "${createLink(controller: 'mpg', action:'getPortalStatus' )}",
            data: {serverNumber: serverNumber},
            async: true,
            success: function (data) {
                var obj = JSON.parse(data.info);
                console.log('hi='+obj);
            },
            error: function (jqXHR, exception) {
                core.errorReporter(jqXHR, exception);
            }
        });
    };
</script>
<div class="row">
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">

            <img class='logoholder' src="http://www.cellprofiler.org/images/BroadInstituteLogo_smaller.png" alt="Broad Institute">
            <div class="caption" style="text-align: center">
                <div class="serverDescrBig">T2D Genes</div>
                <div class="serverDescrSmall">Production &nbsp;
                    %{--<span class="glyphicon glyphicon-question-sign" aria-hidden="true" data-toggle="popover"--}%
                                                                     %{--title="public server" data-content="Server for the everybody."--}%
                                                                     %{--data-placement="right" title="Server for everybody"></span>--}%
                </div>
                <p>
                    <a href="${grailsApplication.config.mpgPortal.t2dProd}" class="btn btn-primary" role="button">go to site</a>
                 </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img class='logoholder' src="http://www.cellprofiler.org/images/BroadInstituteLogo_smaller.png" alt="Broad Institute">
            <div class="caption" style="text-align: center">
                <div class="serverDescrBig">T2D Genes</div>
                <div class="serverDescrSmall">QA
                    </div>
                <p>
                    <a href="${grailsApplication.config.mpgPortal.t2dQa}" class="btn btn-primary" role="button">go to site</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img class='logoholder' src="http://www.cellprofiler.org/images/BroadInstituteLogo_smaller.png" alt="Broad Institute">
            <div class="caption" style="text-align: center">
                <div class="serverDescrBig">T2D Genes</div>
                <div class="serverDescrSmall">Development</div>
                <p>
                    <a href="${grailsApplication.config.mpgPortal.t2dDev}" class="btn btn-primary" role="button">go to site</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img class='logoholder' src="http://www.cellprofiler.org/images/BroadInstituteLogo_smaller.png" alt="Broad Institute">
            <span class="pull-right"><a class="subtle" href="https://005901288866.signin.aws.amazon.com/console">.</a></span>
            <div class="caption" style="text-align: center">
                <div class="serverDescrBig">T2D Genes</div>
                <div class="serverDescrSmall">CI</div>
                <p>
                    <a href="${grailsApplication.config.mpgPortal.t2dCi}" class="btn btn-primary" role="button">go to site</a>
                    <script>
                       checkAWebHost(7);
                    </script>
                </p>
            </div>
        </div>
    </div>
</div>