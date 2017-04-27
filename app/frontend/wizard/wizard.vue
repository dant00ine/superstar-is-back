<template>

    <div>

<!-- SELECT YOUR SKILL LEVEL  -->

        <h3>Select your skill level!</h3>

        <div class="col-xs-4">
            <label class="skillbox">Beginner
                <input type="radio" v-model="superstar.skillLevel" value="Beginner">
            </label>
        </div>

        <div class="col-xs-4">
            <label class="skillbox">Intermediate
                <input type="radio" v-model="superstar.skillLevel" value="Intermediate">
            </label>
        </div>

        <div class="col-xs-4">
            <label class="skillbox">Expert
                <input type="radio" v-model="superstar.skillLevel" value="Expert">
            </label>
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
        <h2>Unused points: </h2>




    </div>



</template>

<script>

export default {
    data() {
        return {
            superstar: {
                skillLevel: "",
                position: ""
            }

        }
    }
}

</script>

<style>

    .skillbox{
        outline: 1px solid black;
        padding: 10px 50px;
        margin-left: 30%;
    }

</style>
