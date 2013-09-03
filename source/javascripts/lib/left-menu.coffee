$(document).ready () ->

	hide_elem = (el) ->
		elem = $(el)
		elem.find('.menu-list').hide('slow')
		elem.removeClass('active')
		return

	show_elem = (el) ->
		elem = $(el)
		elem.find('.menu-list').show('slow')
		elem.addClass('active')
		return

	old_elem = $('#left-block-menu .active')[0]
	$('#left-block-menu').on('click', '.with-list',  ()->
		if (old_elem)
			hide_elem(old_elem)

		if this == old_elem
			old_elem = null
		else
			show_elem(this)
			old_elem = this

		return
	)
	return