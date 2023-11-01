CREATE TABLE `users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `password` VARCHAR(20) NOT NULL,
    `username` VARCHAR(12) NOT NULL,
    `profile_link` VARCHAR(100) NOT NULL,
    `state_message` VARCHAR(50) NOT NULL,
    `is_unregister` BOOLEAN NOT NULL DEFAULT false,
    `register_date` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `channels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `channel_name` VARCHAR(20) NOT NULL,
    `channel_creator` INT NOT NULL,
    `channel_link` VARCHAR(50) NOT NULL,
    `capacity` TINYINT,
    `is_unregister` BOOLEAN NOT NULL DEFAULT false,
    `create_date` DATETIME NOT NULL,
    FOREIGN KEY (`channel_creator`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `chats` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `chat_content` VARCHAR(500) NOT NULL,
    `chat_creator` INT NOT NULL,
    `chat_channel` INT NOT NULL,
    `create_date` DATETIME NOT NULL,
    FOREIGN KEY (`channel_creator`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`chat_channel`)
    REFERENCES `channels`(`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `follows` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `follow_date` DATETIME NOT NULL,
    FOREIGN KEY (`follower`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`follower`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `blocks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `block` INT NOT NULL,
    `blocked` INT NOT NULL,
    `block_date` DATETIME NOT NULL,
    FOREIGN KEY (`block`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`blocked`)
    REFERENCES `users`(`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
