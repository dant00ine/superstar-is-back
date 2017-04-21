<template>

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
        <button type="button" class="btn" v-on:click="login-submit">log in</button>
    </form>

</template>

<script>

    module.exports = {

        data: function(){
            return {

            }
        }
    }

</script>
