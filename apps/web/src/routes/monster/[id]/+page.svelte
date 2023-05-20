<div class="container">
  <div class="Header">
    <div class="Name">
      <h1>
        {monster.name[language]} | {monster.id}
        {#if monster.nameArchi && monster.nameArchi[language]}
          -
          <a href="monster/{monster.idArchiDofus}">
            {monster.nameArchi && monster.nameArchi[language]} | {monster.idArchiDofus}
          </a>
        {/if}
      </h1>
    </div>
    <div class="Image">
      <img src="/images/monsters/{monster.image}" alt={monster.name.fr} />
    </div>
    <div class="Level">
      <div class="selector-rank">
        {#each [...Array(monster.numberOfLevel).keys()] as l}
          <button class={level === l ? 'active' : ''} on:click={() => changeLevel(l)}
            >{l + 1}</button
          >
        {/each}
        <span>Level: {monster.level[level]}</span>
      </div>
    </div>
  </div>
  <div class="Stats">
    <ul>
      <li><Stats type="life" number={monster.life[level]} /></li>
      <li><Stats type="actionPoint" number={monster.pa[level]} /></li>
      <li><Stats type="movementPoint" number={monster.pm[level]} /></li>
      <li><Stats type="experiencePoint" number={monster.xp[level]} /></li>
    </ul>
    <ul>
      <li><Stats type="init" number={monster.init[level]} /></li>
      <li><Stats type="strength" number={monster.strength[level]} /></li>
      <li><Stats type="fire" number={monster.fire[level]} /></li>
      <li><Stats type="water" number={monster.water[level]} /></li>
      <li><Stats type="wind" number={monster.wind[level]} /></li>
    </ul>
    <ul>
      <li><Stats type="actionPoint" number={monster.dodgeAp[level]} /></li>
      <li><Stats type="movementPoint" number={monster.dodgeMp[level]} /></li>
    </ul>
    <ul>
      <li><Stats type="resistanceNeutral" number={monster.resistanceNeutral[level]} /></li>
      <li><Stats type="resistanceStrength" number={monster.resistanceStrength[level]} /></li>
      <li><Stats type="resistanceFire" number={monster.resistanceFire[level]} /></li>
      <li><Stats type="resistanceWater" number={monster.resistanceWater[level]} /></li>
      <li><Stats type="resistanceWind" number={monster.resistanceWind[level]} /></li>
    </ul>
  </div>
  <div class="Spell">
    {#each monster.spells as spell}
      <a href="spell/{spell.idDofus}">{spell.name[language]}</a>{' '}
    {/each}
  </div>
  <div class="SubArea">
    {#each monster.subAreas as subArea}
      <a href="subArea/{subArea.idDofus}">{subArea.name[language]}</a>{' '}
    {/each}
  </div>
  <div class="Loot">
    {#each monster.loots as loot}
      <a href="loot/{loot.idDofus}">{loot.name[language]}</a>{' '}
    {/each}
  </div>
</div>

<script lang="ts">
  import Stats from './../../../../../../packages/ui/components/Stats.svelte'
  export let data
  export let level = 0
  export const language = 'fr'

  $: monster = data.monster

  const changeLevel = (x: number) => (level = x)
</script>

<style lang="sass">
  .container
    display: grid
    grid-template-columns: 1fr 1fr 1fr 1fr
    grid-template-rows: min-content min-content 1fr 1fr 1fr 1fr 1fr
    gap: 0px 0px
    grid-auto-flow: row
    grid-template-areas: "Header Header Header Header" "Stats Stats Stats Stats" "Spell Spell Spell Spell" "SubArea SubArea SubArea SubArea" "Loot Loot Loot Loot" ". . . ." ". . . ."

  .Header
    display: grid
    grid-template-columns: 1fr 1fr 1fr
    grid-template-rows: 1fr 1fr 1fr
    gap: 0px 0px
    grid-auto-flow: row
    grid-template-areas: "Name Image Level" "Name Image Level" "Name Image Level"
    grid-area: Header

  .Name
    grid-area: Name
    h1 
      text-align: center
      font-size: 1.3em
      margin-top: 10px

  .Image
    grid-area: Image
    display: flex
    justify-content: center
    img
      height: 100px

  .Level
    grid-area: Level
    display: flex
    justify-content: center
    button 
      height: 25px
      width: 25px
      margin: 5px
      cursor: pointer
    .active
      background-color: wheat

  .Stats
    grid-area: Stats
    display: grid
    grid-template-columns: 1fr 1fr 1fr 1fr
    grid-template-rows: 1fr
    gap: 0px 0px
    grid-auto-flow: row
    grid-template-areas: ". . . ."
    ul
      display: grid
      justify-content: center
      align-items: center
        
  .Spell
    grid-area: Spell

  .SubArea
    grid-area: SubArea

  .Loot
    grid-area: Loot
  .Spell,.Loot,.SubArea
    margin-bottom: 10px
</style>
