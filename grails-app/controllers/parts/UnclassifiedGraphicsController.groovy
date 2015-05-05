package parts

class UnclassifiedGraphicsController {

    def index() {
        render(view: 'exploratoryGraphics')
    }
    def dataHierarchy() {
        render(view: 'dataHierarchy')
    }

    def downloadPowerpoint(){
        String fileName =  "/WEB-INF/resources/D3JavascriptPresentation.ppt"
        File file =  grailsApplication.mainContext.getResource(fileName).file
     //   File file = new File(fileName)
            if (file.exists())
            {
                response.setContentType("application/octet-stream") // or or image/JPEG or text/xml or whatever type the file is
                response.setHeader("Content-disposition", "attachment;filename=\"${file.name}\"")
                response.outputStream << file.bytes
            }
            else {
                render "Error!"
            }
   }

}
