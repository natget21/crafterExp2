import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClients
import org.apache.http.util.EntityUtils
import groovy.json.JsonSlurper

def partnerId = params.id
def apiUrl = "http://localhost:5000/v1/Ideale-partner/findOne?partnerId=${partnerId}"

def httpClient = HttpClients.createDefault()
def httpGet = new HttpGet(apiUrl)
def response = httpClient.execute(httpGet)
def responseBody = EntityUtils.toString(response.getEntity())
def partnerData = new JsonSlurper().parseText(responseBody)

return [partnerData: partnerData]
