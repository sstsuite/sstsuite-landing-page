<script setup>
import { RouterLink } from "vue-router";
import { ref, watch } from "vue";
import { useWindowsWidth } from "../../assets/js/useWindowsWidth";

// images
import ArrDark from "@/assets/img/down-arrow-dark.svg";
import DownArrWhite from "@/assets/img/down-arrow-white.svg";

const props = defineProps({
  action: {
    type: Object,
    route: String,
    color: String,
    label: String,
    default: () => ({
      route: "https://www.creative-tim.com/product/vue-material-kit",
      color: "bg-gradient-success",
      label: "Free Download"
    })
  },
  transparent: {
    type: Boolean,
    default: false
  },
  light: {
    type: Boolean,
    default: false
  },
  dark: {
    type: Boolean,
    default: false
  },
  sticky: {
    type: Boolean,
    default: false
  },
  darkText: {
    type: Boolean,
    default: false
  }
});

// set arrow  color
function getArrowColor() {
  if (props.transparent && textDark.value) {
    return ArrDark;
  } else if (props.transparent) {
    return DownArrWhite;
  } else {
    return ArrDark;
  }
}

// set text color
const getTextColor = () => {
  let color;
  if (props.transparent && textDark.value) {
    color = "text-dark";
  } else if (props.transparent) {
    color = "text-white";
  } else {
    color = "text-dark";
  }

  return color;
};

// set nav color on mobile && desktop

let textDark = ref(props.darkText);
const { type } = useWindowsWidth();

if (type.value === "mobile") {
  textDark.value = true;
} else if (type.value === "desktop" && textDark.value == false) {
  textDark.value = false;
}

watch(
  () => type.value,
  (newValue) => {
    if (newValue === "mobile") {
      textDark.value = true;
    } else {
      textDark.value = false;
    }
  }
);
// Navegação suave para seções por ID
const scrollToId = (id) => {
  const el = document.getElementById(id);
  if (el) {
    el.scrollIntoView({ behavior: "smooth", block: "start" });
  }
  // Fecha o menu em dispositivos móveis após clicar em um link
  if (type.value === "mobile") {
    const navEl = document.getElementById("navigation");
    if (navEl && navEl.classList.contains("show")) {
      navEl.classList.remove("show");
    }
    const toggler = document.querySelector(".navbar-toggler");
    if (toggler) {
      toggler.setAttribute("aria-expanded", "false");
      toggler.classList.add("collapsed");
    }
  }
};
</script>
<template>
  <nav
    class="navbar navbar-expand-lg top-0"
    :class="{
      'z-index-3 w-100 shadow-none navbar-transparent position-absolute my-3':
        props.transparent,
      'my-3 blur border-radius-lg z-index-3 py-2 shadow py-2 start-0 end-0 mx-4 position-absolute mt-4':
        props.sticky,
      'navbar-light bg-white py-3': props.light,
      ' navbar-dark bg-gradient-dark z-index-3 py-3': props.dark
    }"
  >
    <div
      :class="
        props.transparent || props.light || props.dark
          ? 'container'
          : 'container-fluid px-0'
      "
    >
      <RouterLink
        class="navbar-brand d-none d-md-block"
        :class="[
          (props.transparent && textDark.value) || !props.transparent
            ? 'text-dark font-weight-bolder ms-sm-3'
            : 'text-white font-weight-bolder ms-sm-3'
        ]"
        :to="{ name: 'presentation' }"
        rel="tooltip"
        title="Designed and Coded by Creative Tim"
        data-placement="bottom"
      >
        SSTSuite
      </RouterLink>
      <RouterLink
        class="navbar-brand d-block d-md-none"
        :class="
          props.transparent || props.dark
            ? 'text-white'
            : 'font-weight-bolder ms-sm-3'
        "
        to="/"
        rel="tooltip"
        title="Designed and Coded by Creative Tim"
        data-placement="bottom"
      >
        SSTSuite
      </RouterLink>
      <button
        class="navbar-toggler shadow-none ms-2"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navigation"
        aria-controls="navigation"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon mt-2">
          <span class="navbar-toggler-bar bar1"></span>
          <span class="navbar-toggler-bar bar2"></span>
          <span class="navbar-toggler-bar bar3"></span>
        </span>
      </button>
      <div
        class="collapse navbar-collapse w-100 pt-3 pb-2 py-lg-0"
        id="navigation"
      >
        <ul class="navbar-nav navbar-nav-hover ms-auto">
          <li class="nav-item mx-md-2">
            <a 
              class="nav-link ps-2 cursor-pointer" 
              :class="getTextColor()" 
              @click.prevent="scrollToId('about')"
              to="/pages/landing-pages/about-us"
            >
              Sobre
            </a>
          </li>
          <li class="nav-item mx-md-2">
            <a 
              class="nav-link ps-2 cursor-pointer" 
              :class="getTextColor()" 
              @click.prevent="scrollToId('features')"
              to="/pages/landing-pages/features"
            >
              Funcionalidades
            </a>
          </li>
          <li class="nav-item mx-md-2">
            <a 
              class="nav-link ps-2 cursor-pointer" 
              :class="getTextColor()" 
              @click.prevent="scrollToId('benefits')"
              to="/pages/landing-pages/benefits"
            >
              Benefícios
            </a>
          </li>
          <li class="nav-item mx-md-2">
            <a 
              class="nav-link ps-2 cursor-pointer" 
              :class="getTextColor()" 
              @click.prevent="scrollToId('plans')"
              to="/pages/landing-pages/plans"
            >
              Planos
            </a>
          </li>
          <li class="nav-item mx-md-2">
            <a 
              class="nav-link ps-2 cursor-pointer" 
              :class="getTextColor()" 
              @click.prevent="scrollToId('faq')"
              to="/pages/landing-pages/faq"
            >
              FAQ
            </a>
          </li>
          <li class="nav-item mx-md-2">
            <a
              class="nav-link ps-2 cursor-pointer d-md-none"
              :class="getTextColor()"
              href="https://www.sstsuite.com.br/contas/registro/"
              target="_blank"
              rel="noopener noreferrer"
            >
              Registre-se
            </a>
          </li>

        </ul>
        
        <ul class="navbar-nav d-lg-block d-none">
          <li class="nav-item">
            <a
              href="https://www.sstsuite.com.br/contas/registro/"
              target="_blank"
              rel="noopener noreferrer"
              class="btn btn-sm mb-0"
              style="background-color: #0C5FCD; color: #fff;"
            >
              Registre-se
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
</template>
