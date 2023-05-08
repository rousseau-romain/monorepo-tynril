/*
  Warnings:

  - Added the required column `idDofus` to the `Ecosystem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idDofus` to the `Monster` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idDofus` to the `Race` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idDofus` to the `Spell` table without a default value. This is not possible if the table is not empty.
  - Added the required column `idDofus` to the `SubArea` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
CREATE SEQUENCE ecosystem_id_seq;
ALTER TABLE "Ecosystem" ADD COLUMN     "idDofus" INTEGER NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('ecosystem_id_seq');
ALTER SEQUENCE ecosystem_id_seq OWNED BY "Ecosystem"."id";

-- AlterTable
CREATE SEQUENCE loot_id_seq;
ALTER TABLE "Loot" ADD COLUMN     "idDofus" INTEGER,
ALTER COLUMN "id" SET DEFAULT nextval('loot_id_seq');
ALTER SEQUENCE loot_id_seq OWNED BY "Loot"."id";

-- AlterTable
CREATE SEQUENCE monster_id_seq;
ALTER TABLE "Monster" ADD COLUMN     "idDofus" INTEGER NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('monster_id_seq');
ALTER SEQUENCE monster_id_seq OWNED BY "Monster"."id";

-- AlterTable
CREATE SEQUENCE race_id_seq;
ALTER TABLE "Race" ADD COLUMN     "idDofus" INTEGER NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('race_id_seq');
ALTER SEQUENCE race_id_seq OWNED BY "Race"."id";

-- AlterTable
CREATE SEQUENCE spell_id_seq;
ALTER TABLE "Spell" ADD COLUMN     "idDofus" INTEGER NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('spell_id_seq');
ALTER SEQUENCE spell_id_seq OWNED BY "Spell"."id";

-- AlterTable
CREATE SEQUENCE subarea_id_seq;
ALTER TABLE "SubArea" ADD COLUMN     "idDofus" INTEGER NOT NULL,
ALTER COLUMN "id" SET DEFAULT nextval('subarea_id_seq');
ALTER SEQUENCE subarea_id_seq OWNED BY "SubArea"."id";
