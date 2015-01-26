<div class="row">
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <r:img uri="/images/mpg5.png"  class="webServerImage" alt="Broad medical population genetics"/>

            <div style="text-align: center">

                <div class="serverDescrBig">Sigma T2D</div>
                <div class="serverDescrSmall">Production</div>

                <p>
                    <a href="${grailsApplication.config.mpgPortal.sigmaProd}" class="btn btn-primary" role="button">go to site</a>
                 </p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <r:img uri="/images/mpg5.png"  class="webServerImage" alt="Broad medical population genetics"/>

            <div style="text-align: center">
            <div class="serverDescrBig">Sigma T2D</div>
            <div class="serverDescrSmall">QA</div>
                <p>
                    <a href="${grailsApplication.config.mpgPortal.sigmaQa}" class="btn btn-primary"
                      role="button">go to site</a>
                </p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <r:img uri="/images/mpg5.png" class="webServerImage" alt="Broad medical population genetics"/>
            <span class="pull-right"><a class="subtle" href="https://broad-dig.signin.aws.amazon.com/console">.</a></span>
            <div style="text-align: center">
                <div class="serverDescrBig">Sigma T2D</div>
                <div class="serverDescrSmall">Development</div>

                <p>
                    <a href="${grailsApplication.config.mpgPortal.sigmaDev}" class="btn btn-primary"
                      role="button">go to site</a>
                </p>
            </div>
        </div>
    </div>
</div>