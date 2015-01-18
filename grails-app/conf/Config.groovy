import grails.util.Environment

// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }
def appName = "${appName}"
site.title = 'bovine contemplation'
grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
def catalinaBase = System.properties.getProperty('catalina.base')
if (!catalinaBase) catalinaBase = '.'   // just in case
def logDirectory = "${catalinaBase}/logs"


if  (Environment.current == Environment.DEVELOPMENT)  {
    println('\n\n*** Preparing DEV environment ***\n\n')
} else if  (Environment.current == Environment.TEST)  {
    println('\n\n*** Preparing TEST environment ***\n\n')
}   else if  (Environment.current == Environment.PRODUCTION)  {
    println('\n\n*** Preparing PROD environment ***\n\n')
}



// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [ // the first one is the default format
    all:           '*/*', // 'all' maps to '*' or the first available format in withFormat
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    hal:           ['application/hal+json','application/hal+xml'],
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// Legacy setting for codec used to encode data with ${}
grails.views.default.codec = "html"

// The default scope for controllers. May be prototype, session or singleton.
// If unspecified, controllers are prototype scoped.
grails.controllers.defaultScope = 'singleton'

// GSP settings
grails {
    views {
        gsp {
            encoding = 'UTF-8'
            htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
            codecs {
                expression = 'html' // escapes values inside ${}
                scriptlet = 'html' // escapes output from scriptlets in GSPs
                taglib = 'none' // escapes output from taglibs
                staticparts = 'none' // escapes output from static template parts
            }
        }
        // escapes all not-encoded output at final stage of outputting
        // filteringCodecForContentType.'text/html' = 'html'
    }
}


grails.converters.encoding = "UTF-8"
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

// configure passing transaction's read-only attribute to Hibernate session, queries and criterias
// set "singleSession = false" OSIV mode in hibernate configuration after enabling
grails.hibernate.pass.readonly = false
// configure passing read-only to OSIV session by default, requires "singleSession = false" OSIV mode
grails.hibernate.osiv.readonly = false

personalserverbovine='http://bovinecontemplation.org/'
personalserverbaget='http://www.bagetsoftware.org/'
personalservercow='http://graphicscow.com/'

server.URL = 'http://69.173.71.178:8080/dev/rest/server/'
t2dRestServer {
    base = 'http://t2dgenetics.org/'
    mysql =  'mysql/'
    bigquery =  'dev/'
    path = 'rest/server/'
}
t2dTestRestServer {
    base = 'http://69.173.70.52:8080/'
    name =  'test/'
    path = 'rest/server/'
}
t2dDevRestServer {
    base = 'http://69.173.71.178:8080/'
    name =  'dev/'
    path = 'rest/server/'
}
t2dQaRestServer {
    base = 'http://69.173.70.198:8080/'
    name =  'qa/'
    path = 'rest/server/'
}
t2dProdRestServer {
    base = 'http://69.173.71.179:8080/'
    name =  'prod/'
    path = 'rest/server/'
}
server.URL = t2dDevRestServer.base+t2dDevRestServer.name+t2dDevRestServer.path


environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        grails.serverURL = "http://www.bovinecontemplation.org"
    }
}


grails {
    mail {
        host = "smtp.gmail.com"
        port = 465
        username = "t2dportal@gmail.com"
        password = "diaPortal"
        props = ["mail.smtp.auth":"true",
                 "mail.smtp.socketFactory.port":"465",
                 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
                 "mail.smtp.socketFactory.fallback":"false"]
    }
}


// log4j configuration
log4j.main = {
    appenders {
        rollingFile name: 'stdout', file: "${logDirectory}/${appName}.log".toString(), maxFileSize: '10MB'
        rollingFile name: 'stacktrace', file: "${logDirectory}/${appName}_stack.log".toString(), maxFileSize: '1MB'
    }

    error  'org.codehaus.groovy.grails.web.servlet',        // controllers
           'org.codehaus.groovy.grails.web.pages',          // GSP
           'org.codehaus.groovy.grails.web.sitemesh',       // layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping',        // URL mapping
           'org.codehaus.groovy.grails.commons',            // core / classloading
           'org.codehaus.groovy.grails.plugins',            // plugins
           'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'
    warn 'grails',
            'grails.plugin.webxml.WebxmlGrailsPlugin',
            'grails.app.service',
            'grails.plugins.hawkeventing',
            'net.sf.ehcache.hibernate'
    info 'grails.app.services'



    environments {
        development {
            appenders {
                console name: 'stdout', layout: pattern(conversionPattern: "%d [%t] %-5p %c %x - %m%n")
            }
        }

        staging {
            appenders {
                rollingFile name: 'stdout', file: "${logDirectory}/${appName}.log".toString(), maxFileSize: '10MB'
                rollingFile name: 'stacktrace', file: "${logDirectory}/${appName}_stack.log".toString(), maxFileSize: '10MB'
                //console name: 'stdout', layout: pattern(conversionPattern: "%d [%t] %-5p %c %x - %m%n")
            }

            // DO STUFF RELATED TO STAGING ENV
        }


        prod {
            appenders {
                rollingFile name: 'stdout', file: "${logDirectory}/${appName}.log".toString(), maxFileSize: '10MB'
                rollingFile name: 'stacktrace', file: "${logDirectory}/${appName}_stack.log".toString(), maxFileSize: '10MB'
                //console name: 'stdout', layout: pattern(conversionPattern: "%d [%t] %-5p %c %x - %m%n")
            }
            grails.logging.jul.usebridge = false
            // DO STUFF RELATED TO STAGING ENV
        }


        dbdiff {
            appenders {
                console name: 'stdout', layout: pattern(conversionPattern: "%d [%t] %-5p %c %x - %m%n")
            }

            // DO STUFF RELATED TO DBDIFF ENV
        }
    }



}
