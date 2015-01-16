
-- *** STRUCTURE: `sym_cache` ***
DROP TABLE IF EXISTS `sym_cache`;
CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `sym_dashboard_panels` ***
DROP TABLE IF EXISTS `sym_dashboard_panels`;
CREATE TABLE `sym_dashboard_panels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `config` text,
  `placement` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- *** DATA: `sym_dashboard_panels` ***

-- *** STRUCTURE: `sym_entries` ***
DROP TABLE IF EXISTS `sym_entries`;
CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `modification_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries` ***
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 1, 1, '2015-01-16 01:14:53', '2015-01-16 03:14:53', '2015-01-16 01:14:55', '2015-01-16 03:14:55');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (23, 1, 1, '2015-01-16 01:13:29', '2015-01-16 03:13:29', '2015-01-16 01:13:29', '2015-01-16 03:13:29');

-- *** STRUCTURE: `sym_entries_data_1` ***
DROP TABLE IF EXISTS `sym_entries_data_1`;
CREATE TABLE `sym_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_1` ***
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 23, 'http://www.getsymphony.com/', NULL);
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 24, '# Extensions\r\n\r\nhttp://symphonyextensions.com/\r\n\r\nuse this site to look up for github hosted extensions', NULL);

-- *** STRUCTURE: `sym_entries_data_10` ***
DROP TABLE IF EXISTS `sym_entries_data_10`;
CREATE TABLE `sym_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `label` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_10` ***
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (42, 23, 'View  in the homepage', '/#');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (44, 24, 'View 93B5Oqo in the homepage', '/#93B5Oqo');

-- *** STRUCTURE: `sym_entries_data_11` ***
DROP TABLE IF EXISTS `sym_entries_data_11`;
CREATE TABLE `sym_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `res_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_oembed_xml` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oembed_xml` text COLLATE utf8_unicode_ci,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `driver` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_11` ***

-- *** STRUCTURE: `sym_entries_data_12` ***
DROP TABLE IF EXISTS `sym_entries_data_12`;
CREATE TABLE `sym_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `centre` varchar(255) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_12` ***

-- *** STRUCTURE: `sym_entries_data_2` ***
DROP TABLE IF EXISTS `sym_entries_data_2`;
CREATE TABLE `sym_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_2` ***
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (56, 23, 'LmB2bB1');
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (58, 24, '93B5Oqo');

-- *** STRUCTURE: `sym_entries_data_5` ***
DROP TABLE IF EXISTS `sym_entries_data_5`;
CREATE TABLE `sym_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_5` ***

-- *** STRUCTURE: `sym_entries_data_6` ***
DROP TABLE IF EXISTS `sym_entries_data_6`;
CREATE TABLE `sym_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_6` ***

-- *** STRUCTURE: `sym_entries_data_7` ***
DROP TABLE IF EXISTS `sym_entries_data_7`;
CREATE TABLE `sym_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_7` ***

-- *** STRUCTURE: `sym_entries_data_8` ***
DROP TABLE IF EXISTS `sym_entries_data_8`;
CREATE TABLE `sym_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_8` ***
INSERT INTO `sym_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (31, 24, 23);

-- *** STRUCTURE: `sym_extensions` ***
DROP TABLE IF EXISTS `sym_extensions`;
CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions` ***
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'system_date_fields', 'enabled', 1.0);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'hashid_field', 'enabled', '1.2.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'system_log_link', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'debugdevkit', 'enabled', '1.3.2');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'multiuploadfield', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'association_field', 'enabled', '1.0.0beta');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'association_output', 'enabled', '1.0.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'association_ui_editor', 'enabled', '1.1.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'association_ui_selector', 'enabled', '1.1.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'export_ensemble', 'enabled', '2.1.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'rest_api', 'enabled', '1.3.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'entry_url_field', 'enabled', '1.3.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'navigationicons', 'enabled', 1.0);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'entry_nav', 'enabled', '1.0.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'dashboard', 'disabled', '1.7.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'dont_drop', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'profiledevkit', 'enabled', '1.5.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'browsedevkit', 'enabled', '1.0.2');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'logsdevkit', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'dump_db', 'enabled', '1.11.2');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'maplocationfield', 'enabled', '3.3.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'oembed_field', 'enabled', '1.8.6');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'editor_for_symphony', 'enabled', '0.3.2');

