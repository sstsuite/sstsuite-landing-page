<script setup>
import MaterialButton from "@/components/MaterialButton.vue";
import aboutVisual from "@/assets/img/about-image.jpg";

const REGISTER_URL = "https://www.sstsuite.com.br/contas/registro/";
const goToRegister = () => window.open(REGISTER_URL, "_blank", "noopener,noreferrer");
</script>

<template>
  <section class="py-7">
    <div class="container">
      <div class="row align-items-center">
        <!-- Coluna Esquerda - Texto/Copy -->
        <div class="col-lg-6 col-md-12 mb-5 mb-lg-0 order-2 order-lg-1">
          <div class="pe-lg-5 about-copy">
            <!-- Título Principal -->
            <h2 class="about-title text-dark font-weight-bold mb-4">
              Chega de relatórios manuais
            </h2>
            <!-- Parágrafo 1 - Dor -->
            <p class="about-paragraph text-muted mb-4">
              Muitas empresas ainda dependem de papel e planilhas para coletar 
              dados de Avaliação Ergonômica Preliminar (NR-17) e Relatório de Luminância (NHO-11), gastando horas transcrevendo informações em Word 
              ou Excel. Isso torna o processo lento, suscetível a erros e 
              pouco escalável.
            </p>
            
            <!-- Parágrafo 2 - Solução -->
            <p class="about-paragraph about-paragraph--emphasis text-dark mb-4">
              Com o <strong>SSTSuite</strong>, você elimina esse retrabalho. Nossos sistemas para 
              <strong>Relatórios de Luminância NHO-11</strong> e <strong>Avaliações Ergonômicas 
              Preliminares NR-17</strong> permitem coletar informações direto no campo — pelo 
              computador, tablet ou celular — e gerar relatórios completos automaticamente.
            </p>
            
            <!-- Lista de Benefícios -->
            <div class="mb-5 benefit-list">
              <div class="benefit-item d-flex align-items-center mb-3">
                <div class="benefit-icon icon icon-sm icon-shape shadow text-center border-radius-md me-3">
                  <i class="material-icons text-white opacity-10">desktop_mac</i>
                </div>
                <span class="text-dark font-weight-bold">Coleta digital direta no campo</span>
              </div>
              
              <div class="benefit-item d-flex align-items-center mb-3">
                <div class="benefit-icon icon icon-sm icon-shape shadow text-center border-radius-md me-3">
                  <i class="material-icons text-white opacity-10">description</i>
                </div>
                <span class="text-dark font-weight-bold">Relatórios automáticos e prontos para entrega</span>
              </div>
              
              <div class="benefit-item d-flex align-items-center mb-3">
                <div class="benefit-icon icon icon-sm icon-shape shadow text-center border-radius-md me-3">
                  <i class="material-icons text-white opacity-10">verified_user</i>
                </div>
                <span class="text-dark font-weight-bold">Padronização e conformidade garantidas</span>
              </div>
              
              <div class="benefit-item d-flex align-items-center mb-3">
                <div class="benefit-icon icon icon-sm icon-shape shadow text-center border-radius-md me-3">
                  <i class="material-icons text-white opacity-10">schedule</i>
                </div>
                <span class="text-dark font-weight-bold">Mais agilidade e menos retrabalho</span>
              </div>
            </div>

            <!-- Botão CTA -->
            <MaterialButton
              variant="gradient"
              color="info"
              size="lg"
              class="px-5 py-3 w-100 shadow-lg about-cta about-cta-btn"
              @click="goToRegister"
            >
              Começar agora
            </MaterialButton>
          </div>
        </div>
        
        <!-- Coluna Direita - Visual -->
        <div class="col-lg-6 col-md-12 mb-5 order-1 order-lg-2">
          <div class="position-relative text-center">
            <img
              :src="aboutVisual"
              alt="Visual do SSTSuite"
              class="about-image img-fluid rounded-2xl shadow-lg"
              loading="lazy"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.icon {
  width: 40px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.icon-xl {
  width: 60px;
  height: 60px;
}

/* Sobrescrever CSS global problemático para .icon-shape i */
.icon-shape i {
  position: static !important;
  top: auto !important;
}

.py-7 {
  padding-top: 5rem;
  padding-bottom: 5rem;
}

/* Tipografia específica do About */
.about-title {
  font-size: 2.5rem;
  line-height: 1.2;
}

.about-paragraph {
  font-size: 1.1rem;
  line-height: 1.6;
}

.about-paragraph--emphasis {
  font-weight: 500;
}

/* Botão CTA específico do About */
.about-cta-btn {
  font-weight: 600;
  letter-spacing: 0.5px;
  background-color: #1775F1;
  color: #ffffff;
}

@media (max-width: 991.98px) {
  .py-7 {
    padding-top: 3rem;
    padding-bottom: 3rem;
  }
  
  .about-title {
    font-size: 2rem;
    line-height: 1.25;
  }
  .about-copy { text-align: center; padding-right: 0 !important; }
  .about-paragraph { font-size: 1rem; }
  .about-cta { width: 100%; }
  .about-cta-btn {
    background-color: #1775F1;
    color: #ffffff;
  }
  .about-image { max-width: 520px; width: 100%; height: auto; }
  .icon { width: 40px; height: 40px; }
  .icon i { font-size: 20px; }
  /* Lista: alinhar texto à esquerda em mobile */
  .benefit-list { text-align: left; }
  .benefit-item { justify-content: flex-start; }
  .benefit-item span { display: block; text-align: left; }
}

.rounded-2xl {
  border-radius: 1rem;
}

/* Lista de benefícios - responsivo e padronizado */
.benefit-list {
  display: grid;
  grid-template-columns: 1fr;
  gap: 0.75rem 1rem;
}

.benefit-item {
  padding: 0.25rem 0;
  align-items: center;
}

.benefit-icon {
  background-color: #1775F1;
  min-width: 44px;
  width: 44px;
  height: 44px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.benefit-item span {
  line-height: 1.4;
}

@media (min-width: 992px) {
  .benefit-list {
    grid-template-columns: 1fr 1fr;
  }
}

/* Melhor responsividade em telas muito pequenas */
@media (max-width: 575.98px) {
  .about-title { 
    font-size: 1.7rem; /* destaque maior no mobile */
    line-height: 1.25;
  }
  .about-paragraph { 
    font-size: 0.975rem; 
  }

  .about-cta-btn { 
    padding: 0.75rem 1.25rem; 
    font-size: 1rem; 
  }
}
</style>