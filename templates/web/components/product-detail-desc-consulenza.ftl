<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="mt-5">
  <form>
    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Codice prodotto</label>
        <div>
            <#if contentModel.codiceprodotto_s?? && contentModel.codiceprodotto_s?has_content >
                ${contentModel.codiceprodotto_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Nome prodotto</label>
        <div>
            <#if contentModel.name_s?? && contentModel.name_s?has_content >
                ${contentModel.name_s}
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
            <#if contentModel.descrizioneprodotto_t?? && contentModel.descrizioneprodotto_t?has_content >
                ${contentModel.descrizioneprodotto_t}
            </#if>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold"
          >Costo del servizio</label
        >
        <div>
            <#if contentModel.costodelservizio_s?? && contentModel.costodelservizio_s?has_content >
                ${contentModel.costodelservizio_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold"
          >Descrizione costo servizio</label
        >
        <div
          style="
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
          "
        >
            <#if contentModel.descrizionecostoservizio_t?? && contentModel.descrizionecostoservizio_t?has_content >
                ${contentModel.descrizionecostoservizio_t}
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
            <#if contentModel.cup_s?? && contentModel.cup_s?has_content >
                ${contentModel.cup_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Sottocategoria</label>
        <div>
            <#if contentModel.subcategory_o?? && contentModel.subcategory_o?has_content >
                ${contentModel.subcategory_o}
            </#if>
        </div>
      </div>
    </div>
  </form>
</div>
