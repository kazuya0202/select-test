<template lang='pug'>
//-
    v-card.kazuya
        v-img(:src='require("@/assets/imgs/members/kazuya.jpg")' :aspect-ratio='1/1')
        v-card-title
            v-icon.mr-2 mdi-kickstarter
            h3 {{ name }}
        v-divider

        v-card-text {{ textIntro }}
        v-btn(color='primary' @click='onChangeCaptain' small) {{ textBtn }}
</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Kazuya extends Vue {
//     protected name = '岡村 一矢';
//     protected textIntro = 'コンピュータ部部長（仮）';
//     protected textBtn = '部長代わってあげる';
//     protected checked = false;

//     protected onChangeCaptain() {
//         this.checked = !this.checked;
//         if (!this.checked) {
//             this.$vdialog.alert('\'岡村一矢\'は部長から解放されました!');
//             this.name = '岡村 一矢（部員）';
//             this.textIntro = 'コンピュータ部プログラミング班いちやです';
//             this.textBtn = '部長に戻してあげる';
//         } else {
//             this.$vdialog.alert('\'岡村一矢\'は再び部長に戻されました!');
//             this.name = '岡村 一矢（部長）';
//             this.textIntro = 'コンピュータ部部長（再）';
//             this.textBtn = '部長変わってあげる';
//         }
//     }
}
</script>

<style lang='stylus' scoped>
// @require '~@/assets/styles/entry/_variable.styl';

// .kazuya {}
</style>
