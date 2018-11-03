<template>
  <div>
    <div id="menu">
      <button @click="sect = [false,false,false,true]">Quem somos</button> |
      <button @click="sect = [false,false,true,false]">O que Fazemos</button> |
      <button @click="sect = [false,true,false,false]">Contato</button>
    </div>
    <capa v-if="sect[0]" />
    <contato v-if="sect[1]" />
    <o-que-fazemos v-if="sect[2]" />
    <quem-somos v-if="sect[3]" />
  </div>
</template>

<script>
export default {
  name: "app",
  data: _ => ({
    sect: [true, false, false, false],
  }),
};
</script>

<style scoped>
button {
  background-color: black;
  color: limegreen;
  border: 1px limegreen solid;
}
#menu {
  position: fixed;
}
</style>
