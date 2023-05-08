/*
  Warnings:

  - You are about to drop the column `ecosystemId` on the `Monster` table. All the data in the column will be lost.
  - You are about to drop the column `lootId` on the `Monster` table. All the data in the column will be lost.
  - You are about to drop the column `raceId` on the `Monster` table. All the data in the column will be lost.
  - You are about to drop the column `spellId` on the `Monster` table. All the data in the column will be lost.
  - You are about to drop the column `subAreaId` on the `Monster` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Monster" DROP COLUMN "ecosystemId",
DROP COLUMN "lootId",
DROP COLUMN "raceId",
DROP COLUMN "spellId",
DROP COLUMN "subAreaId";
