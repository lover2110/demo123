<?php
/**
 * Side Box Template
 *
 * @package templateSystem
 * @copyright Copyright 2003-2011 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
 * @version $Id: tpl_specials.php 18698 2011-05-04 14:50:06Z wilt $
 */
  $content = "";
  $specials_box_counter = 0;
  while (!$random_specials_sidebox_product->EOF) {
    $specials_box_counter++;
    $specials_box_price = zen_get_products_display_price($random_specials_sidebox_product->fields['products_id']);
    $content .= '<div class="sideBoxContent product-col">';
	$content .= '<div class="img">';
    $content .= '<a href="' . zen_href_link(zen_get_info_page($random_specials_sidebox_product->fields["products_id"]), 'cPath=' . zen_get_generated_category_path_rev($random_specials_sidebox_product->fields["master_categories_id"]) . '&products_id=' . $random_specials_sidebox_product->fields["products_id"]) . '">' . zen_image(DIR_WS_IMAGES . $random_specials_sidebox_product->fields['products_image'], $random_specials_sidebox_product->fields['products_name'], IMAGE_PRODUCT_NEW_WIDTH, IMAGE_PRODUCT_NEW_HEIGHT) . '</a><br />'; 
	$content .= '</div>';
	$content .= '<div class="prod-info">';
    $content .= '<a class="name" href="' . zen_href_link(zen_get_info_page($random_specials_sidebox_product->fields["products_id"]), 'cPath=' . zen_get_generated_category_path_rev($random_specials_sidebox_product->fields["master_categories_id"]) . '&products_id=' . $random_specials_sidebox_product->fields["products_id"]) . '">' . $random_specials_sidebox_product->fields['products_name'] . '</a>';
    $content .= '<div class="price">' . $specials_box_price . '</div>';
	$content .= '<div class="product-buttons"><a class="button" href="' . zen_href_link(FILENAME_SPECIALS, zen_get_all_get_params(array('action')) . 'action=buy_now&products_id=' . $random_specials_sidebox_product->fields["products_id"]) . '">' . zen_image_button(BUTTON_IMAGE_ADD_TO_CART, BUTTON_IN_CART_ALT1) . '</a>';
	$content .= '<a class="button1" href="' . zen_href_link(zen_get_info_page($random_specials_sidebox_product->fields['products_id']), 'cPath=' . $productsInCategory[$random_specials_sidebox_product->fields['products_id']] . '&products_id=' . $random_specials_sidebox_product->fields['products_id']) . '">' . zen_image_button(BUTTON_IMAGE_GOTO_PROD_DETAILS, BUTTON_GOTO_PROD_DETAILS_ALT) . '</a></div>';
    $content .= '</div>';
	$content .= '</div>';
    $random_specials_sidebox_product->MoveNextRandom();
  }
?>
