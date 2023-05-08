-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_ecosystemId_fkey";

-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_lootId_fkey";

-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_raceId_fkey";

-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_spellId_fkey";

-- DropForeignKey
ALTER TABLE "Monster" DROP CONSTRAINT "Monster_subAreaId_fkey";

-- CreateTable
CREATE TABLE "_EcosystemToMonster" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_LootToMonster" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_MonsterToSpell" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_MonsterToRace" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_MonsterToSubArea" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EcosystemToMonster_AB_unique" ON "_EcosystemToMonster"("A", "B");

-- CreateIndex
CREATE INDEX "_EcosystemToMonster_B_index" ON "_EcosystemToMonster"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_LootToMonster_AB_unique" ON "_LootToMonster"("A", "B");

-- CreateIndex
CREATE INDEX "_LootToMonster_B_index" ON "_LootToMonster"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_MonsterToSpell_AB_unique" ON "_MonsterToSpell"("A", "B");

-- CreateIndex
CREATE INDEX "_MonsterToSpell_B_index" ON "_MonsterToSpell"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_MonsterToRace_AB_unique" ON "_MonsterToRace"("A", "B");

-- CreateIndex
CREATE INDEX "_MonsterToRace_B_index" ON "_MonsterToRace"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_MonsterToSubArea_AB_unique" ON "_MonsterToSubArea"("A", "B");

-- CreateIndex
CREATE INDEX "_MonsterToSubArea_B_index" ON "_MonsterToSubArea"("B");

-- AddForeignKey
ALTER TABLE "_EcosystemToMonster" ADD CONSTRAINT "_EcosystemToMonster_A_fkey" FOREIGN KEY ("A") REFERENCES "Ecosystem"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EcosystemToMonster" ADD CONSTRAINT "_EcosystemToMonster_B_fkey" FOREIGN KEY ("B") REFERENCES "Monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_LootToMonster" ADD CONSTRAINT "_LootToMonster_A_fkey" FOREIGN KEY ("A") REFERENCES "Loot"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_LootToMonster" ADD CONSTRAINT "_LootToMonster_B_fkey" FOREIGN KEY ("B") REFERENCES "Monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToSpell" ADD CONSTRAINT "_MonsterToSpell_A_fkey" FOREIGN KEY ("A") REFERENCES "Monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToSpell" ADD CONSTRAINT "_MonsterToSpell_B_fkey" FOREIGN KEY ("B") REFERENCES "Spell"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToRace" ADD CONSTRAINT "_MonsterToRace_A_fkey" FOREIGN KEY ("A") REFERENCES "Monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToRace" ADD CONSTRAINT "_MonsterToRace_B_fkey" FOREIGN KEY ("B") REFERENCES "Race"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToSubArea" ADD CONSTRAINT "_MonsterToSubArea_A_fkey" FOREIGN KEY ("A") REFERENCES "Monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_MonsterToSubArea" ADD CONSTRAINT "_MonsterToSubArea_B_fkey" FOREIGN KEY ("B") REFERENCES "SubArea"("id") ON DELETE CASCADE ON UPDATE CASCADE;
