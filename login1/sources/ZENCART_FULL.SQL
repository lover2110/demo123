# --------------------------------------------------------

# 
# Table structure for table `banners`
# 

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(512) collate utf8_unicode_ci NOT NULL default '',
  `banners_url` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `banners_image` varchar(64) collate utf8_unicode_ci NOT NULL default '',
  `banners_group` varchar(15) collate utf8_unicode_ci NOT NULL default '',
  `banners_html_text` text collate utf8_unicode_ci,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `banners_open_new_windows` int(1) NOT NULL default '1',
  `banners_on_ssl` int(1) NOT NULL default '1',
  `banners_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`banners_id`),
  KEY `idx_status_group_zen` (`status`,`banners_group`),
  KEY `idx_expires_date_zen` (`expires_date`),
  KEY `idx_date_scheduled_zen` (`date_scheduled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `banners`
# 

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `banners_open_new_windows`, `banners_on_ssl`, `banners_sort_order`) VALUES 
(1, '', 'index.php?main_page=index&cPath=2', 'slide1.jpg', 'banner-1', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(2, '', 'index.php?main_page=product_info&cPath=3&products_id=10', 'slide2.jpg', 'banner-2', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(3, '', 'index.php?main_page=specials', 'slide3.jpg', 'banner-3', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(4, '<h5>Special offer</h5><h3>soft toys</h3><h4>GET UP TO</h4><b>20% off</b><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 'index.php?main_page=index&cPath=3', 'pic1.jpg', 'banner-4', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(5, '<h5>Special offer</h5><h6>new toys<i>20% OFF</i></h6>', 'index.php?main_page=index&cPath=4', 'pic2.jpg', 'banner-4', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(6, '<h6>7-day<i>product return</i></h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor.</p><b></b>', 'index.php?main_page=product_info&cPath=3&products_id=11', 'pic3.jpg', 'banner-4', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(7, '<h3>arts<i>supplies</i></h3></h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><strong>shop now!</strong>', 'index.php?main_page=product_info&cPath=3&products_id=12', 'pic4.jpg', 'banner-5', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(8, '<h3>lego</h3>', 'index.php?main_page=product_info&cPath=3&products_id=13', 'pic5.jpg', 'banner-5', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(9, '<h3>top<i>sellers</i></h3>', 'index.php?main_page=product_info&cPath=3&products_id=14', 'pic6.jpg', 'banner-5', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(10, '<h3>building <i>sets</i></h3>', 'index.php?main_page=product_info&cPath=3&products_id=15', 'pic7.jpg', 'banner-6', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0),
(11, '<h2>free</h2><h3>shipping</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><b></b>', 'index.php?main_page=product_info&cPath=3&products_id=16', 'pic8.jpg', 'banner-6', '', 0, NULL, NULL, '0001-01-01 00:00:00', NULL, 1, 0, 1, 0);

# --------------------------------------------------------

# 
# Table structure for table `categories`
# 

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `categories_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`categories_id`),
  KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  KEY `idx_status_zen` (`categories_status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `categories`
# 

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_status`) VALUES
(1, 'cat1.png', 0, 1, NULL, NULL, 1),
(2, 'cat2.png', 0, 2, NULL, NULL, 1),
(3, 'cat3.png', 0, 3, NULL, NULL, 1),
(4, 'cat4.png', 0, 4, NULL, NULL, 1),
(5, 'cat5.png', 0, 5, NULL, NULL, 1),
(6, 'cat6.png', 0, 6, NULL, NULL, 1),
(7, 'cat7.png', 0, 7, NULL, NULL, 1),
(8, 'cat8.png', 0, 8, NULL, NULL, 1),
(9, 'cat9.png', 0, 9, NULL, NULL, 1),
(31, 'sub1.png', 3, 1, NULL, NULL, 1),
(32, 'sub2.png', 3, 2, NULL, NULL, 1),
(33, 'sub3.png', 3, 3, NULL, NULL, 1),
(34, 'sub4.png', 3, 4, NULL, NULL, 1),
(35, 'sub5.png', 3, 5, NULL, NULL, 1),
(36, 'sub6.png', 3, 6, NULL, NULL, 1),
(37, 'sub7.png', 3, 7, NULL, NULL, 1);

# --------------------------------------------------------

# 
# Table structure for table `categories_description`
# 

DROP TABLE IF EXISTS `categories_description`;
CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL default '',
  `categories_description` text NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name_zen` (`categories_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `categories_description`
# 

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`, `categories_description`) VALUES
(1, 1, 'Power Tools', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam mattis, augue a pharetra aliquet, turpis magna sagittis odio, non lobortis dolor nulla a massa.'),
(2, 1, 'Cordless Tools', 'Mauris quis neque vitae velit fringilla tristique. Fusce eu massa ut lacus tincidunt venenatis. Duis facilisis tellus vel velit lacinia.'),
(3, 1, 'Hand Tools', 'Curabitur porta pretium lectus. Etiam consectetuer, erat in dictum ornare, massa turpis tempus lorem, sit amet gravida mauris lacus nec metus.'),
(4, 1, 'Batteries', 'Integer id libero id orci porttitor tempus. Aliquam mollis, nulla sed nonummy venenatis, eros est elementum est, nec egestas mi dui eu sapien. Integer id libero id orci porttitor tempus. Aliquam mollis, nulla sed nonummy venenatis, eros est elementum est, nec egestas mi dui eu sapien. Integer id libero id orci porttitor tempus. Aliquam mollis, nulla sed nonummy venenatis, eros est elementum est, nec egestas mi dui eu sapien. Integer id libero id orci porttitor tempus. Aliquam mollis, nulla sed nonummy venenatis, eros est elementum est, nec egestas mi dui eu sapien.'),
(5, 1, 'Bare Tools', 'Fusce fringilla. Suspendisse venenatis. Maecenas justo. Aenean nunc eros, pharetra facilisis, eleifend vel, eleifend vel, nulla.'),
(6, 1, 'Electricians Tools', 'Proin dapibus lectus vitae nibh. Fusce leo massa, sagittis sed, aliquet in, lacinia sed, justo. Duis varius est. Nunc dapibus, libero sit amet.'),
(7, 1, 'Plumbing Tools', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam mattis, augue a pharetra aliquet, turpis magna sagittis odio, non lobortis dolor nulla a massa.'),
(8, 1, 'Safety Equipment', 'Mauris quis neque vitae velit fringilla tristique. Fusce eu massa ut lacus tincidunt venenatis. Duis facilisis tellus vel velit lacinia.'),
(9, 1, 'Lasers', 'Curabitur porta pretium lectus. Etiam consectetuer, erat in dictum ornare, massa turpis tempus lorem, sit amet gravida mauris lacus nec metus.'),
(31, 1, 'Tempor  SET', 'Donec eleifend nulla et nisi. Pellentesque orci felis, viverra vel, vulputate ac, euismod faucibus, augue. Proin viverra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc iaculis elementum nibh. Phasellus imperdiet, lectus vitae feugiat auctor, dui nibh feugiat.'),
(32, 1, 'incididunt', 'Ut at justo. Morbi lobortis varius nunc. Aliquam fermentum felis ac ante. Sed placerat tempor dolor. Duis vitae justo in diam pretium scelerisque. Cras dictum nibh sed nulla. Maecenas non pede id mi mollis molestie. Vivamus iaculis blandit mauris. Sed vestibulum viverra libero.'),
(33, 1, 'ut labore et ', 'In fermentum dignissim est. Cras laoreet mollis erat. Sed adipiscing porttitor est. Donec scelerisque. Cras vehicula libero non diam. Maecenas sed felis at dui convallis ultrices. Suspendisse libero tortor, dictum eu, rutrum vitae, luctus sed, neque. Nulla quis metus. Praesent sem sapien, ullamcorper.'),
(34, 1, 'dolore magna ', 'Donec eleifend nulla et nisi. Pellentesque orci felis, viverra vel, vulputate ac, euismod faucibus, augue. Proin viverra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc iaculis elementum nibh. Phasellus imperdiet, lectus vitae feugiat auctor, dui nibh feugiat.'),
(35, 1, 'Morbi vitae', 'Ut at justo. Morbi lobortis varius nunc. Aliquam fermentum felis ac ante. Sed placerat tempor dolor. Duis vitae justo in diam pretium scelerisque. Cras dictum nibh sed nulla. Maecenas non pede id mi mollis molestie. Vivamus iaculis blandit mauris. Sed vestibulum viverra libero.'),
(36, 1, 'aliqua Ut enim', 'Donec eleifend nulla et nisi. Pellentesque orci felis, viverra vel, vulputate ac, euismod faucibus, augue. Proin viverra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc iaculis elementum nibh. Phasellus imperdiet, lectus vitae feugiat auctor, dui nibh feugiat.'),
(37, 1, 'ad minim veniam', 'Ut at justo. Morbi lobortis varius nunc. Aliquam fermentum felis ac ante. Sed placerat tempor dolor. Duis vitae justo in diam pretium scelerisque. Cras dictum nibh sed nulla. Maecenas non pede id mi mollis molestie. Vivamus iaculis blandit mauris. Sed vestibulum viverra libero.');
# --------------------------------------------------------

# 
# Table structure for table `ezpages`
# 

DROP TABLE IF EXISTS `ezpages`;
CREATE TABLE `ezpages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `alt_url` varchar(255) NOT NULL default '',
  `alt_url_external` varchar(255) NOT NULL default '',
  `pages_html_text` mediumtext,
  `status_header` int(1) NOT NULL default '1',
  `status_sidebox` int(1) NOT NULL default '1',
  `status_footer` int(1) NOT NULL default '1',
  `status_toc` int(1) NOT NULL default '1',
  `header_sort_order` int(3) NOT NULL default '0',
  `sidebox_sort_order` int(3) NOT NULL default '0',
  `footer_sort_order` int(3) NOT NULL default '0',
  `toc_sort_order` int(3) NOT NULL default '0',
  `page_open_new_window` int(1) NOT NULL default '0',
  `page_is_ssl` int(1) NOT NULL default '0',
  `toc_chapter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `ezpages`
# 

INSERT INTO `ezpages` (`pages_id`, `languages_id`, `pages_title`, `alt_url`, `alt_url_external`, `pages_html_text`, `status_header`, `status_sidebox`, `status_footer`, `status_toc`, `header_sort_order`, `sidebox_sort_order`, `footer_sort_order`, `toc_sort_order`, `page_open_new_window`, `page_is_ssl`, `toc_chapter`) VALUES (1, 1, 'EZPages', '', '', 'This is the main page listed under the Link EZPages in the Header<br /><br />\r\n\r\n<strong>See: What is EZPages? Link for detailed use of EZPages</strong><br /><br />\r\n\r\nThis Link could show in the Header, Footer or Sidebox or a combination of all three locations.<br /><br />\r\n\r\nThe Chapter and TOC settings are for using this Page in combination with other Pages.<br /><br />\r\n\r\nThe other Pages can be shown either *only* with this Link in the Chapter and TOC or as their own Link in the Header, Footer or Sidebox, depending on how you would like them to appear on your site.<br /><br />\r\n\r\nThere is no true "Master" Link, other than the Links you actually have configured to display. But any Link in a Chapter can be displayed in any of the 3 locations for the Header, Footer or Sidebox or not at all, where it only appears together with the other Links in the Chapter.', 0, 0, 0, 1, 10, 0, 0, 10, 0, 0, 10),
(2, 1, 'A New Page', '', '', 'This is another page that is linked to the Chapter 10 via the Chapter number used and is sorted based on the TOC Order.<br /><br />\r\n\r\nThere is not a link to this page via the Header, Footer nor the Sidebox.<br /><br />\r\n\r\nThis page is only seen if the "main" link is selected and then it will show in the TOC listing.<br /><br />\r\n\r\nThis is a handy way to have numerous links that are related but only show one main link to get to them all.<br /><br />', 0, 0, 0, 1, 0, 0, 0, 30, 0, 0, 10),
(3, 1, 'Another New Page', '', '', 'This is yet another new page or link that is part of Chapter 10<br /><br />\r\n\r\nThe numbering of the Chapters can be done in any manner. But, by number in increments such as 10, 20, 30, etc. you can later insert pages, or links, as needed within the existing pages.<br /><br />\r\n\r\nThere is no limit to the number of pages, or links, that can be grouped together using the Chapter.<br /><br />\r\n\r\nThe display of the Previous/Next and TOC listing is a setting that can be turned on or off.', 0, 0, 0, 1, 0, 0, 0, 40, 0, 0, 10),
(4, 1, 'My Link', '', '', 'This is a single page link that will be shown in the Sidebox.<br /><br />\r\n\r\nThere are no additional pages or links associated with this page as there is no Chapter.<br /><br />\r\n\r\nLater, if you want to expand on this link you can add a Chapter and TOC settings and build a group.<br /><br />\r\n\r\nNotice that the Previous/Next and TOC automatically disable when there isn''t a Chapter. Even with a Chapter, there must be more than one (1) related link or page in the group before these will display.', 0, 1, 0, 0, 0, 10, 0, 0, 0, 0, 0),
(5, 1, 'Anything', '', '', 'The title or link names can be anything that you would like to use.<br /><br />\r\n\r\nYou decide on the content and the link name relative to that content.<br /><br />\r\n\r\nThen, define where you want the link to show: Header, Footer or Sidebox or as a combination of these three locations.<br /><br />\r\n\r\nThe content of the page can be anything you like. Be sure that your content is valid in regard to table and stylesheet rules.<br /><br />\r\n\r\nYou can even set up the links to go to Secure or Non-Secure pages as well as open in the same or a new window.<br /><br />\r\n\r\nLinks can also be setup to use internal or external links vs the HTML Content. See: examples below in the Link URL settings.', 0, 1, 0, 0, 0, 20, 0, 0, 0, 0, 0),
(6, 1, 'Shared', '', '', 'This link is a "shared" link between the Header, Footer and Sidebox.<br /><br />\r\n\r\nThe number on the order was set to 50 on all of the settings just for the sake of an easier notation on entering it.<br /><br />\r\n\r\nThe order can be the same or different for the three locations.<br /><br />\r\n\r\nIf you wanted to really get creative, you could also have this as part of a Chapter not related to the link order.<br /><br />', 0, 1, 0, 0, 50, 50, 50, 0, 0, 0, 0),
(7, 1, 'My Account', 'index.php?main_page=account', '', '', 0, 0, 0, 0, 0, 0, 10, 0, 0, 1, 0),
(8, 1, 'Site Map', 'index.php?main_page=site_map', '', '', 0, 1, 0, 0, 0, 40, 20, 0, 0, 0, 0),
(9, 1, 'Privacy Notice', 'index.php?main_page=privacy', '', '', 0, 0, 0, 0, 30, 0, 40, 0, 0, 0, 0),
(10, 1, 'Zen Cart', '', 'http://www.zen-cart.com', '', 0, 0, 0, 0, 60, 0, 0, 0, 1, 0, 0),
(11, 1, 'Gift Certificates', 'index.php?main_page=index&cPath=21', '', '', 0, 1, 0, 0, 0, 60, 0, 0, 0, 0, 0),
(12, 1, 'Action DVDs', 'index.php?main_page=index&cPath=3_10', '', '', 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0),
(13, 1, 'Google', '', 'http://www.google.com', '', 0, 1, 0, 0, 0, 70, 0, 0, 1, 0, 0),
(14, 1, 'What is EZ-Pages?', '', '', '<table cellspacing="4" cellpadding="4" border="3" align="center" style="width: 80%;"><tbody><tr><td><span style="font-style: italic;">\r\n<span style="font-weight: bold;">Note: This EZ-Page has been written with the help of the HTMLarea Editor.<br /> <br />This means that this EZ-page will not validate correctly based on how HTMLarea or other editors renders the code.</span></span></td></tr></tbody></table><br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">Summary</span><br /><br /><span style="font-weight: bold;">EZ-Pages</span> is a fast, easy way of creating links and additional pages.<br /><br />The additional Pages can be for:<br /><ul><li>New Pages</li><li>Internal Links</li><li>External Links</li><li>Secure or Non-Secure pages</li><li>Same or New Window</li></ul>In Addition, there is the ability to create &quot;related&quot; links in the format of a Chapter (group) and its TOC (related pages/links).<br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">Link Naming</span><br /><br />Links are named by the Page Title. All Links need a Page Title in order to function.<br /><br />If you forget to add a Page Title, then you will not be able to add the Link.<br /><br />If you do not assign an Order for the Header, Sidebox or Footer, then the Link will not display even if you have a Page Title.<br /><br /><span style="font-weight: bold;"><span style="color: rgb(255, 0, 0);">Link Placement</span><br /><br /></span>While you have the option of adding Additional Links to the Header, Footer and Sidebox with EZ-Pages, you are not limited to these three Link locations. Links can be in one or more locations simply by enabling the Order for the Location(s) where the Link should appear..<br /><br />The Link Location Status for the Header, Footer and Sidebox is controlled simply by setting these to Yes or No for each setting. Then, set the Order in which the Link should appear for each location.<br /><br />This means that if you were to set Header to Yes 30 and Sidebox to Yes 50 then the link would appear in both the Header and Sidebox in the Order of your Links.<br /><br />The Order numbering method is up to you. Numbering using 10, 20, 30, etc. will allow you to sort the Links and add additional Links later.<br /><br />Note: a 0 value for the Order will disable the Link from displaying.<br /><br /><span style="font-weight: bold;"><span style="color: rgb(255, 0, 0);">Open in New Window and Secure Pages</span><br /></span><br />With EZ-Pages, each Link can take you to the same, main window for your shop; or, you can have the Link open a brand new New Window. In addition, there is an option for making the Link open as a Secure Page or a Non-Secure Page.<br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">Chapter and TOC</span><br style="font-weight: bold; color: rgb(255, 0, 0);" /><br />The Chapter and TOC, or Table of Contents, are a unique method of building Multiple Links that interact together.<br /><br />While these Links still follow the rules of the Header, Footer and Sidebox placement, the difference is that only one of the Links, the Main Link, needs to be displayed anywhere on the site.<br /><br />If you had, for example, 5 related Links, you could add the first Link as the Main Link by setting its location to the Header, Footer or Sidebox and set its Order, as usual.<br /><br />Next, you need to assign a Chapter or Group number to the Link. This Chapter holds the related Links together.<br /><br />Then, set the TOC or Table of Contents setting. This is a secondary Sort Order for within the Chapter.<br /><br />Again, you can display any of the Links within a Chapter, as well as making any of these Links the Main Link. Whether the Links all show, or just one or more of the Links show, the Chapter is the key to grouping these Links together in the TOC or Previous/Next. <br /><br /><span style="font-weight: bold; font-style: italic;">NOTE: While all Links within a Chapter will display together, you can have the different Links display in the Header, Footer or Sidebox on their own. Or, you can have the additional Links only display when the Main Link or one of the Additional Links within the Chapter has been opened.</span><br style="font-weight: bold; font-style: italic;" /><br />The versitility of EZ-Pages will make adding new Links and Pages extreamly easy for the beginner as well as the advance user.<br /><br />While this page was made in HTMLarea editor, any HTML editor could be used.<br /><br />However, be careful ... HTML editors will often add the opening and closing tags for the &lt;html&gt;, &lt;head&gt; and &lt;body&gt; to the file you are working on.<br /><br />These are already added to the pages via EZ-Pages.<br /><br /><span style="color: rgb(255, 0, 0); font-weight: bold;">External Link URL</span><br /><br />External Link URLs are links to outside pages not within your shop. These can be to any valid URL such as:<br /><br />http://www.sashbox.net<br /><br />You need to include the full URL path to any External Link URL. You may also mark these to open in a New Window or the Same Window.<br /><br /><span style="color: rgb(255, 0, 0); font-weight: bold;">Internal Link URL</span><br /><br />Internal Link URLs are links to internal pages within your shop. These can be to any valid URL, but should be written as relative links such as:<br /><br />index.php?main_page=index&amp;cPath=21<br /><br />The above Link would take you to the Category for categories_id 21<br /><br />While these links can be the Full URL to an Internal Link, it is best to write as a Relative Link so that if you change domains, are work on a temporary domain or an IP Address, the Link will remain valid if moved to another domain, IP Address, etc.<br /><br />Internal Links can also open in a New Window or the Same Window or be for Secure or Non-Secure Pages.<br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">EZ-Pages Additional Pages vs Internal Links vs External Links</span><br /><br />The Type of Link that you create is based on an order of precidence, where HTML Content will superceed both the Internal Link and the External Link values.<br /><br />The External Link URL will superceed the Internal Link URL.<br /><br />If you try to set a combination of HTML Content, Internal Link and/or External Link, the Link will be flagged in the listing with a read icon to alert you to your mistake.<br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">WARNING ...</span><br /><br />When using Editors such as HTMLarea, if you hit enter in the HTML Content area <br /> will be added. These will be detected as &quot;content&quot; and will override any Internal Link URL or External Link URL.<br /><br /><span style="font-weight: bold; color: rgb(255, 0, 0);">Admin Only Display</span><br /><br />Sometimes, when working on EZ-Pages, you will want to be able to work on a Live Site and see the results of your work, but not allow the Customers to see this until you are done.<br /><br />There are 3 settings in the Configuration ... EZ-Pages Settings for the Header, Footer and Sidebox  Status:<br /><ul><li>OFF</li><li>ON</li><li>Admin Only</li></ul>The Admin Only setting is controlled by the IP Address(es) set in the Website Maintenance.<br /><br />This can be very handy when needing to work on a Live Site but not wanting customers to see the work in progress.<br /><br />', 0, 0, 0, 1, 0, 0, 0, 20, 0, 0, 10),
(15, 1, 'Home', 'index.php?main_page=index', '', '', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0),
(16, 1, 'New products', 'index.php?main_page=products_new', '', '', 1, 0, 1, 0, 2, 2, 2, 2, 0, 0, 0),
(17, 1, 'Specials', 'index.php?main_page=specials', '', '', 1, 0, 1, 0, 3, 3, 3, 3, 0, 0, 0),
(18, 1, 'All products', 'index.php?main_page=products_all', '', '', 1, 0, 1, 0, 4, 4, 4, 4, 0, 0, 0),
(19, 1, 'Reviews', 'index.php?main_page=reviews', '', '', 1, 0, 1, 0, 5, 5, 5, 5, 0, 0, 0),
(20, 1, 'Contacts', 'index.php?main_page=contact_us', '', '', 1, 0, 1, 0, 6, 6, 6, 6, 0, 0, 0),
(21, 1, 'FAQs', 'index.php?main_page=gv_faq', '', '', 1, 0, 1, 0, 7, 7, 7, 0, 0, 0, 0);

# --------------------------------------------------------

# 
# Table structure for table `featured`
# 

DROP TABLE IF EXISTS `featured`;
CREATE TABLE `featured` (
  `featured_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `featured_date_added` datetime default NULL,
  `featured_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `featured_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`featured_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`featured_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `featured`
# 

INSERT INTO `featured` (`featured_id`, `products_id`, `featured_date_added`, `featured_last_modified`, `expires_date`, `date_status_change`, `status`, `featured_date_available`) VALUES
(1, 1, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(2, 2, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(3, 3, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(4, 4, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(5, 5, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(6, 6, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(7, 7, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(8, 8, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(9, 9, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(10, 10, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(11, 11, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(12, 12, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01');

# --------------------------------------------------------

# 
# Table structure for table `manufacturers`
# 

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL default '',
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `idx_mfg_name_zen` (`manufacturers_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `manufacturers`
# 

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturers_name`, `manufacturers_image`, `date_added`, `last_modified`) VALUES
(1, 'Example 1', NULL, '0001-01-01 00:00:00', NULL),
(2, 'Example 2', NULL, '0001-01-01 00:00:00', NULL),
(3, 'Example 3', NULL, '0001-01-01 00:00:00', NULL);

# --------------------------------------------------------

# 
# Table structure for table `manufacturers_info`
# 

DROP TABLE IF EXISTS `manufacturers_info`;
CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `manufacturers_info`
# 

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(1, 1, '', 0, NULL),
(2, 1, '', 0, NULL),
(3, 1, '', 0, NULL);

# -------------------------------------------------------- 

#
# Table structure for table `currencies`
#

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `symbol_left` varchar(24) default NULL,
  `symbol_right` varchar(24) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

#
# Dumping data for table `currencies`
#

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'US Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2012-11-13 10:01:46'),
(2, 'Euro', 'EUR', '&euro;', '', '.', ',', '2', 0.77300000, '2012-11-13 10:01:46'),
(3, 'GB Pound', 'GBP', '&pound;', '', '.', ',', '2', 0.67259997, '2012-11-13 10:01:46');  

# --------------------------------------------------------

# 
# Table structure for table `products`
# 

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_type` int(11) NOT NULL default '1',
  `products_quantity` float NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_image` varchar(64) default NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_virtual` tinyint(1) NOT NULL default '0',
  `products_date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` float NOT NULL default '0',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` float NOT NULL default '0',
  `products_quantity_order_min` float NOT NULL default '1',
  `products_quantity_order_units` float NOT NULL default '1',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `product_is_call` tinyint(1) NOT NULL default '0',
  `products_quantity_mixed` tinyint(1) NOT NULL default '0',
  `product_is_always_free_shipping` tinyint(1) NOT NULL default '0',
  `products_qty_box_status` tinyint(1) NOT NULL default '1',
  `products_quantity_order_max` float NOT NULL default '0',
  `products_sort_order` int(11) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_price_sorter` decimal(15,4) NOT NULL default '0.0000',
  `master_categories_id` int(11) NOT NULL default '0',
  `products_mixed_discount_quantity` tinyint(1) NOT NULL default '1',
  `metatags_title_status` tinyint(1) NOT NULL default '0',
  `metatags_products_name_status` tinyint(1) NOT NULL default '0',
  `metatags_model_status` tinyint(1) NOT NULL default '0',
  `metatags_price_status` tinyint(1) NOT NULL default '0',
  `metatags_title_tagline_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added_zen` (`products_date_added`),
  KEY `idx_products_status_zen` (`products_status`),
  KEY `idx_products_date_available_zen` (`products_date_available`),
  KEY `idx_products_ordered_zen` (`products_ordered`),
  KEY `idx_products_model_zen` (`products_model`),
  KEY `idx_products_price_sorter_zen` (`products_price_sorter`),
  KEY `idx_master_categories_id_zen` (`master_categories_id`),
  KEY `idx_products_sort_order_zen` (`products_sort_order`),
  KEY `idx_manufacturers_id_zen` (`manufacturers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `products`
# 

INSERT INTO `products` (`products_id`, `products_type`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_virtual`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_quantity_order_min`, `products_quantity_order_units`, `products_priced_by_attribute`, `product_is_free`, `product_is_call`, `products_quantity_mixed`, `product_is_always_free_shipping`, `products_qty_box_status`, `products_quantity_order_max`, `products_sort_order`, `products_discount_type`, `products_discount_type_from`, `products_price_sorter`, `master_categories_id`, `products_mixed_discount_quantity`, `metatags_title_status`, `metatags_products_name_status`, `metatags_model_status`, `metatags_price_status`, `metatags_title_tagline_status`) VALUES
(1, 1, 999, 'Model1', '01.png', 550.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 1, 2, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 550.0000, 31, 1, 0, 0, 0, 0, 0),
(2, 1, 999, 'Model2', '02.png', 160.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 3, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 160.0000, 31, 1, 0, 0, 0, 0, 0),
(3, 1, 999, 'Model3', '03.png', 241.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 4, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 241.0000, 31, 1, 0, 0, 0, 0, 0),
(4, 1, 999, 'Model4', '04.png', 651.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 5, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 651.0000, 31, 1, 0, 0, 0, 0, 0),
(5, 1, 999, 'Model5', '05.png', 211.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 211.0000, 2, 1, 0, 0, 0, 0, 0),
(6, 1, 999, 'Model6', '06.png', 83.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 83.0000, 2, 1, 0, 0, 0, 0, 0),
(7, 1, 999, 'Model7', '07.png', 503.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 3, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 503.0000, 2, 1, 0, 0, 0, 0, 0),
(8, 1, 999, 'Model8', '08.png', 104.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 4, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 104.0000, 2, 1, 0, 0, 0, 0, 0),
(9, 1, 999, 'Model9', '09.png', 359.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 5, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 359.0000, 3, 1, 0, 0, 0, 0, 0),
(10, 1, 999, 'Model1', '10.png', 732.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 6, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 732.0000, 3, 1, 0, 0, 0, 0, 0),
(11, 1, 999, 'Model2', '11.png', 653.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 3, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 653.0000, 3, 1, 0, 0, 0, 0, 0),
(12, 1, 999, 'Model3', '12.png', 124.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 7, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 124.0000, 3, 1, 0, 0, 0, 0, 0),
(13, 1, 998, 'Model4', '13.png', 605.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 9, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 605.0000, 4, 1, 0, 0, 0, 0, 0),
(14, 1, 999, 'Model5', '14.png', 991.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 6, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 991.9900, 4, 1, 0, 0, 0, 0, 0),
(15, 1, 999, 'Model6', '15.png', 305.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 5, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 305.0000, 4, 1, 0, 0, 0, 0, 0),
(16, 1, 999, 'Model7', '16.png', 871.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 3, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 871.1400, 4, 1, 0, 0, 0, 0, 0),
(17, 1, 999, 'Model8', '17.png', 353.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 1, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 353.0000, 5, 1, 0, 0, 0, 0, 0),
(18, 1, 999, 'Model9', '18.png', 292.0000, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 3, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 292.2400, 5, 1, 0, 0, 0, 0, 0),
(19, 1, 999, 'Model1', '19.png', 785.3200, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 785.3200, 5, 1, 0, 0, 0, 0, 0),
(20, 1, 999, 'Model2', '20.png', 999.9900, 0, '2010-09-09 00:00:00', NULL, NULL, 2, 1, 0, 2, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 999.9900, 5, 1, 0, 0, 0, 0, 0);

# --------------------------------------------------------

# 
# Table structure for table `products_description`
# 

DROP TABLE IF EXISTS `products_description`;
CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL default '',
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `idx_products_name_zen` (`products_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `products_description`
# 

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(1, 1, 'Buzz Lightyear Kidizoom Digital Camera', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 9),
(2, 1, 'Children''s Life Sized Ride-In Pedal Car - 1932 Police Cruiser Ro', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 43),
(3, 1, 'Chuggington Traintastic Laptop', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 6),
(4, 1, 'Comme des Garcons 400% Be@r brick', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 38),
(5, 1, 'Danke Schoen bear', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 2),
(6, 1, 'disney 3-Wheeled Scooter', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 2),
(7, 1, 'Disney Cars 12 Boys Bike', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 1),
(8, 1, 'Disney Handy Manny 12 Boys Bike', 'You know, it''s so cool to be a child. It is the most careless time of our life because you have no obligations; everything around you is new and unknown. It is a total naivety and exploration. Kids are the best explorers in the world. They live in a totally different world where it’s impossible to find anything negative. It sounds like nonsense but it is indeed that way. Children explore outer world with the help of simple senses – sense of smell, touch, sight and others. That is why it is so important to raise children in an atmosphere of happiness and love. Everything must be perfect because child’s mentality is very tender.', '', 0),
(9, 1, 'Disney Pook-a-Looz plush toys - buzz lightyear', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 1),
(10, 1, 'Disney Pook-a-Looz plush toys - cheshire cat', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 3),
(11, 1, 'Disney Princess Digital Camera', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 2),
(12, 1, 'disney Princess Scooter', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 1),
(13, 1, 'Disney Toy Story Buzz Lightyear Space Ranger Buzz Cuffs', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 4),
(14, 1, 'Environmentally Friendly Toys for Kids - Automoblox Cars', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 0),
(15, 1, 'FirstPlay Wood - Fold-up', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 1),
(16, 1, 'Fisher-Price Power Wheels Barbie Jammin'' Jeep', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 0),
(17, 1, 'Fisher-Price Power Wheels Cadillac Escalade EX', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 0),
(18, 1, 'Fisher-Price Power Wheels Lightning McQueen', '', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can', 1),
(19, 1, 'Fisher-Price Power Wheels My First Craftsman Truck', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 0),
(20, 1, 'Lilliputiens Theophile Activity Crocodile', 'Nowadays toy industry is a very progressive and high-tech sphere and our store is offering you only the best products. Our manufacturers and vendors guarantee the premium quality of our toys. The fair price of our product will suit you; moreover - you can save some money because we often provide different promos and you can get some benefits. Our products are well-designed and they are totally safe for your child’s health. This is a very important aspect because nowadays we have a great number of fakes. You must be aware because fakes are very dangerous for your kids.', '', 0);

# --------------------------------------------------------

# 
# Table structure for table `products_to_categories`
# 

DROP TABLE IF EXISTS `products_to_categories`;
CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`),
  KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `products_to_categories`
# 

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 33),
(10, 33),
(11, 33),
(12, 33),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 9),
(14, 9),
(15, 9),
(16, 9),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 12),
(6, 12),
(7, 12),
(8, 12),
(9, 31),
(10, 31),
(11, 31),
(12, 31),
(13, 32),
(14, 32),
(15, 32),
(16, 32),
(17, 34),
(18, 34),
(19, 34),
(20, 34),
(1, 35),
(2, 35),
(3, 35),
(4, 35),
(5, 36),
(6, 36),
(7, 36),
(8, 36),
(9, 37),
(10, 37),
(11, 37),
(12, 37);

# --------------------------------------------------------

# 
# Table structure for table `reviews`
# 

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL default '',
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`reviews_id`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_customers_id_zen` (`customers_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_date_added_zen` (`date_added`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `reviews`
# 

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `date_added`, `last_modified`, `reviews_read`, `status`) VALUES
(1, 1, 1, 'Lorem Ipsum Dolor', 5, '2011.11.11', NULL, 5, 1),
(2, 2, 1, 'Lorem Ipsum Dolor', 4, '2011.10.10', NULL, 4, 1),
(3, 13, 1, 'Lorem Ipsum Dolor', 3, '2011.09.09', NULL, 3, 1),
(4, 14, 1, 'Lorem Ipsum Dolor', 2, '2011.08.08', NULL, 2, 1),
(5, 15, 1, 'Lorem Ipsum Dolor', 1, '2011.07.07', NULL, 1, 1),
(6, 16, 1, 'Lorem Ipsum Dolor', 5, '2011.06.06', NULL, 5, 1);

# --------------------------------------------------------

# 
# Table structure for table `reviews_description`
# 


DROP TABLE IF EXISTS `reviews_description`;
CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `reviews_description`
# 

INSERT INTO `reviews_description` (`reviews_id`, `languages_id`, `reviews_text`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet dui. Morbi sed mi. Duis accumsan. Etiam blandit tempus lectus. Proin mattis luctus elit. Nullam porttitor lacus euismod ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur sed lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Etiam sapien ante, rutrum ac, commodo in, posuere ut, nibh. Vivamus non leo. Etiam sodales augue. Sed faucibus ligula. Pellentesque sit amet risus. Etiam imperdiet, dui et luctus mollis, nisi tortor mattis sem, vel ultricies sem purus vel nisl. Etiam eget nunc. Etiam at sem eget justo elementum eleifend.\r\n\r\nUt nec magna. Nunc vel purus. Fusce felis. Suspendisse et ligula non sem volutpat suscipit. Cras sed neque consectetuer lorem ultrices pretium. Curabitur nibh leo, sagittis ut, rhoncus vitae, ornare quis, justo. Sed vel felis eleifend nisl commodo pretium. Etiam bibendum. Quisque porta. Nunc porttitor pretium mauris. Aliquam erat volutpat. Nam dolor nunc, placerat nec, convallis nec, iaculis sit amet, libero. Nam feugiat condimentum libero. Aenean orci mauris, volutpat eget, dignissim quis, placerat sed, enim. Ut dictum mauris ut enim. Aliquam nec lorem. Pellentesque luctus. Pellentesque tempor, lorem id tempus pellentesque, felis eros consectetuer magna, vel congue lectus ante pretium nisl. Etiam non mauris. Pellentesque facilisis.'),
(2, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet dui. Morbi sed mi. Duis accumsan. Etiam blandit tempus lectus. Proin mattis luctus elit. Nullam porttitor lacus euismod ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur sed lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Etiam sapien ante, rutrum ac, commodo in, posuere ut, nibh. Vivamus non leo. Etiam sodales augue. Sed faucibus ligula. Pellentesque sit amet risus. Etiam imperdiet, dui et luctus mollis, nisi tortor mattis sem, vel ultricies sem purus vel nisl. Etiam eget nunc. Etiam at sem eget justo elementum eleifend.\r\n\r\nUt nec magna. Nunc vel purus. Fusce felis. Suspendisse et ligula non sem volutpat suscipit. Cras sed neque consectetuer lorem ultrices pretium. Curabitur nibh leo, sagittis ut, rhoncus vitae, ornare quis, justo. Sed vel felis eleifend nisl commodo pretium. Etiam bibendum. Quisque porta. Nunc porttitor pretium mauris. Aliquam erat volutpat. Nam dolor nunc, placerat nec, convallis nec, iaculis sit amet, libero. Nam feugiat condimentum libero. Aenean orci mauris, volutpat eget, dignissim quis, placerat sed, enim. Ut dictum mauris ut enim. Aliquam nec lorem. Pellentesque luctus. Pellentesque tempor, lorem id tempus pellentesque, felis eros consectetuer magna, vel congue lectus ante pretium nisl. Etiam non mauris. Pellentesque facilisis.'),
(3, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet dui. Morbi sed mi. Duis accumsan. Etiam blandit tempus lectus. Proin mattis luctus elit. Nullam porttitor lacus euismod ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur sed lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Etiam sapien ante, rutrum ac, commodo in, posuere ut, nibh. Vivamus non leo. Etiam sodales augue. Sed faucibus ligula. Pellentesque sit amet risus. Etiam imperdiet, dui et luctus mollis, nisi tortor mattis sem, vel ultricies sem purus vel nisl. Etiam eget nunc. Etiam at sem eget justo elementum eleifend.\r\n\r\nUt nec magna. Nunc vel purus. Fusce felis. Suspendisse et ligula non sem volutpat suscipit. Cras sed neque consectetuer lorem ultrices pretium. Curabitur nibh leo, sagittis ut, rhoncus vitae, ornare quis, justo. Sed vel felis eleifend nisl commodo pretium. Etiam bibendum. Quisque porta. Nunc porttitor pretium mauris. Aliquam erat volutpat. Nam dolor nunc, placerat nec, convallis nec, iaculis sit amet, libero. Nam feugiat condimentum libero. Aenean orci mauris, volutpat eget, dignissim quis, placerat sed, enim. Ut dictum mauris ut enim. Aliquam nec lorem. Pellentesque luctus. Pellentesque tempor, lorem id tempus pellentesque, felis eros consectetuer magna, vel congue lectus ante pretium nisl. Etiam non mauris. Pellentesque facilisis.'),
(4, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris tincidunt viverra ipsum. Mauris placerat arcu non purus. In ut tortor. Duis varius facilisis orci. Aenean in nibh non pede consequat varius. Vestibulum tempus gravida nulla. Nullam et felis. Nullam nulla. Duis felis nibh, suscipit sit amet, mollis eu, mollis id, justo. Nulla vestibulum auctor elit. Aliquam quis mi sit amet odio pretium fringilla. Nulla dictum ipsum eget lectus consectetuer consectetuer. Vivamus sit amet lacus. Vivamus lacus sapien, laoreet in, tincidunt vitae, semper sit amet, ante.\r\n\r\nCurabitur vel sem. Proin massa ligula, scelerisque a, pulvinar sit amet, varius sit amet, lectus. Sed pulvinar porta sapien. Vestibulum condimentum turpis. Etiam nunc. Aliquam eu felis quis libero imperdiet volutpat. Vivamus ut tortor. Aliquam erat volutpat. Curabitur sem risus, sollicitudin non, tempus eu, placerat vitae, sapien. Duis congue elementum erat. Quisque sit amet odio. Aliquam accumsan lorem. Proin vehicula sem rhoncus augue. Phasellus ut sem eu odio vestibulum euismod. Donec pulvinar lobortis lacus.\r\n\r\nPraesent vulputate lacus in justo. Phasellus posuere. Aenean volutpat semper urna. Fusce facilisis accumsan urna. Vestibulum nec dolor a mi fringilla venenatis. Quisque sodales urna. Curabitur pharetra auctor ligula. Maecenas suscipit vestibulum turpis. Nunc dictum mi id sem. Mauris vitae lectus. Aenean consequat. Nulla lobortis imperdiet tortor. Duis posuere purus interdum nibh. Fusce ut diam eget lacus laoreet malesuada.'),
(5, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris tincidunt viverra ipsum. Mauris placerat arcu non purus. In ut tortor. Duis varius facilisis orci. Aenean in nibh non pede consequat varius. Vestibulum tempus gravida nulla. Nullam et felis. Nullam nulla. Duis felis nibh, suscipit sit amet, mollis eu, mollis id, justo. Nulla vestibulum auctor elit. Aliquam quis mi sit amet odio pretium fringilla. Nulla dictum ipsum eget lectus consectetuer consectetuer. Vivamus sit amet lacus. Vivamus lacus sapien, laoreet in, tincidunt vitae, semper sit amet, ante.\r\n\r\nCurabitur vel sem. Proin massa ligula, scelerisque a, pulvinar sit amet, varius sit amet, lectus. Sed pulvinar porta sapien. Vestibulum condimentum turpis. Etiam nunc. Aliquam eu felis quis libero imperdiet volutpat. Vivamus ut tortor. Aliquam erat volutpat. Curabitur sem risus, sollicitudin non, tempus eu, placerat vitae, sapien. Duis congue elementum erat. Quisque sit amet odio. Aliquam accumsan lorem. Proin vehicula sem rhoncus augue. Phasellus ut sem eu odio vestibulum euismod. Donec pulvinar lobortis lacus.\r\n\r\nPraesent vulputate lacus in justo. Phasellus posuere. Aenean volutpat semper urna. Fusce facilisis accumsan urna. Vestibulum nec dolor a mi fringilla venenatis. Quisque sodales urna. Curabitur pharetra auctor ligula. Maecenas suscipit vestibulum turpis. Nunc dictum mi id sem. Mauris vitae lectus. Aenean consequat. Nulla lobortis imperdiet tortor. Duis posuere purus interdum nibh. Fusce ut diam eget lacus laoreet malesuada.'),
(6, 1, 'Praesent urna nibh, auctor sit amet, facilisis gravida, adipiscing vel, sem. Nullam metus mi, pretium in, mattis vitae, tempor quis, ligula. Etiam pulvinar tempor sapien. Proin dictum tristique felis. Nunc odio. Mauris molestie pulvinar nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque nonummy justo quis nunc. Quisque non enim. Donec arcu orci, pulvinar eu, mattis ac, ornare ut, turpis. In hac habitasse platea dictumst. Suspendisse lacus turpis, molestie pulvinar, accumsan eu, dictum sed, pede. Sed diam diam, molestie sit amet, ultrices vel, blandit in, lectus. Nullam tempor pede sed mi. Cras consequat mauris eget nisi. Nullam ultricies libero nec lacus. Fusce sed risus.');

# --------------------------------------------------------

# 
# Table structure for table `specials`
# 

DROP TABLE IF EXISTS `specials`;
CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `specials_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`specials_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`specials_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

# 
# Dumping data for table `specials`
# 

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`, `specials_date_available`) VALUES
(1, 1, 522.4000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(2, 2, 105.4000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(3, 13, 514.2500, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(4, 14, 743.2500, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(5, 15, 213.5000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(6, 16, 435.5000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(7, 17, 435.5000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01'),
(8, 18, 435.5000, '0001-01-01 00:00:00', '0001-01-01 00:00:00', '2050-01-01', '0001-01-01 00:00:00', 1, '0001-01-01');
        
        