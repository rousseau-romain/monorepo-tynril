import { error } from '@sveltejs/kit'

import PrismaClient from 'database';

export const load = (async ({ params }) => {
  const prisma = PrismaClient.getPrisma()
  
  const monster = await prisma.monster.findFirst({
    where:{
      idDofus: Number(params.id)
    },
    include: {
      name: true,
      nameArchi: true,
      spells: {include: {name: true}},
      subAreas: {include: {name: true}},
      loots: {include: {name: true}},
    }
  })
  await prisma.$disconnect()   

  if (monster) {
    return { monster }
  }
  throw error(404, 'Not found')
})
