<div class="grid-container">
  {#each monsters as monster}
    <div class="grid-item">
      <!-- <span>{monster.name.fr}</span> -->
      <a href="/monster/{monster.idDofus}">
        <img src="/images/monsters/{monster.image}" alt={monster.name.fr} />
      </a>
    </div>
  {/each}
</div>

<script lang="ts">
  export let data

  export let monsters = data.monsters
</script>

<style lang="sass">
  .grid-container 
    display: grid
    grid-template-columns: auto auto auto auto
    grid-template-row: auto auto auto auto
    padding: 10px

  .grid-item 
    width: calc( 25vw - 10px - 10px)
    height: calc( 33.33333vh - 10px - 10px - 60px)
    padding: 5px
    font-size: 30px
    text-align: center
    img
      // max-width: 100%
      // max-height: 100%
      min-width: auto
      min-height: 100%
      max-width: calc( 25vw - 10px - 10px)
      max-height: calc( 33.33333vh - 10px - 10px - 60px)
      object-fit: cover

</style>
