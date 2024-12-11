-- CreateTable
CREATE TABLE `student` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(190) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(30) NOT NULL,
    `personal_identification` VARCHAR(30) NULL,
    `status` ENUM('AL_DIA', 'EN_MORA') NOT NULL DEFAULT 'AL_DIA',
    `country` VARCHAR(190) NULL,
    `notes` LONGTEXT NULL,
    `active` BOOLEAN NOT NULL DEFAULT true,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL,

    UNIQUE INDEX `student_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
