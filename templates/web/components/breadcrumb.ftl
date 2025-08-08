<#assign size = paths?size />
<div class="w-100 bg-primary">
    <#list paths as path>
        <#if path_index < (size - 1)>
            <div>${path.name} ></div>
        <#else>
        </#if>
        <div>${size}</div>
    </#list>
</div>