<template>

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand">
            <button>Home</button>
          </a>
        </div>
        <router-link to="/profile">
            <button class="button btn-default navbar-btn pull-right">Profile</button>
        </router-link>

        <button class="button btn-default navbar-btn pull-right">Stats</button>
      </div>
    </nav>

</template>


<script>

    module.exports = {
        template: "#navbar",

        data: function(){
            return {
                title: "superstar"
            }
        },
    }

</script>
