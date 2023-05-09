<nav>
  <slot name="nav" />
  <a href="/">Home</a>
  <a href="/monsters">Monsters</a>
  <a href="/spells">Spells</a>
  <a href="/monster/45">Chaton</a>
  <a href="/monster/211">Kaniboul Archer</a>
</nav>
<main>
  <slot />
</main>
<footer>
  <a href="/help">help</a>
  <a href="/contact">contact</a>
  <a href="/more">more</a>
</footer>

<style lang="sass">
  nav,footer
    display: flex
    justify-content: center
    gap: 1em
    a
      font-size: 1.1em
      padding: 1em 1.25em
      text-transform: capitalize
      text-decoration: none
      &, &:active, &:visited
        background-color: white
        color: black
      &:hover
        background-color: black
        color: white

  nav
    overflow: hidden
    background-color: white
    border-bottom: 2px solid black
    a
      font-size: 1.2em
      text-transform: capitalize
      text-decoration: none
      padding: 1.2em 1.5em
      box-sizing: content-box
      transition: font-weight 0.2s ease-in-out
      &, &:active, &:visited
        background-color: white
        color: black
      &:hover
        background-color: black
        color: white
  
  footer
    border-top: 2px solid black

</style>
