
require('./navbar/navbar')

// import navbar from './navbar/navbar'

const routes = [
    // {path: '/profile', component: profile},
    // {path: '/stats', component: stats},
    // {path: '/main', component: home}
]

const router = new VueRouter({
    routes: routes
})

var app = new Vue({
    router: router,
    el: '#root'

})
