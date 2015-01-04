package parts

import auto.SharedService

class DeliveryController {

    SharedService sharedService
    List <String> monthsWithBlogs = ["2014_11",
                                     "2014_12",
                                     "2015_01"]
    String defaultYear =  "2014"
    String defaultMonth =  "11"

    int indexOfTheMonth (String year,String month){
        String lookupKey =  "${year}_${month}"
        return monthsWithBlogs.indexOf(lookupKey)
    }
    Map retrieveValue (int index){
        String value =  monthsWithBlogs[index]
        String[] portions =  value.split("_")
        return [year:portions[0], month:portions[1]]
    }


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
    def blog() {
        String year = params.year ?: defaultYear
        String month = params.month ?: defaultMonth
        int index =  indexOfTheMonth ( year, month)
        if (index==-1)  {    //error.  Go to default
            render(view:'blog', model:[year:defaultYear,month:defaultMonth])
        } else   {   // verified.  go there
            render(view:'blog', model:[year:year,month:month])
        }
    }
    def blogPrevMonth() {
        String year = params.year ?: defaultYear
        String month = params.month ?: defaultMonth
        int index =  indexOfTheMonth ( year, month)
        if (index==-1)  {    //error.  Go to default
            render(view:'blog', model:[year:defaultYear,month:defaultMonth])
        }
        if (index > 0) {   // success, go back one month
            Map newTarget =   retrieveValue(index-1)
            render(view:'blog', model:newTarget)
        }  else   {   // can't go back any further -- stay where we are
            render(view:'blog', model:[year:year,month:month])
        }
    }
    def blogNextMonth() {
        String year = params.year ?: defaultYear
        String month = params.month ?: defaultMonth
        int index =  indexOfTheMonth ( year, month)
        if (index==-1)  {    //error.  Go to default
            render(view:'blog', model:[year:defaultYear,month:defaultMonth])
        }
        if (index < monthsWithBlogs.size()-1) {   // success, go back one month
            Map newTarget =   retrieveValue(index+1)
            render(view:'blog', model:newTarget)
        }  else   {   // can't go back any further -- stay where we are
            render(view:'blog', model:[year:year,month:month])
        }
    }

}
