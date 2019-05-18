<template lang='pug'>
.sample2
    v-layout(row='' justify-center='')
        v-btn(color='primary' dark='' @click.stop='dialog = true')
            | Open Dialog
        v-dialog(v-model='dialog' max-width='290')
            v-card
                v-card-title.headline Use Google's location service?
                v-card-text
                    | Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.
                v-card-actions
                    v-spacer
                    v-btn(color='green darken-1' flat='flat' @click='dialog = false')
                        | Disagree
                    v-btn(color='green darken-1' flat='flat' @click='dialog = false')
                        | Agree

    p
        | The button above has been clicked
        span.strong {{ counter }}
        | times.
        v-btn(@click='counter += 1') Add 1

    v-text-field(label='input content' v-model='text')

    v-btn(@click='myAlert')
        | Pushing this button pop up alert.
    v-checkbox(label='method')


    //- h1 高専とは？
        p
            | 高専は、中学校卒業生を受け入れて、5年間一貫教育で優れた専門技術者を養成する学校です。
        br
        |  また、高校や中学校は中等教育機関ですが、高専は大学、短大と同じ高等教育機関です。
        br
        br
        h2 大島商船高等専門学校 学科
        ul
        a(href="http://www.oshima-k.ac.jp/subject/shousen/")
            li 商船学科
        a(href="http://www.oshima-k.ac.jp/subject/denshi/")
            li 電子機械工学科
        a(href="http://www.oshima-k.ac.jp/subject/jouhou/")
            li 情報工学科

</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Sample2 extends Vue {
    protected counter = 0;
    protected dialog = false;

    protected text = 'init';

    protected myAlert() {
        this.$vsnackbar.alert(`your type text in text-field >> ${this.text}`);
    }
}

</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';

.sample2 {}
.strong {
    color: red;
    // font-size: 1.2em;
    margin: 0 5px
}
</style>
