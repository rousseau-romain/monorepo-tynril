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
    }
  })
  await prisma.$disconnect()   

  if (monster) {
    return { monster }
  }
  throw error(404, 'Not found')
})
