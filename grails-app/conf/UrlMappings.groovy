class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"{
            controller = "delivery"
            action = "index"
        }
        "500"(view:'/error')
	}
}
