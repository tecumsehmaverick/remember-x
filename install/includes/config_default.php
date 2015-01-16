<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'admin-path' => 'admin',
			'pagination_maximum_rows' => '20',
			'association_maximum_rows' => '5',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'version' => '2.6.0-beta.2',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
			'cell_truncation_length' => '75',
			'enable_xsrf' => 'yes',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => 'localhost',
			'port' => '3306',
			'user' => null,
			'password' => null,
			'db' => null,
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'Remember',
			'useragent' => 'Symphony/2.6.0-beta.2',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'm/d/Y',
			'datetime_separator' => ' ',
			'timezone' => 'America/Sao_Paulo',
			'weekoffset' => 0,
		),
		########


		###### CACHE_DRIVER ######
		'cache_driver' => array(
			'default' => 'database',
		),
		########


		###### HASHID_FIELD ######
		'hashid_field' => array(
			'hash_salt' => 'Remember',
			'hash_length' => '7',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_entries_sortby' => '3',
			'section_entries_order' => 'desc',
		),
		########


		###### NAVIGATIONICONS ######
		'navigationicons' => array(
			'navigation' => '{"System":"system","Blueprints":"blueprints","Dashboard":"dashboard"}',
		),
		########


		###### DUMP_DB ######
		'dump_db' => array(
			'last_sync' => '2015-01-16T02:15:37-02:00',
		),
		########
	);
