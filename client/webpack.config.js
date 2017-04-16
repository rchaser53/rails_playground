const webpack = require('webpack');
const path = require("path");

module.exports = {
  context: path.resolve(__dirname, './src'),
    devtool: 'inline-source-map',
    entry: {
      index: "./index.tsx"
    },
    output: {
      path: path.resolve(__dirname, "../app/assets/javascripts/webpack"),
      publicPath: "/",
      filename: "bundle.js"
    },
    resolve: {
      extensions: ['.html', '.js', '.ts', '.tsx']
    },
    module: {
      rules:[{
        test: /\.(ts|tsx)$/,
        loaders:[
          'babel-loader',
          'ts-loader'
        ],
        include: path.join(__dirname, 'src')
    }, {
        test: /\.html$/,
        loader: "html-loader"
    }]
    },
    plugins: [
      new webpack.HotModuleReplacementPlugin(),
      new webpack.NoEmitOnErrorsPlugin()
    ]
};
