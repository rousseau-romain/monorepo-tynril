-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_translationNameArchiId_fkey";

-- AlterTable
ALTER TABLE "Monster" ALTER COLUMN "idArchiDofus" DROP NOT NULL,
ALTER COLUMN "translationNameArchiId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Monster" ADD CONSTRAINT "Monster_translationNameArchiId_fkey" FOREIGN KEY ("translationNameArchiId") REFERENCES "Translation"("id") ON DELETE SET NULL ON UPDATE CASCADE;
