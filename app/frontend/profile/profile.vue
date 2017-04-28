<template>
   

    <div>
        <h3>This is the PROFILE page</h3>

         <div>
            <img  v-if="picture.length > 0" :src="picture_url" class="img-thumbnail" width="104" height="142">
            <h3>Player Stats</h3>

            <div v-for="(value, key) in stats">
            <p><b> {{ value.name}}</b> : {{ value.stat}}</p>           
        </div>

        <label>Level</label><br>
        <template v-for="level in levels">
            <input type="radio" :id="'l_' + level.value" :value="level.value" v-model="player_level">
            <label :for="'l_' + level.value">{{level.name}}</label><br>
        </template>            
        <span>Level Picked: {{ player_level }}</span><br><br>

        <label>Position</label><br>
         <template v-for="position in positions">
            <input type="radio" :id="'p_' + position.value" :value="position.value" v-model="player_position">
            <label :for="'p_' + position.value">{{position.name}}</label><br>
        </template>            
        <span>Position Picked: {{player_position }}</span>
         </div>

                <h3>Player Match History</h3>

                <div v-for="(match, key) in match_history">
                <p><b> {{ match}}</b> : {{match}}</p>
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

                        picture:"dant00.jpg",
                         levels:[ {name:"Beginner", value:"B"}
                        ,{name:"Amature", value:"A"}
                        ,{name:"Professional", value:"P"} ],

                positions:[ {name:"Shooting Gaurd", value:"SG"}
                        ,{name:"Point Guard", value:"PG"}
                        ,{name:"Small Forward", value:"SF"}
                        ,{name:"Power Forward", value:"PF"}
                        ,{name:"Center", value:"C"}  ],
                player_level:"B",
                player_position:"PG"


            }
        },
      computed: {
            picture_url: {
                // getter
                get: function () {
                    try{
                        return require("file-loader!./" + this.picture)
                    }catch(e){
                        return "not found"
                    }
                },
                // setter
                set: function (picture) {
                    this.picture = picture

                }
            },

            match_history: {
                // getter
                get: function () {
                return{}
                },
                
            }
      }
}
        
  

</script>
