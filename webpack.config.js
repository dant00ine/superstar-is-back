var path = require('path');
var webpack = require('webpack');
// var webpackMerge = require('webpack-merge');

var config = module.exports = {
    context: __dirname,
    entry: './app/frontend/root.js',
    module: {
        rules: [
            {
                test: /\.vue$/,
                loader: 'vue-loader',
                 options: {
          // `loaders` will overwrite the default loaders.
          // The following config will cause all <script> tags without "lang"
          // attribute to be loaded with coffee-loader
          loaders: {
                test: /\.css$/,
                loader: 'css-loader'
          },

          // `preLoaders` are attached before the default loaders.
          // You can use this to pre-process language blocks - a common use
          // case would be build-time i18n.
          preLoaders: {
            
          },

          // `postLoaders` are attached after the default loaders.
          //
          // - For `html`, the result returned by the default loader
          //   will be compiled JavaScript render function code.
          //
          // - For `css`, the result will be returned by vue-style-loader
          //   which isn't particularly useful in most cases. Using a postcss
          //   plugin will be a better option.
          postLoaders: {
            test: /vue-icons/, loader: "callback-loader"
          },
          callbackLoader: require("vue-icons/icon-loader")(["fa-thumbs-up"]) ,

          // `excludedPreLoaders` should be regex
          //excludedPreLoaders: /(eslint-loader)/
        }
                
            },
            
        ]
    }
    
   
};

config.output = {
  // this is our app/assets/javascripts directory, which is part of the Sprockets pipeline
  path: path.join(__dirname, 'app', 'assets', 'javascripts'),
  // the filename of the compiled bundle, e.g. app/assets/javascripts/bundle.js
  filename: 'bundle.js',
  // if the webpack code-splitting feature is enabled, this is the path it'll use to download bundles
  publicPath: '/assets',
};

config.resolve = {
  // tell webpack which extensions to auto search when it resolves modules. With this,
  // you'll be able to do `require('./utils')` instead of `require('./utils.js')`
  extensions: ['.vue', '.js'],
  // by default, webpack will search in `web_modules` and `node_modules`. Because we're using
  // Bower, we want it to look in there too
  // modulesDirectories: [ 'node_modules', 'bower_components' ],

};

// config.plugins = [
//   // we need this plugin to teach webpack how to find module entry points for bower files,
//   // as these may not have a package.json file
//   new webpack.ResolverPlugin([
//     new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin('.bower.json', ['main'])
//   ])
// ];
