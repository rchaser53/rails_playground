const webpack = require('webpack');
const path = require("path");
const isProduction = process.env.NODE_ENV === "production";

module.exports = Object.assign({
  context: path.resolve(__dirname, './src'),
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
  target: 'web',
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
  plugins:
    [ new webpack.NoEmitOnErrorsPlugin()].concat([
      isProduction 
        ? new webpack.LoaderOptionsPlugin({
            minimize: true,
            debug: false
          })
        : new webpack.HotModuleReplacementPlugin()
    ])
},
  isProduction
    ? {}
    : {
        devtool: 'inline-source-map'
      }
 );
