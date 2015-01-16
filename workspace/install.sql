
-- *** STRUCTURE:`tbl_fields_association` ***
DROP TABLE IF EXISTS`tbl_fields_association`;
CREATE TABLE`tbl_fields_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_association` ***
INSERT INTO`tbl_fields_association` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (26, 8, 'no', 'no', 2, 999);

-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_entry_url` ***
DROP TABLE IF EXISTS`tbl_fields_entry_url`;
CREATE TABLE`tbl_fields_entry_url` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `anchor_label` varchar(255) DEFAULT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `new_window` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_entry_url` ***
INSERT INTO`tbl_fields_entry_url` (`id`, `field_id`, `anchor_label`, `expression`, `new_window`, `hide`) VALUES (20, 10, 'View {entry/uid} in the homepage', '/#{entry/uid}', 'no', 'no');

-- *** STRUCTURE:`tbl_fields_hashid_field` ***
DROP TABLE IF EXISTS`tbl_fields_hashid_field`;
CREATE TABLE`tbl_fields_hashid_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `size` int(3) unsigned NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_hashid_field` ***
INSERT INTO`tbl_fields_hashid_field` (`id`, `field_id`, `size`, `salt`, `length`) VALUES (36, 2, 0, 'Remember', 7);

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***

-- *** STRUCTURE:`tbl_fields_maplocation` ***
DROP TABLE IF EXISTS`tbl_fields_maplocation`;
CREATE TABLE`tbl_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) NOT NULL,
  `default_location_coords` varchar(60) NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_fields_maplocation` ***
INSERT INTO`tbl_fields_maplocation` (`id`, `field_id`, `default_location`, `default_location_coords`, `default_zoom`) VALUES (11, 12, 'London, England', '51.5073509, -0.1277583', 3);

