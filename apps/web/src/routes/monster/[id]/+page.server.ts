import { error } from '@sveltejs/kit'
import type { PageServerLoad } from './$types'

import { PrismaClient } from "database";

export const load = (async ({ params }) => {
  const prisma  = new PrismaClient()
  const monster = await prisma.monster.findFirst({
    where: {
      idDofus: Number(params.id),   
    },
  })       

  if (monster) {
    return { monster }
  }
  throw error(404, 'Not found')
}) satisfies PageServerLoad
