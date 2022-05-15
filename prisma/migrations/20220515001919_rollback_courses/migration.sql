/*
  Warnings:

  - You are about to drop the column `fk_id_teacher` on the `courses` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[teachersId]` on the table `courses` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `courses` DROP FOREIGN KEY `courses_fk_id_teacher_fkey`;

-- AlterTable
ALTER TABLE `courses` DROP COLUMN `fk_id_teacher`,
    ADD COLUMN `teachersId` VARCHAR(191) NOT NULL DEFAULT '';

-- CreateIndex
CREATE UNIQUE INDEX `courses_teachersId_key` ON `courses`(`teachersId`);

-- AddForeignKey
ALTER TABLE `courses` ADD CONSTRAINT `courses_teachersId_fkey` FOREIGN KEY (`teachersId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
