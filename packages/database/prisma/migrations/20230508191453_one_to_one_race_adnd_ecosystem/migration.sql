/*
  Warnings:

  - You are about to drop the `_EcosystemToMonster` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_MonsterToRace` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `ecosystemId` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `raceId` to the `Monster` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_EcosystemToMonster" DROP CONSTRAINT "_EcosystemToMonster_A_fkey";

-- DropForeignKey
ALTER TABLE "_EcosystemToMonster" DROP CONSTRAINT "_EcosystemToMonster_B_fkey";

-- DropForeignKey
ALTER TABLE "_MonsterToRace" DROP CONSTRAINT "_MonsterToRace_A_fkey";

-- DropForeignKey
ALTER TABLE "_MonsterToRace" DROP CONSTRAINT "_MonsterToRace_B_fkey";

-- AlterTable
ALTER TABLE "Monster" ADD COLUMN     "ecosystemId" INTEGER NOT NULL,
ADD COLUMN     "raceId" INTEGER NOT NULL;

-- DropTable
DROP TABLE "_EcosystemToMonster";

-- DropTable
DROP TABLE "_MonsterToRace";

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_ecosystemId_fkey" FOREIGN KEY ("ecosystemId") REFERENCES "Ecosystem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_raceId_fkey" FOREIGN KEY ("raceId") REFERENCES "Race"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
