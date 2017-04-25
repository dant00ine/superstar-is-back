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

        <button class="btn" @click="testapi">TEST API</button>
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
                    url: '/sessions',
                    method: 'POST',
                    header: 'Accept: application/vnd.superstar-is-back.v1',
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: "JSON",
                    data: sessionData
                })

            },

            testapi: function(){

                $.ajax({
                    url: '/users/1',
                    header: 'Accept: application/vnd.superstar-is-back.v1'
                })
            }

        }

    }

</script>
