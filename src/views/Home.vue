<template lang='pug'>
.home.elevation-5
    form
        select(v-model='selected')
            option(value='') Please select one
            option A
            option B
            option C

    span selected: {{ selected }}

</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Home extends Vue {
    protected selected = '';
}
</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';

.home
    width: 80%
    margin-left: auto
    margin-right: auto
    height: 100%

    *
        padding: .5rem
        margin: .5rem

    select
        border: solid 1px #1abc9c
        border-radius: 10px
        box-shadow: 0 0 7px #1abc9c
</style>
