<template>

    <div>
        <img  v-if="picture.length > 0" :src="picture_url">
        <h3>Player Stats</h3>

        <div v-for="(value, key) in stats">
           <p><b> {{ value.name}}</b> : {{ value.stat}}</p>
         </div>
    </div>

</template>

<script>

    module.exports = {

        props:["picture_relative_url"],

        data: function(){
            return {
                     stats:{ rebound:{name:"Rebound", stat:0},
                            assist:{name:"Assit", stat:0},
                            blocks:{name:"Blocks", stat:0},
                            steals:{name:"Steals", stat:0},
                            turnOvers:{name:"Turn Over", stat:0},
                            points:{name:"Points", stat:0},
                            threePoits:{name:"3 Points", stat:0},
                            freeThrows:{name:"Free Throws", stat:0}
                        },

                        picture:"dant00.jpg"


            }
        },
      computed: {
            picture_url: {
                // getter
                get: function () {
                return require("file-loader!./" + this.picture)
                },
                // setter
                set: function (picture) {
                    this.picture = picture

                }
            }
      }
    }

</script>
