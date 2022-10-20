const { webpackConfig } = require("@rails/webpacker");
const { EnvironmentPlugin } = require("webpack");

webpackConfig.plugins.append(
  "Provide",
  new EnvironmentPlugin.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"],
  })
);

module.exports = webpackConfig;
