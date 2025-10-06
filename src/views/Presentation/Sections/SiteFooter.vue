<script setup>
const year = new Date().getFullYear();
</script>

<template>
  <footer class="bg-gray-900 py-6 px-4 mt-5">
    <div class="container">
      <div class="row align-items-start">
        <!-- Bloco 1: Marca -->
        <div class="col-lg-4 col-md-6 col-12 mb-2 mb-lg-0 text-center text-lg-start">
          <h6 class="text-white mb-2">SSTSuite</h6>
          <p class="text-white-80 text-sm mb-0">
            Softwares para Saúde e Segurança do Trabalho e Ergonomia.
          </p>
        </div>

        <!-- Bloco 2: Endereço -->
        <div class="col-lg-4 col-md-6 col-12 mb-2 mb-lg-0 text-center text-lg-start">
          <h6 class="text-white mb-2">Endereço</h6>
          <p class="text-white-80 text-sm mb-0">Rua Santo Antônio, 145, Centro, Uberaba, Minas Gerais, 38.010-160</p>
        </div>

        <!-- Bloco 3: Copyright -->
        <div class="col-lg-4 col-12 text-center text-lg-end mt-3 mt-lg-0">
          <p class="text-white-80 text-sm mb-0">© SSTSuite {{ year }}. Todos os Direitos Reservados</p>
        </div>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.bg-gray-900 {
  background-color: #111827;
}
.py-6 { padding-top: 2rem; padding-bottom: 2rem; }
.px-4 { padding-left: 1rem; padding-right: 1rem; }
.text-white-80 { color: rgba(255, 255, 255, 0.8); }
.text-sm { font-size: 0.875rem; }
</style>