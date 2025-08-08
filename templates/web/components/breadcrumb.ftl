<#assign size = paths?size />
<div class="w-100 bg-primary">
    <div class="container d-flex">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <a href="${path.link}">${path.name} ></a>
            <#else>
                <a class="text-muted">${path.name}</a>
            </#if>
        </#list>
    </div>
</div>