-- *** STRUCTURE:`tbl_fields_multiupload` ***
DROP TABLE IF EXISTS`tbl_fields_multiupload`;
CREATE TABLE`tbl_fields_multiupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_multiupload` ***
INSERT INTO`tbl_fields_multiupload` (`id`, `field_id`, `destination`, `validator`) VALUES (29, 6, '/workspace/uploads/meta-images', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE:`tbl_fields_oembed` ***
DROP TABLE IF EXISTS`tbl_fields_oembed`;
CREATE TABLE`tbl_fields_oembed` (
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_oembed` ***
INSERT INTO`tbl_fields_oembed` (`id`, `field_id`, `refresh`, `driver`, `unique`, `thumbs`, `query_params`, `force_ssl`, `unique_media`) VALUES (11, 11, NULL, 'Dailymotion,Embed.ly,Flickr,Iframely,Instagram,Mixcloud,Qik,SlideShare,Soundcloud,Twitter,Viddler,Vimeo,YouTube', 'no', 'yes', NULL, 'no', 'no');

-- *** STRUCTURE:`tbl_fields_reflection` ***
DROP TABLE IF EXISTS`tbl_fields_reflection`;
CREATE TABLE`tbl_fields_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `xsltfile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expression` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `override` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `fetch_associated_counts` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_reflection` ***

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_systemcreateddate` ***
DROP TABLE IF EXISTS`tbl_fields_systemcreateddate`;
CREATE TABLE`tbl_fields_systemcreateddate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_systemcreateddate` ***
INSERT INTO`tbl_fields_systemcreateddate` (`id`, `field_id`) VALUES (36, 3);

-- *** STRUCTURE:`tbl_fields_systemmodifieddate` ***
DROP TABLE IF EXISTS`tbl_fields_systemmodifieddate`;
CREATE TABLE`tbl_fields_systemmodifieddate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_systemmodifieddate` ***
INSERT INTO`tbl_fields_systemmodifieddate` (`id`, `field_id`) VALUES (36, 4);

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***
INSERT INTO`tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (28, 7, NULL, 'existing');

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (67, 5, NULL, 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (66, 1, 'markdown', 25);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 23, '# Symphony CMS\r\n\r\n[http://www.getsymphony.com/](http://http://www.getsymphony.com/)', '<h1>Symphony CMS</h1>\n\n<p><a href=\"http://http://www.getsymphony.com/\">http://www.getsymphony.com/</a></p>\n');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 24, '## Extensions\r\n\r\n[http://symphonyextensions.com/](http://http://symphonyextensions.com/)\r\n\r\nuse this site to look up for github hosted extensions', '<h2>Extensions</h2>\n\n<p><a href=\"http://http://symphonyextensions.com/\">http://symphonyextensions.com/</a></p>\n\n<p>use this site to look up for github hosted extensions</p>\n');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 25, '# Markdown Editor\r\n\r\n- [http://lab.lepture.com/editor/](http://lab.lepture.com/editor/)\r\n- [https://github.com/lepture/editor](https://github.com/lepture/editor)\r\n', '<h1>Markdown Editor</h1>\n\n<ul>\n<li><a href=\"http://lab.lepture.com/editor/\">http://lab.lepture.com/editor/</a></li>\n<li><a href=\"https://github.com/lepture/editor\">https://github.com/lepture/editor</a></li>\n</ul>\n');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 26, 'Nam eu laoreet velit. Maecenas consectetur efficitur fermentum. Suspendisse lacinia scelerisque tincidunt. Nullam vel tincidunt ipsum. Nullam blandit eros mi, quis eleifend urna porta eu. Mauris dignissim porttitor dui, et sagittis velit cursus non. Phasellus fringilla sit amet dolor et cursus. Etiam imperdiet quis dui ac rhoncus. Nullam dictum sed diam sed finibus. Suspendisse mattis sapien nulla, non tempor magna sollicitudin vitae. Donec rutrum imperdiet mi, in imperdiet tortor pulvinar eget. Proin tristique ultricies nulla ac eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur imperdiet mauris congue, gravida diam et, pulvinar nisl.\r\n', '<p>Nam eu laoreet velit. Maecenas consectetur efficitur fermentum. Suspendisse lacinia scelerisque tincidunt. Nullam vel tincidunt ipsum. Nullam blandit eros mi, quis eleifend urna porta eu. Mauris dignissim porttitor dui, et sagittis velit cursus non. Phasellus fringilla sit amet dolor et cursus. Etiam imperdiet quis dui ac rhoncus. Nullam dictum sed diam sed finibus. Suspendisse mattis sapien nulla, non tempor magna sollicitudin vitae. Donec rutrum imperdiet mi, in imperdiet tortor pulvinar eget. Proin tristique ultricies nulla ac eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur imperdiet mauris congue, gravida diam et, pulvinar nisl.</p>\n');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (70, 27, 'Mauris mi risus, facilisis sit amet tempus sed, rhoncus vel leo. Praesent eleifend dolor odio. Quisque luctus odio nec tortor cursus faucibus. Proin convallis tellus ut magna mollis gravida. Aliquam viverra fermentum sapien nec mattis. In sed vestibulum nulla, vitae hendrerit sem. Praesent egestas elit et dolor feugiat porttitor. Phasellus tincidunt dapibus tortor, fermentum commodo quam semper nec. Morbi viverra laoreet luctus. Sed accumsan tortor a sodales commodo. Mauris sed euismod felis.\r\n\r\n- lololololol\r\n- nomonomonomo\r\n- asdasdasdasd\r\n- qwertyqwretyqwrey', '<p>Mauris mi risus, facilisis sit amet tempus sed, rhoncus vel leo. Praesent eleifend dolor odio. Quisque luctus odio nec tortor cursus faucibus. Proin convallis tellus ut magna mollis gravida. Aliquam viverra fermentum sapien nec mattis. In sed vestibulum nulla, vitae hendrerit sem. Praesent egestas elit et dolor feugiat porttitor. Phasellus tincidunt dapibus tortor, fermentum commodo quam semper nec. Morbi viverra laoreet luctus. Sed accumsan tortor a sodales commodo. Mauris sed euismod felis.</p>\n\n<ul>\n<li>lololololol</li>\n<li>nomonomonomo</li>\n<li>asdasdasdasd</li>\n<li>qwertyqwretyqwrey</li>\n</ul>\n');

-- *** STRUCTURE:`tbl_entries_data_10` ***
DROP TABLE IF EXISTS`tbl_entries_data_10`;
CREATE TABLE`tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `label` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_10` ***
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (50, 23, 'View LmB2bB1 in the homepage', '/#LmB2bB1');
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (52, 25, 'View aGyejqx in the homepage', '/#aGyejqx');
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (53, 24, 'View 93B5Oqo in the homepage', '/#93B5Oqo');
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (54, 26, 'View  in the homepage', '/#');
INSERT INTO`tbl_entries_data_10` (`id`, `entry_id`, `label`, `value`) VALUES (56, 27, 'View k4zMazg in the homepage', '/#k4zMazg');

-- *** STRUCTURE:`tbl_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
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

-- *** DATA:`tbl_entries_data_11` ***

-- *** STRUCTURE:`tbl_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA:`tbl_entries_data_12` ***
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `latitude`, `longitude`, `centre`, `zoom`) VALUES (9, 24, 51.5073509, -0.12775829999998223, '51.5073509, -0.12775829999998223', 3);
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `latitude`, `longitude`, `centre`, `zoom`) VALUES (6, 23, 51.5073509, -0.12775829999998223, '51.5073509, -0.12775829999998223', 3);
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `latitude`, `longitude`, `centre`, `zoom`) VALUES (8, 25, 51.5073509, -0.12775829999998223, '51.5073509, -0.12775829999998223', 3);
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `latitude`, `longitude`, `centre`, `zoom`) VALUES (10, 26, NULL, NULL, NULL, 3);
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `latitude`, `longitude`, `centre`, `zoom`) VALUES (12, 27, 51.5073509, -0.12775829999998223, '51.5073509, -0.12775829999998223', 3);

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (64, 23, 'LmB2bB1');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (67, 24, '93B5Oqo');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (66, 25, 'aGyejqx');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (68, 26, 'nGBKDyj');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`) VALUES (70, 27, 'k4zMazg');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
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

-- *** DATA:`tbl_entries_data_6` ***

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (34, 24, 23);
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (36, 27, 26);

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 1, 1, '2015-01-16 01:14:53', '2015-01-16 03:14:53', '2015-01-16 07:07:56', '2015-01-16 09:07:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (23, 1, 1, '2015-01-16 01:13:29', '2015-01-16 03:13:29', '2015-01-16 06:05:05', '2015-01-16 08:05:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (25, 1, 1, '2015-01-16 06:47:56', '2015-01-16 08:47:56', '2015-01-16 06:48:32', '2015-01-16 08:48:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (26, 1, 1, '2015-01-16 07:09:09', '2015-01-16 09:09:09', '2015-01-16 07:09:09', '2015-01-16 09:09:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (27, 1, 1, '2015-01-16 07:09:38', '2015-01-16 09:09:38', '2015-01-16 07:09:41', '2015-01-16 09:09:41');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'system_date_fields', 'enabled', 1.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'hashid_field', 'enabled', '1.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'system_log_link', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'debugdevkit', 'enabled', '1.3.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'multiuploadfield', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'association_field', 'enabled', '1.0.0beta');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'association_output', 'enabled', '1.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'association_ui_editor', 'enabled', '1.1.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'association_ui_selector', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'export_ensemble', 'enabled', '2.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'rest_api', 'enabled', '1.3.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'entry_url_field', 'enabled', '1.3.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'navigationicons', 'enabled', 1.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'entry_nav', 'enabled', '1.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (32, 'templatedtextformatters', 'disabled', 1.10);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'dont_drop', 'enabled', 1.4);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'profiledevkit', 'enabled', '1.5.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'browsedevkit', 'enabled', '1.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'logsdevkit', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'dump_db', 'enabled', 1.12);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'maplocationfield', 'enabled', '3.3.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'oembed_field', 'enabled', '1.8.6');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'reflectionfield', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (28, 'markdown', 'enabled', 1.20);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (33, 'editor_for_symphony', 'enabled', '0.3.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (34, 'html5_doctype', 'enabled', '1.3.2');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 2, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 2, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 2, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 4, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 8, '/frontend/', 'DataSourcePreExecute', 'setOutputParameters');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 8, '/frontend/', 'DataSourcePostExecute', 'appendAssociatedEntries');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 8, '/backend/', 'AdminPagePreGenerate', 'buildEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 8, '/blueprints/datasources/', 'DatasourcePreCreate', 'saveDataSource');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 8, '/blueprints/datasources/', 'DatasourcePreEdit', 'saveDataSource');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 9, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 10, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 12, '/frontend/', 'FrontendPageResolved', 'manipulateResolvedPage');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 12, '/frontend/', 'FrontendOutputPreGenerate', 'frontendOutputPreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 14, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 14, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 14, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 15, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 15, '/backend/', 'NavigationPreRender', 'parseNav');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 15, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 15, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 16, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 16, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 20, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 19, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 19, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 18, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 20, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 21, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 21, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (60, 22, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (59, 22, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 24, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 24, '*', 'AppendContentType', 'appendContentType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (73, 34, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (74, 34, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (72, 34, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (77, 33, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (61, 22, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (62, 26, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (63, 26, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (64, 26, '/xmlimporter/importers/run/', 'XMLImporterEntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (65, 26, '/xmlimporter/importers/run/', 'XMLImporterEntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (66, 26, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Entry', 'entry', 'textarea', 1, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'UID', 'uid', 'hashid_field', 1, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Creation Date', 'creation-date', 'systemcreateddate', 1, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Modified Date', 'modified-date', 'systemmodifieddate', 1, 'no', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Meta: Description', 'description', 'textarea', 1, 'no', 6, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Meta: Images', 'images', 'multiupload', 1, 'no', 8, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Meta: Keywords', 'keywords', 'taglist', 1, 'no', 7, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Reply of', 'reply', 'association', 1, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Entry Anchor', 'entry-anchor', 'entry_url', 1, 'no', 5, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Meta: oEmbed', 'meta-oembed', 'oembed', 1, 'no', 9, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Meta: Location', 'location', 'maplocation', 1, 'no', 10, 'sidebar', 'no');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Index', 'index', NULL, NULL, 'entries', 'create_entry', 1);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (1, 1, 'index');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES (1, 'Entries', 'entries', 1, 'no', 'yes', 'Entries');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (26, 1, 2, 1, 8, 'no', 'aui-selector', 'aui-editor');
