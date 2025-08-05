import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClients
import org.apache.http.util.EntityUtils
import groovy.json.JsonSlurper

def id = params.id
def url = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${partnerId}"

def client = HttpClients.createDefault()
def request = new HttpGet(url)
request.setHeader("Authorization", "Bearer ${bearerToken}")
def response = client.execute(request)
def partner = new JsonSlurper().parseText(EntityUtils.toString(response.getEntity()))

templateModel.partner = partner