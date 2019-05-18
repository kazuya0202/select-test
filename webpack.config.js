// const path = require('path');
module.exports = {
	module: {
		loaders: [
		  { test: /\.vue$/, loader: 'vue' },
		]
	}
    // mode: 'development',
    // context: path.resolve(__dirname),
    // entry: {
    //     index: './src/js/index.js'
    // },
    // output: {
    //     path: '/dist',
    //     publicPath: '/assets/'
    // },
    // module: {
    //     rules: [
    //         {
    //             test: /\.js$/,
    //             use: {
    //                 loader: 'babel-loader',
    //                 options: {
    //                     presets: ['@babel/preset-env']
    //                 }
    //             }
    //         },
    //         {
    //             test: /\.vue$/,
    //             use: ['vue-loader']
    //         },
    //         {
    //             test: /\.css$/,
    //             use: ['style-loader', 'css-loader']
    //         },
    //         {
    //             test: /\.(woff|woff2|eot|ttf|svg)$/,
    //             use: ['url-loader']
    //         }
    //     ]
    // },
    // resolve: {
    //     alias: {
    //         vue$: 'vue/dist/vue.esm.js'
    //     }
    // },
    // devServer: {
    //     contentBase: 'html',
    //     port: 8080
    // }
};
