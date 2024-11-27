<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="container-fluid pt-5 pb-3">
    <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Featured Service</span></h2>
    <@crafter.renderComponentCollection
      $field="providers_o"
      $containerAttributes={ "class": "row px-xl-5" }
      $itemAttributes={ "class": "" };
      item, index
    />
</div>