<template lang='pug'>
.sample3
    #center
        v-chip(color='success' text-color='white') task manager
    .container
        v-container(grid-list-md text-xs-center)
            v-layout(row wrap)
                v-flex(xs12)
                    v-card(dark color='#00838F' v-for='i in 3')
                        v-card-text
                            v-checkbox(label='Vuetify')
                            v-rating(v-model='rating' background-color='orange' color='orange' small hover)

    #app
        p(v-for='obj in object') {{ obj }}
        //- accordions(v-for='item in items' ::item='item')



</template>

<script lang='ts'>
import { Component, Vue } from 'vue-property-decorator';

@Component
export default class Sample3 extends Vue {
    protected rating = 3;

}

    const app = ({
        el: '#app',
        data: {
            object: [
                { firstName: 'kazuya' },
                { lastName: 'okamura' },
                { age: 30 },
            ],
        },
    });
</script>

<style lang='stylus' scoped>
@require '~@/assets/styles/entry/_variable.styl';
.sample3 {}

.container {
    height: 300px;
    overflow-y: auto;
    width: auto;
    background: #FF80AB;

    * {
        margin-bottom: 3%;
        overflow-y: visible;
    }
}

#center {
    text-align: center;
    * {
        padding: 0 10%;
    }
}



//- スクロールバーの設定
// ::-webkit-scrollbar{
//     width: 10px;
// }
// ::-webkit-scrollbar-track{
//     background: #fff;
//     border-left: solid 1px #ececec;
// }
// ::-webkit-scrollbar-thumb{
//     background: #ccc;
//     border-radius: 10px;
//     box-shadow: inset 0 0 0 2px #fff;
// }

div::-webkit-scrollbar{
    width: 6px;
}
div::-webkit-scrollbar-track{
    background: #fff;
    border: none;
    border-radius: 10px;
    box-shadow: inset 0 0 2px #777;
}
div::-webkit-scrollbar-thumb{
    background: #aaa;
    border-radius: 10px;
    box-shadow: none;
}

</style>
