<script setup>
</script>

<template>
  <section class="cta-section py-20 px-3 text-center">
    <div class="container">
      <h2 class="title">Garanta a conformidade em SST da sua empresa hoje mesmo</h2>
      <p class="subtitle">Centralize seus processos, automatize relatórios e elimine retrabalho</p>

      <div class="cta-wrapper">
        <button class="cta-btn transition" aria-label="Solicitar demonstração">
          Registre-se agora
        </button>
      </div>
    </div>
  </section>
</template>

<style scoped>
.cta-section {
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

  background: linear-gradient(180deg, var(--dark-blue), var(--blue));
  color: var(--light);
  animation: fadeIn 0.4s ease-in;
}

.py-20 {
  padding-top: 6rem;
  padding-bottom: 6rem;
}

.px-6 { padding-left: 1.5rem; padding-right: 1.5rem; }

.title {
  font-size: 1.875rem; /* text-3xl */
  font-weight: 700; /* font-bold */
  color: #ffffff;
}

.subtitle {
  font-size: 1.125rem; /* text-lg */
  color: rgba(255,255,255,0.9);
  margin-top: 0.5rem;
}

.cta-wrapper { margin-top: 1.5rem; }

.transition { transition: background-color 0.2s ease, transform 0.15s ease, box-shadow 0.2s ease; }

.cta-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  padding: 0.8rem 1.75rem;
  border-radius: 0.75rem; /* rounded-lg */
  background-color: var(--green);
  color: #fff;
  border: 1px solid var(--green);
  font-weight: 700;
  box-shadow: 0 10px 15px -10px rgba(0,0,0,.35);
}
.cta-btn:hover {
  filter: brightness(0.96);
  border-color: var(--green);
  transform: translateY(-1px);
  box-shadow: 0 14px 28px -12px rgba(0,0,0,.4);
}
.cta-btn:active {
  transform: translateY(0);
}
.cta-btn:focus { outline: none; box-shadow: 0 0 0 3px rgba(129,212,58,.35); }

@media (min-width: 768px) {
  .title { font-size: 2.25rem; /* md:text-4xl */ }
  .subtitle { font-size: 1.25rem; /* md:text-xl */ }
}

/* Responsividade --------------------------- */
@media (max-width: 991.98px) {
  .py-20 { padding-top: 4rem; padding-bottom: 4rem; }
  .title { font-size: 1.75rem; }
  .subtitle { font-size: 1.0625rem; }
  .cta-wrapper { margin-top: 1.25rem; }
  .cta-btn { padding: 0.75rem 1.5rem; }
}

@media (max-width: 575.98px) {
  .py-20 { padding-top: 3.25rem; padding-bottom: 3.25rem; }
  .title { font-size: 1.5rem; line-height: 1.3; }
  .subtitle { font-size: 1rem; line-height: 1.5; }
  .cta-wrapper { margin-top: 1rem; }
  .cta-btn { width: 100%; padding: 0.7rem 1.25rem; font-size: 1rem; border-radius: 0.75rem; }
  .container { padding-left: 0.75rem; padding-right: 0.75rem; }
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(8px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>