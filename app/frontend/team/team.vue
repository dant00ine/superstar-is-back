<template>

    <div>
         <div>
            <h2>{{team_name()}}</h2>
            <table class="table">
                <tr>                   
                    <th>Player</th>
                    <th>Position</th> 
                    <th>Level</th>                     
                </tr>
                <tr v-for="player in get_players()">                   
                    <td>{{player.name}}</td>
                    <td>{{player.position}}</td> 
                    <td>{{player.level}}</td>                                     
                </tr>      
            </table>                     
        </div>

    </div>
</template>

<script>
 
    module.exports = {
        props:['team'],

        data: function(){
            return {}
        },
        computed:{            
            
        },

        methods: {             
            get_players:function(){ 

                //To Do get list of players on team instead
                return [{name:"Monday Ayewa", position:"Center", level:"Amature"}, {name:"Dan Dojo", position:"Center", level:"Professional"}]
            },       
            team_name:function(){ 
                return this.team.name
            }  
        }   
    }

</script>
