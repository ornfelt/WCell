-- 12339
-- ALTER TABLE character_db_version CHANGE COLUMN required_11785_02_characters_instance required_12339_01_characters_calendar_events bit;

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `eventId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeonId` int(10) NOT NULL DEFAULT '-1',
  `eventTime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY  (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ALTER TABLE character_db_version CHANGE COLUMN required_12339_01_characters_calendar_events required_12339_02_characters_calendar_invites bit;

DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
  `inviteId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `eventId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `inviteeGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `senderGuid` int(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdateTime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (`inviteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;-- 12487
ALTER TABLE character_db_version CHANGE COLUMN required_12339_02_characters_calendar_invites required_12487_01_characters_characters bit;

UPDATE characters SET drunk = (drunk / 256) & 0xFF;

ALTER TABLE characters CHANGE drunk drunk tinyint(3) unsigned NOT NULL DEFAULT '0';

-- 12562
-- ALTER TABLE character_db_version CHANGE COLUMN required_12487_01_characters_characters required_12562_01_characters_various_tables bit;

ALTER TABLE character_queststatus_daily DROP INDEX idx_guid;
ALTER TABLE character_queststatus_monthly DROP INDEX idx_guid;
ALTER TABLE character_queststatus_weekly DROP INDEX idx_guid;
ALTER TABLE character_social DROP INDEX friend;
ALTER TABLE character_social DROP INDEX guid;
ALTER TABLE character_talent DROP INDEX guid_key;
ALTER TABLE guild_bank_eventlog DROP INDEX guildid_key;
ALTER TABLE guild_bank_item DROP INDEX guildid_key;
ALTER TABLE guild_bank_right DROP INDEX guildid_key;
ALTER TABLE guild_bank_tab DROP INDEX guildid_key;
ALTER TABLE guild_member DROP INDEX guildid_key;
