<template>

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">
              <router-link to="/home">
                  <button>Home</button>
              </router-link>
          </a>
        </div>

        <router-link to="/profile">
            <button class="button btn-default navbar-btn pull-right">Profile</button>
        </router-link>

        <router-link to="/stats">
            <button class="button btn-default navbar-btn pull-right">Stats</button>
        </router-link>

        <button v-if="loggedin" @click="logout"
        class="button btn-default navbar-btn pull-right">
        Logout </button>

      </div>
    </nav>

</template>


<script>

    export default {

        props: ['loggedin'],

        data: function(){
            return {
                title: "superstar"
            }
        },

        methods: {
            logout: function(){
                let auth_token = localStorage.getItem('superstar-token')
                if(!auth_token){ this.$router.push('/'); return }
                $.ajax({
                    url: '/sessions/' + auth_token,
                    method: 'DELETE',
                    headers: { Authorization: auth_token },
                    success: (res) => {
                        console.log(res);
                        this.$router.push('/')
                    },
                    error: (err) => {
                        console.log(res);
                    }
                })
            }
        }
    }

</script>
