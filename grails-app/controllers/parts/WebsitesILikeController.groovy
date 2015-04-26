package parts

class WebsitesILikeController {

    def index() {
        render (view:'websitesILike')
    }

    def bioinformaticsResources() {
        render (view:'bioinformaticsResources')
    }

    def educationalResources() {
        render (view:'educationalResources')
    }



}
