<template>

 <div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <span @click.stop="close" class="close">&times;</span>
        <div>
            <div class="form-group">
                <label for="match_name">Match Name</label>
                <input type="text" class="form-control" id="match_name" placeholder="Name Name" v-model="matchName">
            </div>
            <div class="form-group">
                <label for="home_team">Home Team</label>
                <input type="text" class="form-control" id="home_team" placeholder="Team Name" v-model="homeTeam">
            </div>
            <div class="form-group">
                <label for="away_team">Away Team</label>
                <input type="text" class="form-control" id="away_team" placeholder="Team Name" v-model="awayTeam">
            </div>        
            <div class="form-group">
                <label for="event_date">Evnet Date</label>
                <input type="datetime-local" class="form-control" id="event_date"  v-model="eventDate">
            </div> 
            <button @click.stop="submit" class="btn btn-info">Submit</button>
        </div>
    </div>
</div>
</template>
<script>
 
    module.exports = Vue.component('modal', {

        data: function(){

            return {
                eventDate:new Date(),
                homeTeam:"",
                awayTeam:"",
                matchName:""
            }
        },
        methods: {
            close:function()
            {this.$emit('modalclose')},

            submit:function(){
                
            }
        }
        
    });

</script>
 