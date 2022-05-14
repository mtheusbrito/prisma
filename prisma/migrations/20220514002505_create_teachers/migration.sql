/*
  Warnings:

  - A unique constraint covering the columns `[teachersId]` on the table `courses` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `courses` ADD COLUMN `teachersId` VARCHAR(191) NOT NULL DEFAULT '';

-- CreateTable
CREATE TABLE `teachers` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `teachers_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `courses_teachersId_key` ON `courses`(`teachersId`);

-- AddForeignKey
ALTER TABLE `courses` ADD CONSTRAINT `courses_teachersId_fkey` FOREIGN KEY (`teachersId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
