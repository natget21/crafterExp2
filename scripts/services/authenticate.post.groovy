import org.craftercms.engine.service.context.SiteContext
import org.craftercms.engine.security.SecurityUtils

def externalAuthUrl = "https://external-api.com/authenticate"  // Replace with your API URL

def requestBody = [
    username: params.username,
    password: params.password
]

def http = new URL(externalAuthUrl).openConnection()
http.setRequestMethod("POST")
http.setDoOutput(true)
http.setRequestProperty("Content-Type", "application/json")
http.getOutputStream().write(new groovy.json.JsonBuilder(requestBody).toString().bytes)

def response = http.inputStream.text
def jsonResponse = new groovy.json.JsonSlurper().parseText(response)

if (jsonResponse.authenticated) {
    // Store user information in Crafter session
    def session = request.getSession(true)
    session.setAttribute("authenticated", true)
    session.setAttribute("user", jsonResponse.user)

    return [
        authenticated: true,
        user: jsonResponse.user
    ]
} else {
    return [
        authenticated: false,
        message: "Invalid username or password"
    ]
}
