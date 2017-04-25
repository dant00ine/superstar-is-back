<template>

    <div>
        <div class="jumbotron">
            <h1>Hello, world!</h1>
            <p>...</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        </div>
        <!--  lightweight login form -->
        <form>
            <label> Email or Username </label>
            <input v-model="email" placeholder="USERNAME OR EMAIL">
            <label> Password </label>
            <input v-model="password" type="password" placeholder="PASSWORD">
            <button type="button" class="btn" @click="login">log in</button>
        </form>
    </div>

</template>

<script>

    export default {

        data () {
            return {
                email: "",
                password: ""
            }
        },

        methods : {

            login: function(){

                var sessionData = {
                    session:{
                        email: this.email,
                        password: this.password
                    }
                }

                $.ajax({
                    url: 'sessions',
                    method: 'POST',
                    data: sessionData,
                    success: (res) => {
                        console.log(res);
                        this.$emit('loginevent')
                        // route to home page
                    },
                    error: (err) => {
                        console.log(err.responseJSON);
                        this.errors = err.responseJSON.errors
                    }
                })

            },

        }

    }

</script>
