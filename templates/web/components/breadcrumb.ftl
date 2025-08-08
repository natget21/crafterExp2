<#assign size = paths?size />
<div class="w-100">
    <div class="container d-flex border p-2 my-4" style="background-color: #62388E;">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <a href="${path.link}" class="text-light d-block my-auto">${path.name}</a>
                <i class="text-light mx-2 my-auto fa fa-angle-right"></i>
            <#else>
                <a href="${path.link}" class="text-light d-block my-auto">${path.name}</a>
            </#if>
        </#list>
    </div>
</div>