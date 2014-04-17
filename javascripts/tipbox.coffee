repositionPopoup = ->
	$(".popout").each ->
		bodyRight = $("body").width()
		bodyTop = $("body").height()
		popoutLeft = $(this).offset().left
		popoutTop = $(this).offset().top
		popoutWidth = $(this).width()
		popoutHeight = $(this).height()

		if bodyRight < (popoutLeft + popoutWidth)
			$(this).addClass "po-left"
			$(this).removeClass "po-right"
		else
			$(this).addClass "po-right"
			$(this).removeClass "po-left"
		if bodyTop < (popoutTop + popoutHeight)
			$(this).addClass "po-top"
			$(this).removeClass "po-bottom"
		else
			$(this).addClass "po-bottom"
			$(this).removeClass "po-top"

$(document).on 'ready page:load', ->
	repositionPopoup()

$(window).on "resize", ->
	repositionPopoup()
