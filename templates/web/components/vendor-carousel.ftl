<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col">
            <@crafter.renderComponentCollection
              $field="vendors_o"
              $containerAttributes={ "class": "owl-carousel vendor-carousel" }
              $itemAttributes={ "class": "bg-light p-4" };
              item, index
            />
        </div>
    </div>
</div>
