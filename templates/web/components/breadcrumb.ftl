<#assign size = paths?size />
<div class="w-100 bg-primary">
    <div class="container d-flex">
        <#list paths as path>
            <#if path_index < (size - 1)>
                <div>${path.name} ></div>
            <#else>
                <div>${path.name}</div>
            </#if>
        </#list>
    </div>
</div>