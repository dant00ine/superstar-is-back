<template>
   

    <div>
        <h3>This is the PROFILE page</h3>
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
        <div>
        </div>
        
    </div>


</template>

<script>

    module.exports = {

        data: function(){
            return {
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
        }
    }

</script>
