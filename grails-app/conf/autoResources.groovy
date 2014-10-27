modules = {
    jquery {
        resource url: 'js/lib/jquery-1.11.0.min.js'
//        resource url: 'js/lib/jquery.dataTables.min.js'
//        resource url: 'js/lib/bootstrap.min.js'
//        resource url: 'css/lib/jquery.dataTables.css'
    }
    bootstrap {
        resource url: 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'
        resource url: 'http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'
        resource url: 'http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'
    }
    core {
        dependsOn "jquery"
        dependsOn "bootstrap"

        resource url: 'images/ajaxLoadingAnimation.gif'

//        resource url: 'css/lib/bootstrap.min.css'

//        resource url: 'css/lib/style.css'

        resource url: 'js/lib/d3.min.js'
    }
}