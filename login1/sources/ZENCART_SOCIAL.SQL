INSERT INTO `configuration_group` VALUES (NULL, 'Social Media Icons', 'Configure Social Media Icons for Product Pages', '0', '1');
UPDATE `configuration_group` SET `sort_order` = LAST_INSERT_ID() WHERE `configuration_group_id` = LAST_INSERT_ID();

SELECT @cgi := `configuration_group_id` FROM `configuration_group` WHERE `configuration_group_title` = 'Social Media Icons';

INSERT INTO `configuration` (`configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
('Social Media Position', 'SOCIAL_POSITION', 'bottom', 'Bar position for social media icons.', @cgi, 1, NULL, now(), NULL, 'zen_cfg_select_option(array(''bottom'', ''both''), '),
('Social Media Buttons', 'SOCIAL_MEDIA_STATUS', '1', 'Share button display.', @cgi, 2, NULL, now(), NULL, 'zen_cfg_select_option(array(''0'', ''1''), '),
('Facebook', 'FACEBOOK_STATUS', '1', 'Enable or disable share button on product page.', @cgi, 3, NULL, now(), NULL, 'zen_cfg_select_option(array(''0'', ''1''), '),
('Twitter', 'TWITTER_STATUS', '1', 'Enable or disable share button on product page.', @cgi, 4, NULL, now(), NULL, 'zen_cfg_select_option(array(''0'', ''1''), '),
('Google', 'GOOGLE_STATUS', '1', 'Enable or disable share button on product page.', @cgi, 5, NULL, now(), NULL, 'zen_cfg_select_option(array(''0'', ''1''), '),
('Pinterest', 'PINTEREST_STATUS', '1', 'Enable or disable share button on product page.', @cgi, 5, NULL, now(), NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');


INSERT INTO `admin_pages` (`page_key`, `language_key`, `main_page`, `page_params`, `menu_key`, `display_on_menu`, `sort_order`) VALUES
('configSocialMediaIcons', 'BOX_CONFIGURATION_SMI_SETTINGS', 'FILENAME_CONFIGURATION', CONCAT('gID=', @cgi), 'configuration', 'Y', @cgi);