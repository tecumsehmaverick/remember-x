<?php
	/*
	Copyight: Deux Huit Huit 2013
	License: MIT, see the LICENCE file
	*/

	if(!defined("__IN_SYMPHONY__")) die("<h2>Error</h2><p>You cannot directly access this file</p>");


	/**
	 *
	 * @author Deux Huit Huit
	 * http://www.deuxhuithuit.com
	 *
	 */
	class extension_system_log_link extends Extension {

		/**
		 * Name of the extension
		 * @var string
		 */
		const EXT_NAME = 'System Log Link';


		/**
		 * Add the System logs to the naviguation
		 */
		public function fetchNavigation() {
			return array(
					array (
						'location' =>  __('System'),
						'name' => __('Log'),
						'limit' => 'developer',
						'link' => 'system/log/',
						'relative' => false,
						'target' => '_blank'
					)
				);
		}


		/* ********* INSTALL/UPDATE/UNISTALL ******* */

		/**
		 * Creates the table needed for the settings of the field
		 */
		public function install() {
			return true;

		}

		/**
		 * Creates the table needed for the settings of the field
		 */
		public function update($previousVersion) {
			return true;
		}

		/**
		 *
		 * Drops the table needed for the settings of the field
		 */
		public function uninstall() {
			return true;
		}

	}