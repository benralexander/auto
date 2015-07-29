package parts

import org.codehaus.groovy.grails.web.mapping.LinkGenerator

class ArtAndSocialMediaController {

    LinkGenerator grailsLinkGenerator

    def index() {
        render  (view:'artsAndSocialMedia')
    }
    def bovineForum() {
        render  (view:'bovineForum')
    }
    def feed = {
        render(feedType:"rss", feedVersion:"2.0") {
            title = "Bovine contemplation feed"
            link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'feed',absolute:true)}""".toString()
            description = "Blog delivery via RSS"
                entry("November 2014") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'nov2014',absolute:true)}""".toString()
                    "November 2014 content"
                }
                entry("December 2014") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'dec2014',absolute:true)}""".toString()
                    "December 2014 content"
                }
                entry("January 2015") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'jan2015',absolute:true)}""".toString()
                    "January 2015 content"
                }
                entry("February 2015") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'feb2015',absolute:true)}""".toString()
                    "February 2015 content"
                }
                entry("March 2015") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'mar2015',absolute:true)}""".toString()
                    "March 2015 content"
                }
                entry("April 2015") {
                    link = """${grailsLinkGenerator.link(controller: 'artAndSocialMedia', action: 'apr2015',absolute:true)}""".toString()
                    "December 2014 content"
                }

        }
    }
    def nov2014 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2014",month:"11"])
    }

    def dec2014 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2014",month:"12"])
    }

    def jan2015 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2015",month:"01"])
    }

    def feb2015 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2015",month:"02"])
    }

    def mar2015 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2015",month:"03"])
    }

    def apr2015 = {
        redirect(controller: 'delivery', action:'blog', params:[year:"2015",month:"04"])
    }

    def methodMissing(String name, Object args){
        return "called $name with $args"
    }


}
