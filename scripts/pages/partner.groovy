import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClients
import org.apache.http.util.EntityUtils
import groovy.json.JsonSlurper


def id = params.id
def url = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${partnerId}"
