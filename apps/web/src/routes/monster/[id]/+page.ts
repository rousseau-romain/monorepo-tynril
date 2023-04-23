import { error } from '@sveltejs/kit'
import type { PageLoad } from './$types'

export interface Monster {
  id: number
  numberOfLevel: number[]
  name: string
  level: number[]
  life: number[]
  pa: number[]
  pm: number[]
  xp: number[]
  init: number[]
  strength: number[]
  fire: number[]
  water: number[]
  wind: number[]
  dodgeAp: number[]
  dodgeMp: number[]
  resistanceNeutral: number[]
  resistanceStrength: number[]
  resistanceFire: number[]
  resistanceWater: number[]
  resistanceWind: number[]
}

export const load = (async ({ params }) => {
  const response                 = await fetch(`http://localhost:3000/monsters?id=${params.id}`)
  const monsters: Array<Monster> = await response.json()
  if (monsters.length > 0) {
    return { monster: monsters[0] }
  }
  throw error(404, 'Not found')
}) satisfies PageLoad
