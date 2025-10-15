<script setup>
import { ref, computed } from "vue";

const activeModule = ref("AEP");

const REGISTER_URL = "https://www.sstsuite.com.br/contas/registro/";
const goToRegister = () => window.open(REGISTER_URL, "_blank", "noopener,noreferrer");

const genericFeatures = [
  "Acesso via desktop, tablet e celular",
  "Armazenamento seguro em nuvem",
  "Relatórios exportáveis em Word",
  "Suporte"
];

const aepPlans = [
  {
    title: "Básico",
    price: "R$ 79,90",
    limits: [
      "50 Situações de Risco por mês",
      "5 downloads por mês",
      "1 usuário",
      ...genericFeatures
    ],
    target: "Indicado para: Pequenas empresas",
    recommended: false
  },
  {
    title: "Pro",
    price: "R$ 199,90",
    limits: [
      "200 Situações de Risco por mês",
      "20 downloads por mês",
      "5 usuários",
      ...genericFeatures
    ],
    target: "Indicado para: Médias empresas",
    recommended: true
  },
  {
    title: "Premium",
    price: "R$ 499,90",
    limits: [
      "500 Situações de Risco por mês",
      "50 downloads por mês",
      "10 usuários",
      ...genericFeatures
    ],
    target: "Indicado para: Grandes empresas",
    recommended: false
  }
];

const nhoPlans = [
  {
    title: "Básico",
    price: "R$ 79,90",
    limits: [
      "50 Avaliações por mês",
      "5 downloads por mês",
      "1 usuário",
      ...genericFeatures
    ],
    target: "Indicado para: Pequenas empresas",
    recommended: false
  },
  {
    title: "Pro",
    price: "R$ 199,90",
    limits: [
      "200 Avaliações por mês",
      "20 downloads por mês",
      "5 usuários",
      ...genericFeatures
    ],
    target: "Indicado para: Médias empresas",
    recommended: true
  },
  {
    title: "Premium",
    price: "R$ 499,90",
    limits: [
      "500 Avaliações por mês",
      "50 downloads por mês",
      "10 usuários",
      ...genericFeatures
    ],
    target: "Indicado para: Grandes empresas",
    recommended: false
  }
];


const plans = computed(() => (activeModule.value === "AEP" ? aepPlans : nhoPlans));
</script>

<template>
  <section class="pricing-section bg-gray-50 py-7">
    <div class="container text-center mb-5">
      <h2 class="text-dark font-weight-bold mb-3">Planos e Preços</h2>
      <p class="text-muted">Escolha o plano que melhor se adapta à sua empresa</p>
    </div>

    <!-- Tabs dos módulos -->
    <div class="container mb-4">
      <div class="d-flex justify-content-center">
        <div class="module-toggle d-none d-md-inline-flex p-1 rounded-pill">
        <button
          class="tab-btn px-3 py-2 rounded-pill"
          :class="activeModule === 'AEP' ? 'active' : ''"
          @click="activeModule = 'AEP'"
        >
          AEP – Avaliação Ergonômica Preliminar (NR-17)
        </button>
        <button
          class="tab-btn px-3 py-2 rounded-pill"
          :class="activeModule === 'NHO-11' ? 'active' : ''"
          @click="activeModule = 'NHO-11'"
        >
          NHO-11 – Relatórios de Luminância
        </button>
        </div>
      </div>
    </div>

    <!-- Toggle mobile empilhado (visível apenas no mobile) -->
    <div class="container mb-4 d-md-none">
      <div class="d-flex justify-content-center">
        <div class="mobile-module-toggle d-flex flex-column w-100">
          <button
            class="mobile-tab-btn w-100 mb-2 rounded-pill"
            :class="activeModule === 'AEP' ? 'active' : ''"
            @click="activeModule = 'AEP'"
          >
            AEP – Avaliação Ergonômica Preliminar (NR-17)
          </button>
          <button
            class="mobile-tab-btn w-100 rounded-pill"
            :class="activeModule === 'NHO-11' ? 'active' : ''"
            @click="activeModule = 'NHO-11'"
          >
            NHO-11 – Relatórios de Luminância
          </button>
        </div>
      </div>
    </div>

    <!-- Cards de planos -->
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-2 g-md-3 align-items-stretch justify-content-center">
        <div v-for="(plan, index) in plans" :key="index" class="col mb-3 d-flex">
          <div
            class="plan-card bg-white p-4 p-lg-5 rounded-2xl shadow-lg h-100 position-relative d-flex flex-column w-100"
            :class="plan.recommended ? 'recommended' : ''"
          >
            <div class="d-flex align-items-center justify-content-between mb-2">
              <h5 class="card-title mb-0">{{ plan.title }}</h5>
              <span v-if="plan.recommended" class="badge badge-recommended">Recomendado</span>
            </div>

            <div class="mb-2">
              <span class="price">12x de {{ plan.price }}</span>
              <span class="price-note">Plano anual</span>
            </div>

            <ul class="list-unstyled mb-3 flex-grow-0">
              <li v-for="(item, i) in plan.limits" :key="i" class="mb-2 d-flex align-items-center">
                <i class="material-icons plan-check me-2">check_circle</i>
                <span class="item-text">{{ item }}</span>
              </li>
            </ul>

            <p class="target mb-3">{{ plan.target }}</p>

            <button class="btn-primary-plan text-white w-100 mt-auto" @click="goToRegister">
              Começe agora
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.pricing-section {
  /* Variáveis de cor padronizadas */
  --grey: #F1F0F6;
  --dark-grey: #8D8D8D;
  --light: #fff;
  --dark: #000;
  --green: #81D43A;
  --light-green: #E3FFCB;
  --blue: #1775F1;
  --light-blue: #D0E4FF;
  --dark-blue: #0C5FCD;
  --red: #FC3B56;
}
.py-7 {
  padding-top: 5rem;
  padding-bottom: 5rem;
}

