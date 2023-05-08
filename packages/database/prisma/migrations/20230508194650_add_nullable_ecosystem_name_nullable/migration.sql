-- DropForeignKey
ALTER TABLE "Ecosystem" DROP CONSTRAINT "Ecosystem_translationId_fkey";

-- AlterTable
ALTER TABLE "Ecosystem" ALTER COLUMN "translationId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Ecosystem" ADD CONSTRAINT "Ecosystem_translationId_fkey" FOREIGN KEY ("translationId") REFERENCES "Translation"("id") ON DELETE SET NULL ON UPDATE CASCADE;
