<template>

    <div>
         <div>
            <table class="table">
                <tr v-if="hasHeader">
                    <th></th>
                    <th>Name</th>
                    <th>Home Team</th> 
                    <th>Away Team</th> 
                    <th>Date time</th> 
                    <th>Action</th>
                </tr>
                <tr>
                    <td><button @click="toggle(expand)" >{{expand}}</button></td>
                    <td>{{get_name()}}</td>
                    <td>{{home_team_name()}}</td> 
                    <td>{{away_team_name()}}</td> 
                    <td>{{event_date()}}</td> 
                    <td><button v-if="needsToJoin()" @click.stop="join_match" >Join</button> </td>
                </tr>      
            </table> 
            <div v-if="expand == '-'">
                <div>
                    <div class = "the_match">
                        <team :team="home_team"></team>
                    </div>
                    <div class = "the_match"><h1>VS</h1></div>
                    <div class = "the_match">
                         <team :team="away_team"></team>
                    </div>
                </div>
            </div>           
        </div>

    </div>
</template>

<script>
 
    module.exports = {
        props:['header', 'match', 'player'],

        data: function(){
            return {
                    expand: "+",
                    
            }
        },
        computed:{
            hasHeader:function(){
                return this.header === undefined ? true : this.header 
            },
            home_team:function(){ return {name:this.match.homeTeam}},
            away_team:function(){ return {name:this.match.awayTeam}}            
        },

        methods: {            
            toggle:function(expand){
                console.log("toggle")
                                 if (expand == "+") 
                                    this.expand = "-"
                                 else
                                   this.expand = "+" 
            },
            get_name:function(){ return this.match.name},         
            home_team_name:function(){ return this.match.homeTeam},
            away_team_name:function(){ return this.match.awayTeam},
            event_date:function(){return this.match.eventDate.toString()},
            needsToJoin:function(){return true},    
            join_match:function(){return}
        } ,

        components: {
             team:require("../team/team"),                          
             }
         
     }

</script>
