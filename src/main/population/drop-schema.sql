
    alter table `administrator` 
       drop 
       foreign key FK_2a5vcjo3stlfcwadosjfq49l1;

    alter table `anonymous` 
       drop 
       foreign key FK_6lnbc6fo3om54vugoh8icg78m;

    alter table `authenticated` 
       drop 
       foreign key FK_h52w0f3wjoi68b63wv9vwon57;

    alter table `average_target` 
       drop 
       foreign key `FKl6lw8n6u4r8ia4il2u76yc13i`;

    alter table `consumer` 
       drop 
       foreign key FK_6cyha9f1wpj0dpbxrrjddrqed;

    alter table `expert_target` 
       drop 
       foreign key `FKp5whls9srfk796q41n5n5r49v`;

    alter table `provider` 
       drop 
       foreign key FK_b1gwnjqm6ggy9yuiqm0o4rlmd;

    alter table `record` 
       drop 
       foreign key `FK5m3d06dehg19dco3s011wvwjo`;

    alter table `rookie_target` 
       drop 
       foreign key `FKg1tmyplqd3nd7swj38ynfp4gv`;

    alter table `technology` 
       drop 
       foreign key FK_g9x1pskolrbtgfufi3u6ooin8;

    alter table `tool` 
       drop 
       foreign key FK_6u4iuvl4m0o1avirqg4jwv7ov;

    drop table if exists `administrator`;

    drop table if exists `anonymous`;

    drop table if exists `authenticated`;

    drop table if exists `average_target`;

    drop table if exists `basic_post`;

    drop table if exists `challenge`;

    drop table if exists `configuration`;

    drop table if exists `consumer`;

    drop table if exists `debate`;

    drop table if exists `expert_target`;

    drop table if exists `inquiry`;

    drop table if exists `notice`;

    drop table if exists `overture`;

    drop table if exists `provider`;

    drop table if exists `record`;

    drop table if exists `rookie_target`;

    drop table if exists `sector`;

    drop table if exists `target_reward`;

    drop table if exists `technology`;

    drop table if exists `tool`;

    drop table if exists `user_account`;

    drop table if exists `hibernate_sequence`;
