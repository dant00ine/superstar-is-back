import navbar from './navbar/navbar'
import profile from './profile/profile'
import stats from './stats/stats'
import home from './home/home'
import splash from './session/splash-page'

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
    },
    data: {
        loggedin: false
    },
    methods: {
        toggleNav: function(){
            this.loggedin = !this.loggedin
        }
    }

})