-- *** STRUCTURE: `sym_extensions_delegates` ***
DROP TABLE IF EXISTS `sym_extensions_delegates`;
CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions_delegates` ***
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 2, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 2, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 2, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 4, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 8, '/frontend/', 'DataSourcePreExecute', 'setOutputParameters');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 8, '/frontend/', 'DataSourcePostExecute', 'appendAssociatedEntries');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 8, '/backend/', 'AdminPagePreGenerate', 'buildEditor');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 8, '/blueprints/datasources/', 'DatasourcePreCreate', 'saveDataSource');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 8, '/blueprints/datasources/', 'DatasourcePreEdit', 'saveDataSource');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 9, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 10, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 12, '/frontend/', 'FrontendPageResolved', 'manipulateResolvedPage');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 12, '/frontend/', 'FrontendOutputPreGenerate', 'frontendOutputPreGenerate');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 14, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 14, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 14, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 15, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 15, '/backend/', 'NavigationPreRender', 'parseNav');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 15, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 15, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 16, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 16, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 20, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 19, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 19, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 18, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 20, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 21, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 21, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (41, 22, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (42, 22, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 22, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 24, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 24, '*', 'AppendContentType', 'appendContentType');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 25, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');

-- *** STRUCTURE: `sym_fields` ***
DROP TABLE IF EXISTS `sym_fields`;
CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields` ***
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Entry', 'entry', 'textarea', 1, 'yes', 5, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'UID', 'uid', 'hashid_field', 1, 'no', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Creation Date', 'creation-date', 'systemcreateddate', 1, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Modified Date', 'modified-date', 'systemmodifieddate', 1, 'no', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Meta: Description', 'description', 'textarea', 1, 'no', 6, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Meta: Images', 'images', 'multiupload', 1, 'no', 8, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Meta: Keywords', 'keywords', 'taglist', 1, 'no', 7, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Reply of', 'reply', 'association', 1, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Entry Anchor', 'entry-anchor', 'entry_url', 1, 'no', 4, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Meta: oEmbed', 'meta-oembed', 'oembed', 1, 'no', 9, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Meta: Location', 'location', 'maplocation', 1, 'no', 10, 'sidebar', 'no');

-- *** STRUCTURE: `sym_fields_association` ***
DROP TABLE IF EXISTS `sym_fields_association`;
CREATE TABLE `sym_fields_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_association` ***
INSERT INTO `sym_fields_association` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (19, 8, 'no', 'no', 2, 999);

-- *** STRUCTURE: `sym_fields_author` ***
DROP TABLE IF EXISTS `sym_fields_author`;
CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_author` ***

-- *** STRUCTURE: `sym_fields_checkbox` ***
DROP TABLE IF EXISTS `sym_fields_checkbox`;
CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_checkbox` ***

-- *** STRUCTURE: `sym_fields_date` ***
DROP TABLE IF EXISTS `sym_fields_date`;
CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_date` ***

-- *** STRUCTURE: `sym_fields_entry_url` ***
DROP TABLE IF EXISTS `sym_fields_entry_url`;
CREATE TABLE `sym_fields_entry_url` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `anchor_label` varchar(255) DEFAULT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `new_window` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_entry_url` ***
INSERT INTO `sym_fields_entry_url` (`id`, `field_id`, `anchor_label`, `expression`, `new_window`, `hide`) VALUES (13, 10, 'View {entry/uid} in the homepage', '/#{entry/uid}', 'no', 'no');

-- *** STRUCTURE: `sym_fields_hashid_field` ***
DROP TABLE IF EXISTS `sym_fields_hashid_field`;
CREATE TABLE `sym_fields_hashid_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `size` int(3) unsigned NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_hashid_field` ***
INSERT INTO `sym_fields_hashid_field` (`id`, `field_id`, `size`, `salt`, `length`) VALUES (29, 2, 0, 'Remember', 7);

