$(document).ready ->
  $(".menu_list_anchor")
    .mouseover ->
      $(".menu_list_anchor").each ->
        $(this).find(".anchor_left").removeClass("anchor_left_active")
        $(this).find(".anchor_right").removeClass("anchor_right_active")
      $(this).find("span")
        .removeClass("menu_list_anchor_hover")
        .addClass("menu_list_anchor_hover_blank")
      $(this).find(".anchor_left").addClass("anchor_left_active")
      $(this).find(".anchor_right").addClass("anchor_right_active")
    .mouseout ->
      $(this).find("span").removeClass("menu_list_anchor_hover")
      $(this).find(".anchor_left").removeClass("anchor_left_active")
      $(this).find(".anchor_right").removeClass("anchor_right_active")

  $(".menu_list_item").bind 'mouseenter', (event) ->
	  if !$(this).hasClass 'current'
		  $links = $(this).find '.nested_links'
		  $links.removeClass 'hidden'

  $(".menu_list_item").bind 'mouseleave', (event) ->
    $links = $(this).find('.nested_links')
    $links.addClass('hidden')
