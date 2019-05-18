<template lang='pug'>
.html-sample
    | <p class='red' readonly>hoge</p>
    p.red(readonly) hoge

    p.
        hogehoge<br />
        fugafuga<br />
        hoge
</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class HtmlSample extends Vue {}
</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';

.html-sample {}
</style>
