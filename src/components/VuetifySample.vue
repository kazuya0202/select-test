<template lang='pug'>
.vuetify-sample
    v-btn(@click='onClick') ボタン
    v-text-field(label='入力項目' v-model='text')
    p {{ text }}

    v-checkbox(label='チェックボックス' :value='true' color='red lighten-1')
    v-img.elevation-5(src='https://picsum.photos/500/300?image=1' aspect-ratio='1' position='left center')

    //- コメント
    .samples
        v-btn(color='error')
        //- THE はるか
        .hoge
            v-flex(xs12 sm6 offset-sm3)
                v-card
                    v-date-picker(
                        full-width
                        color='light-blue lighten-3' v-model='date' show-week
                    )
                    v-card-title(color='light-blue')
                        h3 Date
                    v-divider(color='red')
                    v-card-text
                        nobr
                            h5 choice :
                            h5 {{ date }}

        //- Mint Minato Yutori　由鳥
        v-slider(v-model='slider' :min='0' :max='255' label='' thumb-label)

        //- doka
        //- <v-hover>
        //-
            v-card(
            slot-scope="{ hover }"
            :class="`elevation-${hover ? 12 : 2}`"
            class="mx-auto"
            width="344")

            v-img(
                :aspect-ratio="16/9"
                src="https://cdn.vuetifyjs.com/images/cards/cooking.png")

            v-card-title(
                <div>
                <span class="headline">Cafe Badilico</span>
                <div class="d-flex">
                    <v-rating
                    :value="value"
                    color="amber"
                    dense
                    half-increments
                    readonly
                    size="14"
                    ></v-rating>
                    <div class="ml-2 grey--text text--darken-2">
                    <span>{{ value }}</span>
                    <span>({{ reviews }})</span>
                    </div>
                </div>
                </div>
                <v-spacer></v-spacer>
                <v-btn icon class="mr-0">
                <v-icon>mdi-chevron-right</v-icon>

        //- ISZRUM
        span button four type
        v-btn(color='success') Ryoma
        v-btn(color='error') Error
        v-btn(color='warning') Warning
        v-btn(color='info') Info


        //- 一矢
        v-chip(close color='purple darken-1' text-color='white') confirm

        //- Sat(mine)
        protected tex = 'Example';
        //-コメントアウトは横につけれないっぽい
        //-参照されないのかぁ
        v-btn(color='info') this.tex
</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class VuetifySample extends Vue {
    // コメント
    protected text = '初期値';
    protected date = '';
    protected beforeMount() {
        this.date = new Date().toISOString().substr(0, 10);
    }
    protected onClick() {
        this.$vsnackbar.alert(this.text);
    }
}
</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';

// コメント
.vuetify-sample {}
</style>
