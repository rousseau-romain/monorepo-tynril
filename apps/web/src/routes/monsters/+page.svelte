<div class="grid-container">
  {#each monsters as monster}
    <div class="grid-item">
      <a href="/monster/{monster.idDofus}">
        <span>{monster.name.fr}</span>
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
    padding: 10px

  .grid-item 
    width: calc( 25vw - 10px - 10px)
    height: calc( 33.33333vh - 10px - 10px - 60px)
    padding: 5px
    font-size: 30px
    text-align: center
    position: relative
    a
      img
        height: 100%
        width: 100%
        object-fit: contain
        transition: 0.3s
        &:hover
          transform: scale(1.1)
      span
        position: absolute
        top: 0
        left: 0
        width: 100%
        text-align: center
        color: black

</style>
