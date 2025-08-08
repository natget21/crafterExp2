<#assign size = paths?size />
<div class="w-100">
    <div class="container d-flex border p-1 my-4" style="background-color: red;">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <a href="${path.link}" class="text-muted d-block my-auto">${path.name}</a>
                <i class="mx-2 my-auto fa fa-angle-right"></i>
            <#else>
                <a href="${path.link}" class="d-block my-auto text-muted">${path.name}</a>
            </#if>
        </#list>
    </div>
</div>