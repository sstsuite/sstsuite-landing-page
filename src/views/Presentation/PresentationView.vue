<script setup>
import { onMounted, onUnmounted } from "vue";

//example components
import NavbarDefault from "../..//examples/navbars/NavbarDefault.vue";
import SiteFooter from "./Sections/SiteFooter.vue";
import Header from "../../examples/Header.vue";

// sections
import About from "./Sections/About.vue";
import MainFeatures from "./Sections/MainFeatures.vue";
import BenefitsAudience from "./Sections/BenefitsAudience.vue";
import PlansPricing from "./Sections/PlansPricing.vue";
import FAQ from "./Sections/FAQ.vue";
import FinalCTA from "./Sections/FinalCTA.vue";

//images
import vueMkHeader from "@/assets/img/hero.jpg";


//hooks
const body = document.getElementsByTagName("body")[0];
onMounted(() => {
  body.classList.add("presentation-page");
  body.classList.add("bg-gray-200");
});
onUnmounted(() => {
  body.classList.remove("presentation-page");
  body.classList.remove("bg-gray-200");
});
</script>

<template>
  <div class="container position-sticky z-index-sticky top-0">
    <div class="row">
      <div class="col-12">
        <NavbarDefault :sticky="true" />
      </div>
    </div>
  </div>
  <Header>
    <div
      class="page-header min-vh-100"
      :style="`background-image: url(${vueMkHeader})`"
      loading="lazy"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-7 text-center mx-auto position-relative">
            <h1
              class="text-white pt-3 mt-n5 me-2"
              :style="{ 
                display: 'inline-block ', 
                textShadow: '2px 2px 4px rgba(0, 0, 0, 0.8)' 
              }"
            >
              Soluções inteligentes para Segurança, Saúde e Ergonomia do Trabalho
            </h1>
            <p 
              class="lead text-white px-5 mt-3" 
              :style="{ 
                fontWeight: '500',
                textShadow: '2px 2px 4px rgba(0, 0, 0, 0.8)'
              }">
              Centralize documentos, automatize processos e garanta conformidade legal em poucos cliques.
            </p>
          </div>
        </div>
      </div>
    </div>
  </Header>

  <!-- Seção About - Problema que resolve -->
  

  <div class="card card-body blur shadow-blur mx-3 mx-md-4 mt-n6">
    <section id="about">
      <About />
    </section>
    <section id="features">
      <MainFeatures />
    </section>
    <section id="benefits">
      <BenefitsAudience />
    </section>
    <section id="plans">
      <PlansPricing />
    </section>
    <section id="faq">
      <FAQ />
    </section>
    <section id="cta">
      <FinalCTA />
    </section>
  </div>

  <SiteFooter />

</template>
