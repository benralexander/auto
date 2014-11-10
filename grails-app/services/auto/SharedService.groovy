package auto

import grails.transaction.Transactional

@Transactional
class SharedService {

    def mailService

    def sendEmail(String name,
                  String email,
                  String message) {

        String mailBodyText = """
alleged name: ${name}
alleged email: ${email}
alleged message: ${message}
""".toString()
        mailService.sendMail {
            from "ben@bovinecontemplation.org"
            to "ben@bovinecontemplation.org"
            subject "msg from bovine contemplation user"
            body mailBodyText

        }
    }


}