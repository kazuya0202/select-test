<template lang='pug'>
.sample1
    .container
        v-card make
</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Sample1 extends Vue {}
</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';

.sample1 {
    text-align: center;
}

.container v-card {
    // margin: 5%; padding: 2%;
    width: 150px;
    background: orange;
    // vertical-align: middle;
}
</style>
