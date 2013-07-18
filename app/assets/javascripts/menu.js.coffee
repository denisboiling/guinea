$(document).ready ->
  $(".menu_list_item")
    .mouseover ->
      $(this).find("span")
      $(this).find(".anchor_left").addClass("anchor_left_active")
      $(this).find(".anchor_right").addClass("anchor_right_active")
    .mouseout ->
      $(".menu_list_anchor").each ->
        $(this).find(".anchor_left").removeClass("anchor_left_active")
        $(this).find(".anchor_right").removeClass("anchor_right_active")

  $(".nested_links").hide()
  $(".menu_list_item").bind 'mouseenter', (event) ->
    $links = $(this).find ('.nested_links')
    $links.slideDown(200)

  $(".menu_list_item").bind 'mouseleave', (event) ->
    $links = $(this).find('.nested_links')
    $links.slideUp(200)
