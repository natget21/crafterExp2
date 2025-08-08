<#assign size = paths?size />
<div class="w-100 bg-white">
    <div class="container d-flex border p-1 my-4">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <a href="${path.link}" class="text-muted my-auto">${path.name}</a>
                <i class="my-auto fa fa-angle-right"></i>
            <#else>
                <a href="${path.link}" class="text-muted">${path.name}</a>
            </#if>
        </#list>
    </div>
</div>