.bg-gray-50 {
  background-color: #f9fafb;
}

.p-5 { padding: 1.25rem; }
.p-4 { padding: 1rem; }

.rounded-2xl {
  border-radius: 1rem;
}

.text-xl {
  font-size: 1.25rem;
}

.text-2xl { font-size: 1.5rem; }

.font-bold {
  font-weight: 700;
}

.font-extrabold {
  font-weight: 800;
}

.mb-6 { margin-bottom: 2.5rem; }

.module-toggle {
  background: var(--light-blue);
  border: 1px solid var(--light-blue);
  display: inline-flex;
  gap: 0.25rem;
  max-width: 100%;
  overflow-x: auto;
  flex-wrap: nowrap;
}
.module-toggle::-webkit-scrollbar { height: 6px; }
.module-toggle::-webkit-scrollbar-thumb { background: rgba(12,95,205,0.25); border-radius: 10px; }
.tab-btn { background: transparent; border: 0; color: var(--dark-blue); font-weight: 600; }
.tab-btn.active { background: var(--light); color: var(--dark-blue); box-shadow: 0 2px 8px rgba(12,95,205,0.15); }

/* Toggle mobile empilhado */
.mobile-module-toggle { gap: 0.5rem; max-width: 420px; }
.mobile-tab-btn {
  background: var(--light);
  border: 1px solid var(--light-blue);
  color: var(--dark-blue);
  font-weight: 700;
  padding: 0.6rem 0.75rem;
}
.mobile-tab-btn.active {
  background: var(--dark-blue);
  color: #fff;
  border-color: var(--dark-blue);
  box-shadow: 0 2px 8px rgba(12,95,205,0.15);
}

.badge-recommended {
  background: var(--green);
  color: #1b3a1b;
  padding: 0.35rem 0.6rem;
  border-radius: 0.5rem;
  font-size: 0.65rem;
  font-weight: 700;
}

.recommended { border: 2px solid var(--dark-blue); }

/* Animação simples de fade-in */
.pricing-section {
  animation: fadeIn 0.4s ease-in;
}
/* Cards ------------------------- */
.plan-card { min-height: 100%; border: 1px solid var(--light-blue); max-width: 420px; }
.card-title { font-size: 1.125rem; color: var(--dark-blue); font-weight: 700; }
.price { font-size: 1.25rem; font-weight: 800; color: var(--dark-blue); }
.price-note { display: block; font-size: 0.75rem; color: var(--dark-grey); margin-top: 2px; }
.item-text { font-size: 0.9rem; color: #333; }
.target { font-size: 0.8rem; color: var(--dark-grey); }
.plan-check { color: var(--dark-blue); }

/* CTA --------------------------- */
.btn-primary-plan {
  background-color: var(--dark-blue);
  border: 1px solid var(--dark-blue);
  padding: 0.5rem 0.75rem;
  border-radius: 0.65rem;
}
.btn-primary-plan:hover { background-color: var(--blue); border-color: var(--blue); }

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(8px); }
  to { opacity: 1; transform: translateY(0); }
}

/* Responsividade ------------------ */
@media (max-width: 991.98px) {
  .card-title { font-size: 1.0625rem; }
  .price { font-size: 1.2rem; }
}

@media (max-width: 575.98px) {
  .tab-btn { font-size: 0.85rem; padding: 0.4rem 0.6rem; white-space: nowrap; }
  .plan-card { max-width: 100%; }
  .card-title { font-size: 1rem; }
  .price { font-size: 1.1rem; }
  .price-note { font-size: 0.7rem; }
  .item-text { font-size: 0.875rem; }
  .target { font-size: 0.75rem; }
  .plan-check { font-size: 18px; }
  .badge-recommended { font-size: 0.6rem; padding: 0.3rem 0.5rem; }
}
</style>