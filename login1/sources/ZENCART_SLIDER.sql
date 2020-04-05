SET @configuration_group_id=0;
SELECT @configuration_group_id:=configuration_group_id
FROM configuration_group
WHERE configuration_group_title= 'ZX Slideshow'
LIMIT 1;
DELETE FROM configuration WHERE configuration_group_id = @configuration_group_id;
DELETE FROM configuration_group WHERE configuration_group_id = @configuration_group_id;

INSERT INTO configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) VALUES (NULL, 'ZX Slideshow', 'Set Slideshow Options', '1', '1');
SET @configuration_group_id=last_insert_id();
UPDATE configuration_group SET sort_order = @configuration_group_id WHERE configuration_group_id = @configuration_group_id;

INSERT INTO configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES 
(NULL, 'ZX Slideshow', 'ZX_SLIDESHOW_STATUS', 'false', 'Activate ZX Slideshow for the main page', @configuration_group_id, 1, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
(NULL, 'Slideshow Theme', 'ZX_SLIDESHOW_THEME', 'default', 'Select your theme', @configuration_group_id, 2, NOW(), NULL, 'zen_cfg_select_option(array(\'default\', \'light\', \'dark\', \'bar\'),'),
(NULL, ' Effect', 'ZX_SLIDESHOW_EFFECT', 'fade', 'Effect used for image transition', @configuration_group_id, 3, NOW(), NULL, 'zen_cfg_select_option(array(\'sliceDown\', \'sliceDownLeft\', \'sliceUp\', \'sliceUpLeft\', \'sliceUpDown\', \'sliceUpDownLeft\', \'fold\', \'fade\', \'random\', \'slideInRight\', \'slideInLeft\', \'boxRandom\', \'boxRain\', \'boxRainReverse\', \'boxRainGrow\', \'boxRainGrowReverse\'),'),
(NULL, 'Slideshow Animation Speed', 'ZX_SLIDESHOW_ANIM_SPEED', '500', 'Slide transition speed in miliseconds', @configuration_group_id, 4, NOW(), NULL, NULL),
(NULL, 'Slideshow Pause Time', 'ZX_SLIDESHOW_PAUSE', '4000', 'How long each slide will show in miliseconds', @configuration_group_id, 5, NOW(), NULL, NULL),
(NULL, 'Slideshow Navigation Arrows', 'ZX_SLIDESHOW_NAV', 'false', 'Show Prev/Next navigation arrows', @configuration_group_id, 6, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
(NULL, 'Slideshow Navigation Hide', 'ZX_SLIDESHOW_NAV_HIDE', 'false', 'Show Prev/Next navigation arrows only on hover', @configuration_group_id, 7, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
(NULL, 'Slideshow Numbered Navigation', 'ZX_SLIDESHOW_CONTROL_NAV', 'true', 'Show 1,2,3... navigation', @configuration_group_id, 8, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
(NULL, 'Slideshow Pause on Hover', 'ZX_SLIDESHOW_HOVER_PAUSE', 'true', 'Stop animation while hovering', @configuration_group_id, 9, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
(NULL, 'Slideshow Captions', 'ZX_SLIDESHOW_CAPTION_OPACITY', '0.8', 'Caption opacity (set to 0 for invisible)', @configuration_group_id, 10, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide1', 'ZX_SLIDESHOW_BANNERS_GROUP_SET9', 'banner-1', 'Slide 1', @configuration_group_id, 30, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide2', 'ZX_SLIDESHOW_BANNERS_GROUP_SET10', 'banner-2', 'Slide 2', @configuration_group_id, 31, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide3', 'ZX_SLIDESHOW_BANNERS_GROUP_SET11', 'banner-3', 'Slide 3', @configuration_group_id, 32, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide4', 'ZX_SLIDESHOW_BANNERS_GROUP_SET12', 'slide4', 'Slide 4', @configuration_group_id, 33, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide5', 'ZX_SLIDESHOW_BANNERS_GROUP_SET13', 'slide5', 'Slide 5', @configuration_group_id, 34, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide6', 'ZX_SLIDESHOW_BANNERS_GROUP_SET14', 'slide6', 'Slide 6', @configuration_group_id, 35, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide7', 'ZX_SLIDESHOW_BANNERS_GROUP_SET15', 'slide7', 'Slide 7', @configuration_group_id, 36, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide8', 'ZX_SLIDESHOW_BANNERS_GROUP_SET16', 'slide8', 'Slide 8', @configuration_group_id, 37, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide9', 'ZX_SLIDESHOW_BANNERS_GROUP_SET17', 'slide9', 'Slide 9', @configuration_group_id, 38, NOW(), NULL, NULL),
(NULL, 'Banner Display Groups - Slide10', 'ZX_SLIDESHOW_BANNERS_GROUP_SET18', 'slide10', 'Slide 10', @configuration_group_id, 39, NOW(), NULL, NULL),
(NULL, 'ZX Slideshow Version', 'ZX_SLIDESHOW_VERSION', '2.0', 'Currently using: <strong>v2.0</strong><br />Module brought to you by <a href="http://www.zenexpert.com" target="_blank">ZenExpert</a>', @configuration_group_id, 50, NOW(), NULL, 'zen_cfg_select_option(array(\'2.0\'),');

# Register the configuration page for Admin Access Control
DELETE FROM admin_pages WHERE page_key = 'configZXSlideshow';
INSERT IGNORE INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order) VALUES ('configZXSlideshow','BOX_CONFIGURATION_ZX_SLIDESHOW','FILENAME_CONFIGURATION',CONCAT('gID=',@configuration_group_id),'configuration','Y',@configuration_group_id);