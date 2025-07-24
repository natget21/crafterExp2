import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClients
import org.apache.http.util.EntityUtils
import groovy.json.JsonSlurper

def apiUrl = "https://api.shortcut.uno/v1/Ideale-partner/getAllPartners"

def httpClient = HttpClients.createDefault()
def httpGet = new HttpGet(apiUrl)
def response = httpClient.execute(httpGet)
def responseBody = EntityUtils.toString(response.getEntity())
def partnerList = new JsonSlurper().parseText(responseBody)

// Rimuovi duplicati in base al campo "name" (modifica il campo se diverso)
def seenNames = [] as Set
def uniquePartners = partnerList.findAll { partner ->
    def name = partner.partnerAzienda?.toLowerCase()?.trim()
    if (!seenNames.contains(name)) {
        seenNames << name
        return true
    }
    return false
}

templateModel.partnerList = uniquePartners

