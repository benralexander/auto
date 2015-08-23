package parts

class SoftwareContribsController {

    def index() {
        render (view:'softwareContributions')
    }
    def pubs() {
        render (view:'pubs')
    }
}
