<template>

    <div>
        <h1>Welcome to Super Star is Back!!!(Dojo League)</h1>
        <p>Prove you still have it in You!. Join a Dojo team of your choice via avaliable matches.</p>
        <p>You can create your own <button @click.stop="showModal = true">match</button></p>       
        

        <label>Up coming Dojo Basket Ball Matches </label>
        <div v-for="match in get_matches" >    
            <matches  :name="match.name" :match="match"></matches>
        </div>

        <modal v-if="showModal" :style="{display:block, width:'700px'}"  @modalclose="showModal=false"></modal>

    </div>
</template>

<script>
    
 
</script>

<script>
 
    module.exports = {

        data: function(){
            return {
               showModal :false,
               block:"block"   
            }
        },

        methods: {

           
           
         },
         computed:{
            get_matches:function(){
              return [{name:"Lion Bowl", homeTeam:"Dojo first Stack", awayTeam:"Dojo second Stack", eventDate:new Date()},
                      {name:"Lion Bowl", homeTeam:"Dojo first Stack", awayTeam:"Dojo second Stack", eventDate:new Date()},
              ]
             }
         },
         components: {
             matches:require("../matches/matches"),
             modal: require("../modals/create_match")              
             }
         

    }

</script>
 