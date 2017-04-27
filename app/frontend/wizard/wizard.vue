<template>

    <div>

        <input class="skillbox" type="radio" v-model="skillLevel" value="Beginner">
        <input class="skillbox" type="radio" v-model="skillLevel" value="Intermediate">
        <input class="skillbox" type="radio" v-model="skillLevel" value="Expert">

    </div>

</template>

<script>

export default {
    data() {
        return {
            skillLevel: ""
        }
    }
}

</script>

<style>

    .skillbox{
        outline: 1px solid black;
    }

</style>
