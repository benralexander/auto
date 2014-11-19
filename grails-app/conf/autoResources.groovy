modules = {
    jquery {
        resource url: 'js/lib/jquery-1.11.0.min.js'
    }
    bootstrap {
        resource url: 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'
        resource url: 'http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'
        resource url: 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'
    }
    core {
        dependsOn "jquery"
        dependsOn "bootstrap"

        resource url: 'css/lib/style.css'

        resource url: 'images/icons/dna-strands.ico'

        resource url: 'js/lib/d3.min.js'
    }
}