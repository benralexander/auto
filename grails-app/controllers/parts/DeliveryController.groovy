package parts

import auto.SharedService

class DeliveryController {

    SharedService sharedService

    def index() { }
    def about() {
    render(view:'about')
    }
    def contact() {
        render(view:'contact')
    }
    def contactForm() {
        params.email
        sharedService.sendEmail(params["name"],
                params["email"],
                params["message"])
        render(view:'contact')
    }
}
