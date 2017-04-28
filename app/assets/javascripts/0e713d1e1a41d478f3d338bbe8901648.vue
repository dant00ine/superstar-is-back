var Component = require("!../../../node_modules/vue-loader/lib/component-normalizer")(
  /* script */
  require("!!!../../../node_modules/vue-loader/lib/selector?type=script&index=0!./profile.vue"),
  /* template */
  require("!!../../../node_modules/vue-loader/lib/template-compiler/index?{\"id\":\"data-v-e1860072\"}!../../../node_modules/vue-loader/lib/selector?type=template&index=0!./profile.vue"),
  /* scopeId */
  null,
  /* cssModules */
  null
)
Component.options.__file = "/vagrant/vue_project/superstar-is-back/app/frontend/profile/profile.vue"
if (Component.esModule && Object.keys(Component.esModule).some(function (key) {return key !== "default" && key !== "__esModule"})) {console.error("named exports are not supported in *.vue files.")}
if (Component.options.functional) {console.error("[vue-loader] profile.vue: functional components are not supported with templates, they should use render functions.")}

/* hot reload */
if (module.hot) {(function () {
  var hotAPI = require("vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-e1860072", Component.options)
  } else {
    hotAPI.reload("data-v-e1860072", Component.options)
  }
})()}

module.exports = Component.exports
