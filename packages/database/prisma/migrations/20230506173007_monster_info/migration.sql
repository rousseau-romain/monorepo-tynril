/*
  Warnings:

  - You are about to drop the column `name` on the `Monster` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[id]` on the table `Monster` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `ecosystemId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idArchiDofus` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lootId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `raceId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `spellId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `subAreaId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `translationNameArchiId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `translationNameId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updateAt` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updateAt` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Monster" DROP COLUMN "name",
ADD COLUMN     "ecosystemId" INTEGER NOT NULL,
ADD COLUMN     "idArchiDofus" INTEGER NOT NULL,
ADD COLUMN     "image" TEXT NOT NULL,
ADD COLUMN     "lootId" INTEGER NOT NULL,
ADD COLUMN     "raceId" INTEGER NOT NULL,
ADD COLUMN     "spellId" INTEGER NOT NULL,
ADD COLUMN     "subAreaId" INTEGER NOT NULL,
ADD COLUMN     "translationNameArchiId" INTEGER NOT NULL,
ADD COLUMN     "translationNameId" INTEGER NOT NULL,
ADD COLUMN     "updateAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "updateAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Translation" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "fr" TEXT NOT NULL,
    "es" TEXT,
    "eng" TEXT,
    "pt" TEXT,

    CONSTRAINT "Translation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Race" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "idDofus" INTEGER NOT NULL,
    "translationId" INTEGER NOT NULL,

    CONSTRAINT "Race_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ecosystem" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "idDofus" INTEGER NOT NULL,
    "translationId" INTEGER NOT NULL,

    CONSTRAINT "Ecosystem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Spell" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "idDofus" INTEGER NOT NULL,
    "translationId" INTEGER NOT NULL,

    CONSTRAINT "Spell_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SubArea" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "idDofus" INTEGER NOT NULL,
    "translationId" INTEGER NOT NULL,

    CONSTRAINT "SubArea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Loot" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "idDofus" INTEGER NOT NULL,
    "translationId" INTEGER NOT NULL,

    CONSTRAINT "Loot_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Translation_id_key" ON "Translation"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Race_id_key" ON "Race"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Ecosystem_id_key" ON "Ecosystem"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Spell_id_key" ON "Spell"("id");

-- CreateIndex
CREATE UNIQUE INDEX "SubArea_id_key" ON "SubArea"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Loot_id_key" ON "Loot"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Monster_id_key" ON "Monster"("id");

-- AddForeignKey
ALTER TABLE "Race" ADD CONSTRAINT "Race_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ecosystem" ADD CONSTRAINT "Ecosystem_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Spell" ADD CONSTRAINT "Spell_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SubArea" ADD CONSTRAINT "SubArea_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Loot" ADD CONSTRAINT "Loot_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_translationNameId_fkey" FOREIGN KEY ("translationNameId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_translationNameArchiId_fkey" FOREIGN KEY ("translationNameArchiId") REFERENCES "Translation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_ecosystemId_fkey" FOREIGN KEY ("ecosystemId") REFERENCES "Ecosystem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_spellId_fkey" FOREIGN KEY ("spellId") REFERENCES "Spell"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_raceId_fkey" FOREIGN KEY ("raceId") REFERENCES "Race"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_subAreaId_fkey" FOREIGN KEY ("subAreaId") REFERENCES "SubArea"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_lootId_fkey" FOREIGN KEY ("lootId") REFERENCES "Loot"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
