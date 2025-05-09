<#import "/templates/system/common/crafter.ftl" as crafter />

NOME: ${product.name_s}

NOME: ${contentModel.name_s}

<#if contentModel?? && (contentModel?size > 0)>
    <#list contentModel?keys as key>
      <strong>${key}</strong> : ${contentModel[key]}<br>
    </#list>
</#if>
