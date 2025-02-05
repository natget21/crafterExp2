import org.craftercms.engine.service.context.SiteContext
import groovy.json.JsonSlurper
import groovy.json.JsonOutput

def externalAuthUrl = "https://external-api.com/authenticate"  // Replace with your actual API URL


def session = request.getSession(true)
    session.setAttribute("authenticated", true)
    session.setAttribute("user", jsonResponse.user)

return [
    authenticated: true,
    user: jsonResponse.user
]


// // Parse request body
// def requestBody = new JsonSlurper().parseText(request.reader.text)

// def http = new URL(externalAuthUrl).openConnection()
// http.setRequestMethod("POST")
// http.setDoOutput(true)
// http.setRequestProperty("Content-Type", "application/json")
// http.getOutputStream().write(JsonOutput.toJson(requestBody).bytes)

// def response = http.inputStream.text
// def jsonResponse = new JsonSlurper().parseText(response)

// if (jsonResponse.authenticated) {
//     def session = request.getSession(true)
//     session.setAttribute("authenticated", true)
//     session.setAttribute("user", jsonResponse.user)

//     return [
//         authenticated: true,
//         user: jsonResponse.user
//     ]
// } else {
//     return [
//         authenticated: false,
//         message: "Invalid username or password"
//     ]
// }
