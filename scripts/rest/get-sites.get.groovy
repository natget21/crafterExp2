def siteContextManager = applicationContext["crafter.siteContextManager"]
def siteContextList = siteContextManager.listContexts()
def siteNames = []

siteContextList.each { siteContext ->
    def name = siteContext.getSiteName()
    siteNames.add(name)
}

return siteNames