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
    var authenticated
    var auth_token = localStorage.getItem('superstar-token')
    $.ajax({
        url: '/sessions/verify',
        headers: {Authorization: auth_token},
        success: (res) => {
            console.log(res);
            app.loggedin = true
            next()
        },
        error: (err) => {
            console.log(err);
            this.$router.push('/')
        }
    })
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
