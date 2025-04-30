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

templateModel.partnerList = partnerList

