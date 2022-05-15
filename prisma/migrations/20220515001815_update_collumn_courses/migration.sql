/*
  Warnings:

  - You are about to drop the column `teachersId` on the `courses` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[fk_id_teacher]` on the table `courses` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `courses` DROP FOREIGN KEY `courses_teachersId_fkey`;

-- AlterTable
ALTER TABLE `courses` DROP COLUMN `teachersId`,
    ADD COLUMN `fk_id_teacher` VARCHAR(191) NOT NULL DEFAULT '';

-- CreateIndex
CREATE UNIQUE INDEX `courses_fk_id_teacher_key` ON `courses`(`fk_id_teacher`);

-- AddForeignKey
ALTER TABLE `courses` ADD CONSTRAINT `courses_fk_id_teacher_fkey` FOREIGN KEY (`fk_id_teacher`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
