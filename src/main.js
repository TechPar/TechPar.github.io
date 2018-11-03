import "./main.css"
import Vue from "vue";

import Capa from "./components/capa.vue";
import Contato from "./components/contato.vue";
import OqueFazemos from "./components/o-que-fazemos.vue";
import QuemSomos from "./components/quem-somos.vue";

Vue.component("capa", Capa);
Vue.component("contato", Contato);
Vue.component("o-que-fazemos", OqueFazemos);
Vue.component("quem-somos", QuemSomos);

import App from "./App.vue";

new Vue({
  name: "TechPar",
  render: r => r(App),
  el: "#app",
})