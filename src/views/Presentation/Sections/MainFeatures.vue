<script setup>
import aepMockup from "@/assets/img/macbook-2.png";
import nhoMockup from "@/assets/img/iphones.png";
</script>

<template>
  <section class="container py-4 main-features">
    <!-- Bloco 1: AEP -->
    <div class="row align-items-center g-4 py-3">
      <div class="col-lg-6">
        <img
          :src="aepMockup"
          alt="Mockup do módulo AEP"
          class="img-fluid "
          loading="lazy"
        />
      </div>
      <div class="col-lg-6">
        <h3 class="mb-2 feature-title">AEP – Avaliação Ergonômica Preliminar (NR-17)</h3>
        <p class="lead text-secondary feature-lead">
          Automatize suas avaliações ergonômicas e elimine a burocracia dos relatórios.
        </p>
        <ul class="list-unstyled mt-3 feature-list">
          <li class="mb-2 feature-list-item">• Coleta digital em campo</li>
          <li class="mb-2 feature-list-item">• Relatório pronto em segundos</li>
          <li class="mb-2 feature-list-item">• Padronização garantida</li>
          <li class="mb-2 feature-list-item">• Gestão simples de clientes e avaliações</li>
          <li class="mb-2 feature-list-item">• Colaboração em equipe</li>
        </ul>
        <p class="mt-3 text-sm feature-note">
          Ideal para consultorias de SST e ergonomistas que buscam agilidade e profissionalismo nas entregas.
        </p>
      </div>
    </div>

    <!-- Bloco 2: NHO-11 -->
    <div class="row align-items-center g-4 py-3">
      <div class="col-lg-6 order-2 order-lg-1">
        <div>
          <h3 class="mb-2 feature-title">NHO-11 – Relatórios de Luminância</h3>
          <p class="lead text-secondary feature-lead">
            Digitalize a coleta de medições e gere relatórios de luminância sem retrabalho.
          </p>
          <ul class="list-unstyled mt-3 feature-list">
            <li class="mb-2 feature-list-item">• Registro direto das medições no campo</li>
            <li class="mb-2 feature-list-item">• Relatório técnico automático</li>
            <li class="mb-2 feature-list-item">• Histórico completo de medições</li>
            <li class="mb-2 feature-list-item">• Controle de clientes e equipamentos</li>
            <li class="mb-2 feature-list-item">• Suporte a equipes e planos diferentes</li>
          </ul>
          <p class="mt-3 text-sm feature-note">
            Feito para quem precisa de precisão, agilidade e padronização nos relatórios de iluminação ocupacional.
          </p>
        </div>
      </div>
      <div class="col-lg-6 order-1 order-lg-2">
        <img
          :src="nhoMockup"
          alt="Mockup do módulo NHO-11"
          class="img-fluid"
          loading="lazy"
        />
      </div>
    </div>
  </section>
</template>

<style scoped>
.rounded-2xl {
  border-radius: 1rem;
}

/* Tipografia padronizada da seção, alinhada ao About */
.main-features .feature-title {
  font-size: 1.75rem;
  line-height: 1.3;
  font-weight: 700;
  color: #111827;
}

.main-features .feature-lead {
  font-size: 1.1rem;
  line-height: 1.6;
}

.main-features .feature-list-item {
  font-size: 1rem;
  line-height: 1.5;
}

.main-features .feature-note {
  font-size: 0.95rem;
  color: #4b5563;
}

@media (max-width: 991.98px) {
  .main-features .feature-title {
    font-size: 1.5rem;
  }
  .main-features .feature-lead {
    font-size: 1rem;
  }
  .main-features .feature-list-item {
    font-size: 0.975rem;
  }
  .main-features .feature-note {
    font-size: 0.9rem;
  }
}
</style>