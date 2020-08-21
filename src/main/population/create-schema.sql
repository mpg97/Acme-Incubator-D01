
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `average_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `challenge_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `basic_post` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(1024),
        `title` varchar(50),
        primary key (`id`)
    ) engine=InnoDB;

    create table `configuration` (
       `id` integer not null,
        `version` integer not null,
        `language` varchar(255),
        `spam_threshold` double precision not null,
        `spamwords` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `debate` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `expert_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `challenge_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `inquiry` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `notice` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `body` varchar(1024),
        `header` varchar(255),
        `link` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `overture` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `record` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` double precision,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `rookie_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `challenge_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `sector` (
       `id` integer not null,
        `version` integer not null,
        `sector` varchar(50),
        primary key (`id`)
    ) engine=InnoDB;

    create table `target_reward` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `technology` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` double precision,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `tool` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` double precision,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `average_target` 
       add constraint `FKl6lw8n6u4r8ia4il2u76yc13i` 
       foreign key (`challenge_id`) 
       references `challenge` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `expert_target` 
       add constraint `FKp5whls9srfk796q41n5n5r49v` 
       foreign key (`challenge_id`) 
       references `challenge` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `record` 
       add constraint `FK5m3d06dehg19dco3s011wvwjo` 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `rookie_target` 
       add constraint `FKg1tmyplqd3nd7swj38ynfp4gv` 
       foreign key (`challenge_id`) 
       references `challenge` (`id`);

    alter table `technology` 
       add constraint FK_g9x1pskolrbtgfufi3u6ooin8 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `tool` 
       add constraint FK_6u4iuvl4m0o1avirqg4jwv7ov 
       foreign key (`sector_id`) 
       references `sector` (`id`);
