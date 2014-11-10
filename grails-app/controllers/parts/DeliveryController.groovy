package parts

class DeliveryController {

    def index() { }
    def about() {
    render(view:'about')
    }
    def contact() {
        render(view:'contact')
    }
    def contactForm() {
        params.email
        render(view:'contact')
    }
}
