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
        <div>Descrizione obiettivo</div>
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
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do
          eiusmod tempor incididunt ut labore et dolore magna aliquaLorem
          ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod
          tempor incididunt ut labore et dolore magna aliquaLorem ipsum
          dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor
          incididunt ut labore et dolore magna aliqua
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold"
          >Modalità di erogazione</label
        >
        <div>Modalità</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Destinatari</label>
        <div>Destinatari</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Durata totale</label>
        <div>00</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Durata sessione</label>
        <div>00</div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Partecipanti</label>
        <div>Min: 00 - Max: 00</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Costo orario</label>
        <div>€€€</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Tipologia costo</label>
        <div>€€€</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Extra costo</label>
        <div>€€€</div>
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
      <div>CUP</div>
    </div>
  </form>
</div>
