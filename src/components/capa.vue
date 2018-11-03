<template>
  <div class="row center-xs middle-xs">
    <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
      <img :src="imgs[i]" />
    </div>
  </div>
</template>

<script>
export default {
  name: "capa",
  data: _ => ({
    imgs: ["img/techpar.png", "img/SmallLogo.png"],
    i: 0,
    interval: null,
  }),
  created() {
    this.interval = setInterval(_ => (this.i = (this.i + 1) % this.imgs.length), 3000);
  },
  destroyed() {
    clearInterval(this.interval);
  },
};
</script>

<style>
</style>
