UPDATE configuration SET configuration_value = '1' WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = '0' WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = '0' WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS';
UPDATE configuration SET configuration_value = '0' WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_UPCOMING';
#
#	Columns
#
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'COLUMN_LEFT_STATUS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'COLUMN_RIGHT_STATUS';
#
UPDATE configuration SET configuration_value = '234px' WHERE configuration_key = 'COLUMN_WIDTH_LEFT';
UPDATE configuration SET configuration_value = '234px' WHERE configuration_key = 'COLUMN_WIDTH_RIGHT';
UPDATE configuration SET configuration_value = '234px' WHERE configuration_key = 'BOX_WIDTH_LEFT';
UPDATE configuration SET configuration_value = '234px' WHERE configuration_key = 'BOX_WIDTH_RIGHT';
#
#		Categories box
#
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_COUNTS';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'SHOW_CATEGORIES_BOX_SPECIALS';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'SHOW_CATEGORIES_BOX_PRODUCTS_NEW';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'SHOW_CATEGORIES_BOX_PRODUCTS_ALL';
#
#		Bestsellers box
#
UPDATE configuration SET configuration_value = 5 WHERE configuration_key = 'MAX_DISPLAY_BESTSELLERS';
#
#
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'DEFINE_PAGE_2_STATUS';
#
#	EZ-pages
#
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'EZPAGES_STATUS_HEADER';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'EZPAGES_STATUS_FOOTER';
UPDATE configuration SET configuration_value = '' WHERE configuration_key = 'EZPAGES_SEPARATOR_HEADER';
UPDATE configuration SET configuration_value = '&nbsp;&nbsp;|&nbsp;&nbsp;' WHERE configuration_key = 'EZPAGES_SEPARATOR_FOOTER';
#
#	Banners
#
UPDATE configuration SET configuration_value = 'banner-1' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET1';
UPDATE configuration SET configuration_value = 'banner-2' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET2';
UPDATE configuration SET configuration_value = 'banner-3' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET3';
UPDATE configuration SET configuration_value = 'banner-4' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET4';
UPDATE configuration SET configuration_value = 'banner-5' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET5';
UPDATE configuration SET configuration_value = 'banner-6' WHERE configuration_key = 'SHOW_BANNERS_GROUP_SET6';
#
#
#	Images
#
UPDATE configuration SET configuration_value = 114 WHERE configuration_key = 'SMALL_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 114 WHERE configuration_key = 'SMALL_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 350 WHERE configuration_key = 'MEDIUM_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 350 WHERE configuration_key = 'MEDIUM_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_SHOPPING_CART_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_SHOPPING_CART_HEIGHT';
#
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_WIDTH';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_HEIGHT';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 195 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_HEIGHT';
#
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_HEIGHT';
UPDATE configuration SET configuration_value = 165 WHERE configuration_key = 'SUBCATEGORY_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 165 WHERE configuration_key = 'SUBCATEGORY_IMAGE_HEIGHT';
#
#
#
#	Listing
#
#		Columns
#
UPDATE configuration SET configuration_value = 5 WHERE configuration_key = 'MAX_DISPLAY_CATEGORIES_PER_ROW';
UPDATE configuration SET configuration_value = 5 WHERE configuration_key = 'SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS';
#
#		Number of products
#
#			Main page
#
UPDATE configuration SET configuration_value = 12 WHERE configuration_key = 'MAX_DISPLAY_SEARCH_RESULTS_FEATURED';
UPDATE configuration SET configuration_value = 8 WHERE configuration_key = 'MAX_DISPLAY_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = 8 WHERE configuration_key = 'MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX';
UPDATE configuration SET configuration_value = 8 WHERE configuration_key = 'MAX_DISPLAY_UPCOMING_PRODUCTS';
UPDATE configuration SET configuration_value = 8 WHERE configuration_key = 'MAX_DISPLAY_SPECIAL_PRODUCTS';
#
UPDATE configuration SET configuration_value = 5 WHERE configuration_key = 'MAX_DISPLAY_ALSO_PURCHASED';
#
#
#		Description
#
UPDATE configuration SET configuration_value = 400 WHERE configuration_key = 'PRODUCT_LIST_DESCRIPTION';
#
UPDATE configuration SET configuration_value = 450 WHERE configuration_key = 'PRODUCT_NEW_LIST_DESCRIPTION';
UPDATE configuration SET configuration_value = 450 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_DESCRIPTION';
UPDATE configuration SET configuration_value = 450 WHERE configuration_key = 'PRODUCT_ALL_LIST_DESCRIPTION';
#
#
#
#
#
#		Number of products
#
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'MAX_DISPLAY_PRODUCTS_NEW';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'MAX_DISPLAY_PRODUCTS_ALL';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'MAX_DISPLAY_PRODUCTS_LISTING';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'MAX_DISPLAY_RESULTS_CATEGORIES';


UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS';
#
#
UPDATE configuration SET configuration_value = 3 WHERE configuration_key = 'PREV_NEXT_BAR_LOCATION';
#
#		Display of products	
#
#			New Products
#
UPDATE configuration SET configuration_value = 1102 WHERE configuration_key = 'PRODUCT_NEW_LIST_IMAGE';
UPDATE configuration SET configuration_value = 1202 WHERE configuration_key = 'PRODUCT_NEW_LIST_QUANTITY';
UPDATE configuration SET configuration_value = 2701 WHERE configuration_key = 'PRODUCT_NEW_BUY_NOW';
UPDATE configuration SET configuration_value = 2562 WHERE configuration_key = 'PRODUCT_NEW_LIST_NAME';
UPDATE configuration SET configuration_value = 2301 WHERE configuration_key = 'PRODUCT_NEW_LIST_MODEL';
UPDATE configuration SET configuration_value = 2401 WHERE configuration_key = 'PRODUCT_NEW_LIST_MANUFACTURER';
UPDATE configuration SET configuration_value = 2601 WHERE configuration_key = 'PRODUCT_NEW_LIST_PRICE';
UPDATE configuration SET configuration_value = 2502 WHERE configuration_key = 'PRODUCT_NEW_LIST_WEIGHT';
UPDATE configuration SET configuration_value = 2102 WHERE configuration_key = 'PRODUCT_NEW_LIST_DATE_ADDED';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART';
#
#			Featured Products		
#
UPDATE configuration SET configuration_value = 1102 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_IMAGE';
UPDATE configuration SET configuration_value = 1202 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_QUANTITY';
UPDATE configuration SET configuration_value = 2701 WHERE configuration_key = 'PRODUCT_FEATURED_BUY_NOW';
UPDATE configuration SET configuration_value = 2562 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_NAME';
UPDATE configuration SET configuration_value = 2301 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_MODEL';
UPDATE configuration SET configuration_value = 2401 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_MANUFACTURER';
UPDATE configuration SET configuration_value = 2601 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_PRICE';
UPDATE configuration SET configuration_value = 2502 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_WEIGHT';
UPDATE configuration SET configuration_value = 2102 WHERE configuration_key = 'PRODUCT_FEATURED_LIST_DATE_ADDED';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART';
#
#			All Products		
#
UPDATE configuration SET configuration_value = 1102 WHERE configuration_key = 'PRODUCT_ALL_LIST_IMAGE';
UPDATE configuration SET configuration_value = 1202 WHERE configuration_key = 'PRODUCT_ALL_LIST_QUANTITY';
UPDATE configuration SET configuration_value = 2701 WHERE configuration_key = 'PRODUCT_ALL_BUY_NOW';
UPDATE configuration SET configuration_value = 2562 WHERE configuration_key = 'PRODUCT_ALL_LIST_NAME';
UPDATE configuration SET configuration_value = 2301 WHERE configuration_key = 'PRODUCT_ALL_LIST_MODEL';
UPDATE configuration SET configuration_value = 2401 WHERE configuration_key = 'PRODUCT_ALL_LIST_MANUFACTURER';
UPDATE configuration SET configuration_value = 2601 WHERE configuration_key = 'PRODUCT_ALL_LIST_PRICE';
UPDATE configuration SET configuration_value = 2502 WHERE configuration_key = 'PRODUCT_ALL_LIST_WEIGHT';
UPDATE configuration SET configuration_value = 2102 WHERE configuration_key = 'PRODUCT_ALL_LIST_DATE_ADDED';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART';
#
#
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS';
#
#
UPDATE configuration SET configuration_value = 2 WHERE configuration_key = 'PRODUCT_INFO_PREVIOUS_NEXT';
#
#
#		Number of records
#
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_MANUFACTURERS_LIST';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_MUSIC_GENRES_LIST';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_RECORD_COMPANY_LIST';
#
#		Product boxes
#
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_RANDOM_SELECT_REVIEWS';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_RANDOM_SELECT_NEW';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_RANDOM_SELECT_SPECIALS';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'MAX_RANDOM_SELECT_FEATURED_PRODUCTS';
#
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_SHOPPING_CART_BOX_STATUS';
UPDATE configuration SET configuration_value = '' WHERE configuration_key = 'CATEGORIES_SEPARATOR_SUBS';
#
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_FOOTER_IP';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'CATEGORIES_TABS_STATUS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_CUSTOMER_GREETING';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'DEFINE_BREADCRUMB_STATUS';
UPDATE configuration SET configuration_value = 'Customer Service: +1 800 559 6580<br>9870 St Vincent Place,<br>Glasgow, DC 45 Fr 45.<br>' WHERE configuration_key = 'STORE_NAME_ADDRESS';
#
#
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_SALE_DISCOUNT_STATUS';
UPDATE configuration SET configuration_value = 'Yes' WHERE configuration_key = 'IMAGE_USE_CSS_BUTTONS';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'DISPLAY_CART';