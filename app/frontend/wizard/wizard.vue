<style>

    .skillbox input[type="radio"] {
        display: none;
    }

    .skillbox input[type="radio"]:checked ~ #beginner {
        background-color: green;
        color: white;
    }

    .skillbox input[type="radio"]:checked ~ #intermediate {
        background-color: blue;
        color: white;
    }

    .skillbox input[type="radio"]:checked ~ #expert {
        background-color: red;
    }

    .skillbox label{
        outline: 1px solid black;
        padding: 10px 50px;
    }

    .skillbox label:hover{
        outline: 2px solid black;
        font-size: 1.1em;
    }

    .plus-button {
        font-weight: bold;
        font-size: 1.5em;
    }
    .minus-button {
        font-weight: bold;
        font-size: 1.5em;
    }
    .stat-picker {
        user-select: none;
        border-bottom: 1px dotted grey
    }
    .stat-picker h4 {
        display: inline-block;
    }

</style>

<template>

    <div>

<!-- SELECT YOUR SKILL LEVEL  -->

        <h3>Select your skill level!</h3>

        <div class="col-xs-4 skillbox" @click="setPoints(50)">
            <input id="beginner_button" type="radio" v-model="superstar.skillLevel" value="Beginner">
            <label for="beginner_button" id="beginner">Beginner</label>
        </div>

        <div class="col-xs-4 skillbox" @click="setPoints(75)">
            <input id="intermediate_button" type="radio" v-model="superstar.skillLevel" value="Intermediate">
            <label for="intermediate_button" id="intermediate">Intermediate</label>
        </div>

        <div class="col-xs-4 skillbox" @click="setPoints(100)">
            <input id="expert_button" type="radio" v-model="superstar.skillLevel" value="Expert">
            <label for="expert_button" id="expert">Expert</label>
        </div>

<br><br><br><br><br>


<!-- SELECT YOUR POSITION  -->

        <div class="">

            <h3>Favorite Position?</h3>
            <div class="row">
                <div class="col-xs-3">
                    <label class="skillbox">PointGuard
                        <input type="radio" v-model="superstar.position" value="PointGuard">
                    </label>
                </div>

                <div class="col-xs-3">
                    <label class="skillbox">Center
                        <input type="radio" v-model="superstar.position" value="Center">
                    </label>
                </div>

                <div class="col-xs-3">
                    <label class="skillbox">SmallForward
                        <input type="radio" v-model="superstar.position" value="SmallForward">
                    </label>
                </div>

                <div class="col-xs-3">
                    <label class="skillbox">PowerForward
                        <input type="radio" v-model="superstar.position" value="PowerForward">
                    </label>
                </div>
            </div>

            <div class="row">

            </div>
            <div class="col-xs-6">
                <label class="skillbox">ShootingGuard
                    <input type="radio" v-model="superstar.position" value="ShootingGuard">
                </label>
            </div>

            <div class="col-xs-6">
                <label class="skillbox">NoClue
                    <input type="radio" v-model="superstar.position" value="NoClue">
                </label>
            </div>

        </div>


        <br><br><br><br><br>

        <!-- SELECT YOUR USERNAME  -->
        <h3>Select your Username</h3>
        <label> Username:
            <input type="text" v-model="superstar.username" value="" placeholder="Select your username">
        </label>


        <br><br><br><br><br>

        <!-- Adjust your stats  -->
        <h3>Adjust your stats</h3>
        <h4>Unused points: {{remainingPoints}}</h4>
        <h4>Total points: {{superstar.totalPoints}}</h4>

        <div class="stat-picker">
            <h4>Speed:</h4>
            <span class="minus-button" @click="decrementStat('speed')">-</span>
            <span>{{this.superstar.stats.speed}}</span>
            <span class="plus-button" @click="incrementStat('speed')">+</span>
        </div>

        <div class="stat-picker">
            <h4>Strength:</h4>
            <span class="minus-button" @click="decrementStat('strength')">-</span>
            <span>{{this.superstar.stats.strength}}</span>
            <span class="plus-button" @click="incrementStat('strength')">+</span>
        </div>



    </div>



</template>

<script>

export default {
    data() {
        return {
            superstar: {
                totalPoints: 0,
                skillLevel: "",
                position: "",
                username: "",
                stats: {
                    speed: 0, strength: 0, endurance: 0, shot: 0,
                    rebound: 0, pass: 0, guard: 0, block: 0,
                    steal: 0, turnover: 0, layup: 0, tussle: 0,
                    speed: 0
                }
            }

        }
    },

    methods: {
        createUser: function(){

        },
        setPoints: function(num){
            this.superstar.totalPoints = num
        },
        incrementStat: function(stat){
            if(this.superstar.totalPoints > 0){
                this.superstar.stats[stat] += 1
            }
        },
        decrementStat: function(stat){
            if(this.superstar.stats[stat] > 0){
                this.superstar.stats[stat] -= 1
            }

        }
    },

    computed: {
        remainingPoints: function() {
            return this.superstar.totalPoints - (parseInt(this.superstar.stats.speed) + parseInt(this.superstar.stats.strength))
        }
    }
}

</script>
