import navbar from './navbar/navbar'
import splash from './session/splash-page'

import wizard from './wizard/wizard'

import profile from './profile/profile'
import stats from './stats/stats'
import home from './home/home'


const routes = [
    {path: '/', component: splash},
    {path: '/wizard', component: wizard},
    {path: '/profile', component: profile},
    {path: '/stats', component: stats},
    {path: '/home', component: home}
]

const router = new VueRouter({
    routes: routes
})

router.beforeEach((to, from, next) => {
    // make request to verify auth

    if(to.path == '/wizard' || to.path == '/'){ next() }
    else {
        var auth_token = localStorage.getItem('superstar-token')
        $.ajax({
            url: '/sessions/verify',
            headers: { Authorization: auth_token },
            success: (res) => {
                app.loggedin = true
                localStorage.setItem('user-info', res.current_user)
                next()
            },
            error: (err) => {
                app.loggedin = false
                router.push('/')
            }
        })
    }

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
