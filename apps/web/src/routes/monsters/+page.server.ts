import { error } from '@sveltejs/kit'

import PrismaClient from 'database';


export const load = (async () => {
  const prisma = PrismaClient.getPrisma()
  
  const monsters = await prisma.monster.findMany({
    include: {
      name: true,
      nameArchi: true,
    }
  })
  await prisma.$disconnect()   

  if (monsters) {
    return { monsters }
  }
  throw error(404, 'Not found')
})
