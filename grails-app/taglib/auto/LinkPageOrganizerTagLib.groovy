package auto

class LinkPageOrganizerTagLib {

    def linkDesc = { attrs,body ->

            String preparedOutput  =
    """<div class="panel panel-default">
          <div class="panel-body">
            <div class="col-md-2">
                 <a type="button" href="${attrs.linkUrl}" class="bigbutton  btn btn-xlarge">${attrs.buttonName}</a>
            </div>
            <div class="col-md-10 anchorDescriptionTextContainer" >
                 <p class="anchorDescriptionText">${body()}</p>
            </div>
          </div>
       </div>""".toString()

            out << preparedOutput


    }

}
