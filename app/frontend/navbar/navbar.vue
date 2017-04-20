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

      </div>
    </nav>

</template>


<script>

    module.exports = {

        data: function(){
            return {
                title: "superstar"
            }
        },
    }

</script>
