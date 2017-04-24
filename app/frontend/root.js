
var navbar = require('./navbar/navbar')
var profile = require('./profile/profile')
var stats = require('./stats/stats')
var home = require('./home/home')
var splash = require('./session/splash-page')

// import navbar from './navbar/navbar'

const routes = [
    {path: '/', component: splash},
    {path: '/profile', component: profile},
    {path: '/stats', component: stats},
    {path: '/home', component: home}
]

const router = new VueRouter({
    routes: routes
})

router.beforeEach((to, from, next) => {
    // make request to verify auth
    next()
})

var app = new Vue({
    router: router,
    el: '#root',
    components: {
        navbar: navbar
    }

})
