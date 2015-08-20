# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('#archive').imagesLoaded ->
		$('#archive').masonry
			itemSelector: '.box-archive'
			isFitWidth: true

$ ->
	$('#team').imagesLoaded ->
		$('#team').masonry
			itemSelector: '.box-team'
			isFitWidth: true