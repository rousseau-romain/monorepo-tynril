/*
  Warnings:

  - A unique constraint covering the columns `[idDofus]` on the table `Ecosystem` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idDofus]` on the table `Loot` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idDofus]` on the table `Monster` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idDofus]` on the table `Race` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idDofus]` on the table `Spell` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[idDofus]` on the table `SubArea` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Ecosystem_idDofus_key" ON "Ecosystem"("idDofus");

-- CreateIndex
CREATE UNIQUE INDEX "Loot_idDofus_key" ON "Loot"("idDofus");

-- CreateIndex
CREATE UNIQUE INDEX "Monster_idDofus_key" ON "Monster"("idDofus");

-- CreateIndex
CREATE UNIQUE INDEX "Race_idDofus_key" ON "Race"("idDofus");

-- CreateIndex
CREATE UNIQUE INDEX "Spell_idDofus_key" ON "Spell"("idDofus");

-- CreateIndex
CREATE UNIQUE INDEX "SubArea_idDofus_key" ON "SubArea"("idDofus");
