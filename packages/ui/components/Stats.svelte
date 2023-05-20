<div>
  <span style="--url: {`url("/images/icons/${type}.svg")`}">{number}{Stats[type]}</span>
</div>

<script lang="ts">
  enum Stats {
    actionPoint = '',
    movementPoint = '',
    resistanceWind = ' %',
    resistanceStrength = ' %',
    resistanceFire = ' %',
    resistanceWater = ' %',
    resistanceNeutral = ' %',
    wind = '',
    strength = '',
    fire = '',
    water = '',
    experiencePoint = '',
    init = '',
    life = '',
  }
  export let type: keyof typeof Stats
  export let number: number
</script>

<style lang="sass">
  div
    display: flex
    span
      font-size: 1.2em
      display: flex
      margin: 5px 10px
      &::before
        margin-right: 10px
        display: inline-block
        height: 1.2em
        width: 1.2em
        background-size: 100% 100%
        content: ''
        background-image: var(--url)
</style>
