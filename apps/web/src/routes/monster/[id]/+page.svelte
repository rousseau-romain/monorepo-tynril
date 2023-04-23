<h1>{monster.name} | {monster.id}</h1>

<div class="selector-rank">
  {#each monster.numberOfLevel as l}
    <button class={level === l ? 'active' : ''} on:click={() => changeLevel(l)}>{l + 1}</button>
  {/each}
</div>

<ul>
  <li><span>Level: </span>{monster.level[level]}</li>
  <li><span>Pa: </span>{monster.pa[level]}</li>
  <li><span>Pa: </span>{monster.pa[level]}</li>
  <li><span>Xp: </span>{monster.xp[level]}</li>
  <li><span>Init: </span>{monster.init[level]}</li>
  <li><span>Vie: </span>{monster.life[level]}</li>
  <li><span>Force: </span>{monster.strength[level]}</li>
  <li><span>Feu: </span>{monster.fire[level]}</li>
  <li><span>Eau: </span>{monster.water[level]}</li>
  <li><span>Air: </span>{monster.wind[level]}</li>
  <li><span>Esquive Pa: </span>{monster.dodgeAp[level]}%</li>
  <li><span>Esquive Pm: </span>{monster.dodgeMp[level]}%</li>
  <li><span>Resistances Neutre: </span>{monster.resistanceNeutral[level]}%</li>
  <li><span>Resistances Terre: </span>{monster.resistanceStrength[level]}%</li>
  <li><span>Resistances Feu: </span>{monster.resistanceFire[level]}%</li>
  <li><span>Resistances Eau: </span>{monster.resistanceWater[level]}%</li>
  <li><span>Resistances Air: </span>{monster.resistanceWind[level]}%</li>
</ul>

<script lang="ts">
  import type { PageData } from './$types'
  export let data: PageData
  export let level: number = 0

  $: monster = data.monster

  const changeLevel = (x: number) => (level = x)
</script>

<style lang="sass">
  h1 
    text-align: center
  .selector-rank 
    button 
      height: 25px
      width: 25px
      margin: 5px
  .active
    background-color: wheat
</style>
