<script setup>
import { ref, computed } from "vue";

const faqs = [
  {
    q: "Os Relatórios são automáticos?",
    a: "O sistema gera seus relatórios completos automaticamente, prontos para entregar ao cliente, sem necessidade de preenchimento manual. Todo o processo é 100% automatizado, economizando tempo e eliminando trabalho extra."
  },
  {
    q: "Os dados estão seguros?",
    a: "Todas as informações são armazenadas com criptografia e backups regulares, garantindo confidencialidade e integridade."
  },
  {
    q: "Posso importar meus documentos atuais?",
    a: "Mesmo que você tenha relatórios em elaboração, é possível cadastrar os dados diretamente no sistema e gerar seus documentos — Avaliação Ergonômica Preliminar (AEP) ou Relatório de Luminância — sem necessidade de elaboração manual, economizando tempo."
  },
  {
    q: "O sistema permite múltiplos usuários?",
    a: "Sim, escolha um plano que inclua o número de usuários desejado e comece a colaborar com sua equipe."
  },
  {
    q: "Como funcionam os limites de uso de cada plano?",
    a: "O limite de uso de cada plano é baseado em três pilares: número de usuários, quantidade de downloads e formulários preenchidos. Os formulários disponíveis são: Situação de Risco (AEP) e Avaliação de Luminância (Relatório de Luminância). Cada vez que um formulário é preenchido no sistema, ele conta como +1 no limite mensal do seu plano."
  },
  {
    q: "Como funciona o suporte técnico?",
    a: "Oferecemos suporte técnico via e-mail e WhatsApp, com resposta em até 48 horas."
  },
  {
    q: "O sistema acompanha mudanças nas normas NR-17 e NHO-11?",
    a: "Sim, todas as atualizações legais e técnicas são incorporadas automaticamente aos módulos, garantindo conformidade contínua."
  }
];

// estado de abertura por índice (UX: apenas um aberto por vez)
const openIdx = ref(-1);
const toggleOne = (idx) => {
  openIdx.value = openIdx.value === idx ? -1 : idx;
};
</script>

<template>
  <section class="faq-section py-7">
    <div class="container text-center mb-5">
      <h2 class="text-dark font-weight-bold mb-3">Perguntas Frequentes</h2>
      <p class="text-muted">Tire suas dúvidas antes de assinar</p>
    </div>

    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10 col-12">
          <div v-for="(item, idx) in faqs" :key="`faq-${idx}`" class="mb-3">
            <div class="card p-0 rounded-2 faq-card" :class="openIdx === idx ? 'active' : ''">
              <button
                type="button"
                class="faq-toggle w-100 text-start"
                :aria-expanded="openIdx === idx ? 'true' : 'false'"
                :aria-controls="`faq-${idx}`"
                @click="toggleOne(idx)"
                @keydown.enter.prevent="toggleOne(idx)"
                @keydown.space.prevent="toggleOne(idx)"
              >
                <span class="faq-question">{{ item.q }}</span>
                <i class="material-icons transition faq-icon" :class="openIdx === idx ? 'rotate' : ''">expand_more</i>
              </button>
              <div
                class="answer"
                :id="`faq-${idx}`"
                role="region"
                :aria-hidden="openIdx === idx ? 'false' : 'true'"
                :class="openIdx === idx ? 'open' : ''"
              >
                <p class="faq-answer mb-0">{{ item.a }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
  .faq-section {
    /* Paleta padrão */
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
    background-color: var(--light);
  }

  .py-7 { 
    padding-top: 5rem; 
    padding-bottom: 5rem; 
  }

  .rounded-2 { 
    border-radius: 0.5rem;
  }

  .text-lg { 
    font-size: 1.125rem;
  }

  .font-bold { 
    font-weight: 700;
  }

  .text-xl {
    font-size: 1.25rem;
  }

  .text-gray-600 { 
    color: #4b5563; 
  }

  .transition { 
    transition: transform 0.25s ease; 
  }

  .rotate { 
    transform: rotate(180deg);
  }

  .answer { 
    max-height: 0; 
    overflow: hidden; 
    transition: max-height 0.25s ease, 
    opacity 0.25s ease; 
    opacity: 0; 
  }

  .answer.open {
    max-height: 300px; 
    opacity: 1; 
  }

  /* UX/Estilos FAQ usando a paleta */
  .faq-card { 
    border: 1px solid rgba(12,95,205,.12); 
    background: #fff;
  }
  
  .faq-card.active { 
    border-color: var(--dark-blue); 
    box-shadow: 0 10px 24px -14px rgba(12,95,205,.24)
  }
  
  .faq-toggle {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: .75rem;
    padding: 1.25rem 1.5rem; /* padding interno maior */
    background: #fff;
    border: 0;
    border-radius: .5rem;
    color: #111827;
  }
  .faq-toggle:hover { 
    background: rgba(208,228,255,.45); 
  }
  .faq-toggle:focus { 
    outline: none; 
    box-shadow: none; 
    border-radius: .5rem; 
  }
  .faq-question { 
    color: var(--dark-blue); 
    font-weight: 700; 
    font-size: 1.05rem; 
  }
  .faq-icon { 
    color: var(--dark-blue); 
  }
  .faq-answer {
    color: #374151;
    padding: 0.75rem 1.75rem 1.5rem 1.75rem; /* mais respiro lateral e superior */
    line-height: 1.6; /* legibilidade melhor */
  }
  /* Responsividade --------------------------- */
  @media (max-width: 991.98px) {
    .py-7 { padding-top: 3.5rem; padding-bottom: 3.5rem; }
    .faq-toggle { padding: 1rem 1.25rem; }
    .faq-question { font-size: 1rem; }
    .faq-answer { padding: 0.75rem 1.5rem 1.25rem 1.5rem; }
    .answer.open { max-height: 400px; }
    .mb-3 { margin-bottom: 1rem; }
  }
  @media (max-width: 575.98px) {
    .py-7 { padding-top: 3rem; padding-bottom: 3rem; }
    .faq-toggle { padding: 0.875rem 1rem; gap: 0.5rem; }
    .faq-question { font-size: 0.95rem; line-height: 1.3; }
    .faq-icon { font-size: 1.25rem; }
    .faq-answer { font-size: 0.95rem; padding: 0.75rem 1.25rem 1rem 1.25rem; }
    .mb-3 { margin-bottom: 0.75rem; }
    .answer.open { max-height: 500px; }
  }
</style>