-- *** STRUCTURE: `sym_fields_input` ***
DROP TABLE IF EXISTS `sym_fields_input`;
CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_input` ***

-- *** STRUCTURE: `sym_fields_maplocation` ***
DROP TABLE IF EXISTS `sym_fields_maplocation`;
CREATE TABLE `sym_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) NOT NULL,
  `default_location_coords` varchar(60) NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_maplocation` ***
INSERT INTO `sym_fields_maplocation` (`id`, `field_id`, `default_location`, `default_location_coords`, `default_zoom`) VALUES (4, 12, 'London, England', '51.5073509, -0.1277583', 3);

-- *** STRUCTURE: `sym_fields_multiupload` ***
DROP TABLE IF EXISTS `sym_fields_multiupload`;
CREATE TABLE `sym_fields_multiupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_multiupload` ***
INSERT INTO `sym_fields_multiupload` (`id`, `field_id`, `destination`, `validator`) VALUES (22, 6, '/workspace/uploads/meta-images', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE: `sym_fields_oembed` ***
DROP TABLE IF EXISTS `sym_fields_oembed`;
CREATE TABLE `sym_fields_oembed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `refresh` int(11) unsigned DEFAULT NULL,
  `driver` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `thumbs` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `query_params` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_ssl` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `unique_media` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_oembed` ***
INSERT INTO `sym_fields_oembed` (`id`, `field_id`, `refresh`, `driver`, `unique`, `thumbs`, `query_params`, `force_ssl`, `unique_media`) VALUES (4, 11, NULL, 'Dailymotion,Embed.ly,Flickr,Iframely,Instagram,Mixcloud,Qik,SlideShare,Soundcloud,Twitter,Viddler,Vimeo,YouTube', 'no', 'no', NULL, 'no', 'no');

-- *** STRUCTURE: `sym_fields_select` ***
DROP TABLE IF EXISTS `sym_fields_select`;
CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_select` ***

-- *** STRUCTURE: `sym_fields_systemcreateddate` ***
DROP TABLE IF EXISTS `sym_fields_systemcreateddate`;
CREATE TABLE `sym_fields_systemcreateddate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_systemcreateddate` ***
INSERT INTO `sym_fields_systemcreateddate` (`id`, `field_id`) VALUES (29, 3);

-- *** STRUCTURE: `sym_fields_systemmodifieddate` ***
DROP TABLE IF EXISTS `sym_fields_systemmodifieddate`;
CREATE TABLE `sym_fields_systemmodifieddate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_systemmodifieddate` ***
INSERT INTO `sym_fields_systemmodifieddate` (`id`, `field_id`) VALUES (29, 4);

-- *** STRUCTURE: `sym_fields_taglist` ***
DROP TABLE IF EXISTS `sym_fields_taglist`;
CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_taglist` ***
INSERT INTO `sym_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (21, 7, NULL, 'existing');

-- *** STRUCTURE: `sym_fields_textarea` ***
DROP TABLE IF EXISTS `sym_fields_textarea`;
CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_textarea` ***
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (53, 5, NULL, 5);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (52, 1, NULL, 15);

-- *** STRUCTURE: `sym_fields_upload` ***
DROP TABLE IF EXISTS `sym_fields_upload`;
CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_upload` ***

-- *** STRUCTURE: `sym_pages` ***
DROP TABLE IF EXISTS `sym_pages`;
CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages` ***
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Index', 'index', NULL, NULL, 'entries', 'create_entry', 1);

-- *** STRUCTURE: `sym_pages_types` ***
DROP TABLE IF EXISTS `sym_pages_types`;
CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages_types` ***
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (1, 1, 'index');

-- *** STRUCTURE: `sym_sections` ***
DROP TABLE IF EXISTS `sym_sections`;
CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `filter` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections` ***
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES (1, 'Entries', 'entries', 1, 'no', 'no', 'Entries');

-- *** STRUCTURE: `sym_sections_association` ***
DROP TABLE IF EXISTS `sym_sections_association`;
CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `interface` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections_association` ***
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (19, 1, 2, 1, 8, 'no', 'aui-selector', 'aui-editor');
