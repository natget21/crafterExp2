<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="mt-5">
  <form>
    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Sottocategoria</label>
        <div>Categorie</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Codice Interno</label>
        <div>00000000</div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Nome</label>
        <div>
            <#if contentModel.name_s?? && contentModel.name_s?has_content>
                ${contentModel.name_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Obiettivo</label>
        <div>
            <#if contentModel.obiettivo_html?? && contentModel.obiettivo_html?has_content>
                ${contentModel.obiettivo_html}
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
            <#if contentModel.descrizione_html?? && contentModel.descrizione_html?has_content>
                ${contentModel.descrizione_html}
            </#if>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold"
          >Modalità di erogazione</label
        >
        <div>
            <#if contentModel.modalita_t?? && contentModel.modalita_t?has_content>
                ${contentModel.modalita_t}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Destinatari</label>
        <div>
            <#if contentModel.rivolto_t?? && contentModel.rivolto_t?has_content>
                ${contentModel.rivolto_t}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Durata totale</label>
        <div>
            <#if contentModel.durata_s?? && contentModel.durata_s?has_content>
                ${contentModel.durata_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Durata sessione</label>
        <div>
            <#if contentModel.duratasessione_s?? && contentModel.duratasessione_s?has_content>
                ${contentModel.duratasessione_s}
            </#if>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Partecipanti</label>
        <div> 
            <#if contentModel.partecipantiMin_s?? && contentModel.partecipantiMin_s?has_content>
                Min: ${contentModel.partecipantiMin_s}
            </#if>
            <#if contentModel.maxpartecipanti_s?? && contentModel.maxpartecipanti_s?has_content>
                Max: ${contentModel.maxpartecipanti_s}
            </#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Costo orario</label>
        <div
            <#if contentModel.costo_s?? && contentModel.costo_s?has_content>
                ${contentModel.costo_s}
            </#if>
        div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Tipologia costo</label>
        <div>
            <#if contentModel.tipologiacosto_s?? && contentModel.tipologiacosto_s?has_content>
                ${contentModel.tipologiacosto_s}
            </#if>
        <div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Extra costo</label>
        <div>
            <#if contentModel.extra_costo_t?? && contentModel.extra_costo_t?has_content>
                ${contentModel.extra_costo_t}
            </#if>
        <div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Partecipanti</label>
        <div>Min: 00 - Max: 00</div>
      </div>
      <div class="col-md-3 form-check">
        <input
          class="form-check-input"
          type="checkbox"
          value=""
          id="agevolazione"
        />
        <label class="text-dark form-check-label" for="agevolazione">
          Agevolazione possibile
        </label>
      </div>
    </div>

    <div class="mb-5">
      <label class="desc-title form-label fw-bold">CUP</label>
      <div>
            <#if contentModel.rivolto_t?? && contentModel.rivolto_t?has_content>
                ${contentModel.rivolto_t}
            </#if>
      </div>
    </div>
  </form>
</div>
