CREATE TABLE `students` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `entering_year` VARCHAR(4) NOT NULL,
    `major` VARCHAR(3) NOT NULL,
    `personal_code` VARCHAR(20) NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `address` VARCHAR(30) NOT NULL,
    `credit` TINYINT NOT NULL DEFAULT 0,
    `grade` FLOAT NOT NULL DEFAULT 0.0,
    `state` BOOLEAN NOT NULL DEFAULT true,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;