-- CreateEnum
CREATE TYPE "Role" AS ENUM ('USER', 'ADMIN');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "role" "Role" NOT NULL DEFAULT 'USER',

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Monster" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "idDofus" INTEGER NOT NULL,
    "numberOfLevel" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "level" INTEGER[],
    "life" INTEGER[],
    "pa" INTEGER[],
    "pm" INTEGER[],
    "xp" INTEGER[],
    "init" INTEGER[],
    "strength" INTEGER[],
    "fire" INTEGER[],
    "water" INTEGER[],
    "wind" INTEGER[],
    "dodgeAp" INTEGER[],
    "dodgeMp" INTEGER[],
    "resistanceNeutral" INTEGER[],
    "resistanceStrength" INTEGER[],
    "resistanceFire" INTEGER[],
    "resistanceWater" INTEGER[],
    "resistanceWind" INTEGER[],

    CONSTRAINT "Monster_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
