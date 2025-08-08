<#assign size = paths?size />
<div class="w-100">
    <div class="container d-flex">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <a href="${path.link}" class="text-muted">${path.name}</a>
                <i class="my-auto fa fa-angle-right"></i>
            <#else>
                <a href="${path.link}" class="text-muted">${path.name}</a>
            </#if>
        </#list>
    </div>
</div>