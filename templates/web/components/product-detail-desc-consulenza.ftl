<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="mt-5">
  <form>
    <div class="row mb-5">
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Codice prodotto</label>
        <div>
            <#if contentModel.as?? && contentModel.as?has_content ></#if>
        </div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Nome prodotto</label>
        <div>Nome prodotto</div>
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
          >Costo del servizio</label
        >
        <div>$ 00000000</div>
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
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do
          eiusmod tempor incididunt ut labore et dolore magna aliquaLorem
          ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod
          tempor incididunt ut labore et dolore magna aliquaLorem ipsum
          dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor
          incididunt ut labore et dolore magna aliqua
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
        <div>XXXXXXXXXX</div>
      </div>
      <div class="col-md-3">
        <label class="desc-title form-label fw-bold">Sottocategoria</label>
        <div>Categoria</div>
      </div>
    </div>
  </form>
</div>
