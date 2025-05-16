<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="mt-5">
  <form>
    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Nome TBI</label>
        <div>
            <#if contentModel.name_s?? && contentModel.name_s?has_content>
                ${contentModel.name_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Tipologia TBI</label>
        <div>
            <#if contentModel.subcategory_o?? && contentModel.subcategory_o?has_content>
                ${contentModel.subcategory_o}
            </#if>
        </div>
      </div>
      <div class="col-md-6">
        <label class="desc-title form-label fw-bold">Descrizione</label>
        <div
          style="
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
          "
        >
            <#if contentModel.description_t?? && contentModel.description_t?has_content>
                ${contentModel.description_t}
            </#if>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Durata</label>
        <div>
            <#if contentModel.duration_s?? && contentModel.duration_s?has_content>
                ${contentModel.duration_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">costo</label>
        <div>
            <#if contentModel.costo_s?? && contentModel.costo_s?has_content>
                ${contentModel.costo_s}
            </#if>
        </div>
      </div>

      <div
        class="col-md-4 form-check d-flex m-3 align-items-center justify-content-center"
      >
        <div>
          <input
            class="form-check-input"
            type="checkbox"
            value=""
            id="agevolazione"
          />
          <label class="text-dark form-check-label" for="agevolazione">
            Agevolazione
          </label>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">CUP</label>
        <div>
            <#if contentModel.cup_s?? && contentModel.cup_s?has_content>
                ${contentModel.cup_s}
            </#if>
        </div>
      </div>
    </div>
  </form>
</div>
