

const routes = [
    {path: '/profile', component: profile},
    // {path: '/stats'}
]

const router = new VueRouter({
    routes: routes
})

var app = new Vue({
    router: router,
    el: '#root'

})
