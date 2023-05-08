import { error } from '@sveltejs/kit'

import { PrismaClient } from "@prisma/client";

export const load = (async () => {
  const prisma = new PrismaClient()
  
  const monsters = await prisma.monster.findMany({
    include: {
      name: true,
      nameArchi: true,
    }
  })
  prisma.$disconnect()   

  if (monsters) {
    return { monsters }
  }
  throw error(404, 'Not found')
})
