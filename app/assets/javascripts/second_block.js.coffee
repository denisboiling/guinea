$(document).ready ->
  $(".second_block_link").hover ->
    $(".second_block_item_logo", this).animate({"top": "-15px"}, 500)
  ,
    ->
      $(".second_block_item_logo", this).animate({"top": "0px"}, 500)