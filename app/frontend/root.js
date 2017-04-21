
var navbar = require('./navbar/navbar')
var profile = require('./profile/profile')
var stats = require('./stats/stats')
var home = require('./home/home')

// import navbar from './navbar/navbar'

const routes = [
    {path: '/profile', component: profile},
    {path: '/stats', component: stats},
    {path: '/home', component: home}
]

const router = new VueRouter({
    routes: routes
})

// router.beforeEach((to, from) => {
//     // make request to verify auth
// })

var app = new Vue({
    router: router,
    el: '#root',
    components: {
        navbar: navbar
    }

})
