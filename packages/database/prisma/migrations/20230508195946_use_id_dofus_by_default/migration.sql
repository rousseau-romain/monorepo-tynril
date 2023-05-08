/*
  Warnings:

  - You are about to drop the column `idDofus` on the `Ecosystem` table. All the data in the column will be lost.
  - You are about to drop the column `idDofus` on the `Loot` table. All the data in the column will be lost.
  - You are about to drop the column `idDofus` on the `Monster` table. All the data in the column will be lost.
  - You are about to drop the column `idDofus` on the `Race` table. All the data in the column will be lost.
  - You are about to drop the column `idDofus` on the `Spell` table. All the data in the column will be lost.
  - You are about to drop the column `idDofus` on the `SubArea` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Ecosystem_idDofus_key";

-- DropIndex
DROP INDEX "Loot_idDofus_key";

-- DropIndex
DROP INDEX "Monster_idDofus_key";

-- DropIndex
DROP INDEX "Race_idDofus_key";

-- DropIndex
DROP INDEX "Spell_idDofus_key";

-- DropIndex
DROP INDEX "SubArea_idDofus_key";

-- AlterTable
ALTER TABLE "Ecosystem" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Ecosystem_id_seq";

-- AlterTable
ALTER TABLE "Loot" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Loot_id_seq";

-- AlterTable
ALTER TABLE "Monster" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Monster_id_seq";

-- AlterTable
ALTER TABLE "Race" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Race_id_seq";

-- AlterTable
ALTER TABLE "Spell" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Spell_id_seq";

-- AlterTable
ALTER TABLE "SubArea" DROP COLUMN "idDofus",
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "SubArea_id_seq";
