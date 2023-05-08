import { error } from '@sveltejs/kit'

import { PrismaClient } from "@prisma/client";

export const load = (async ({ params }) => {
  const prisma  = new PrismaClient()
  
  const monster = await prisma.monster.findFirst({
    where:{
      idDofus: Number(params.id)
    },
    include: {
      name: true,
      nameArchi: true,
    }
  })
  prisma.$disconnect()   

  if (monster) {
    return { monster }
  }
  throw error(404, 'Not found')
})
