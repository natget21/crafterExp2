import scripts.libs.CommonLifecycleApi;

def contentLifecycleParams =[:];
contentLifecycleParams.site = site;
contentLifecycleParams.path = path;
contentLifecycleParams.user = user;
contentLifecycleParams.contentType = contentType;
contentLifecycleParams.contentLifecycleOperation = contentLifecycleOperation;
contentLifecycleParams.contentLoader = contentLoader;
contentLifecycleParams.applicationContext = applicationContext;

def controller = new CommonLifecycleApi(contentLifecycleParams);
controller.execute();

import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.HttpClients
import org.apache.http.util.EntityUtils
import groovy.json.JsonSlurper

def partnerId = params.id
def apiUrl = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${partnerId}"

def httpClient = HttpClients.createDefault()
def httpGet = new HttpGet(apiUrl)
def response = httpClient.execute(httpGet)
def responseBody = EntityUtils.toString(response.getEntity())
def partnerData = new JsonSlurper().parseText(responseBody)

templateModel.partnerData = partnerData
