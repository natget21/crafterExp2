<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
    <@crafter.body_top/>
    <#include "/templates/web/controllers/auth.ftl" />
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
    <div class="card text-center shadow-sm my-5 p-3" style="max-width: 500px; margin: auto;">
      <div class="card-body">
        <h5 class="card-title text-success">Ordine confermato!</h5>
        <p class="card-text">
          Il tuo ordine è stato inviato correttamente.  
          <br>Per maggiori informazioni, <a href="https://esempio.com/dettagli-ordine" class="link-primary">clicca qui</a>.
        </p>
      </div>
    </div>
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>
