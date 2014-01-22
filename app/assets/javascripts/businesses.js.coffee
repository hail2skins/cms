# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$("#customers").dataTable
  	sDom: "<'row'<'col-lg-6'l><'col-lg-6'f>r>t<'row'<'col-lg-6'i><'col-lg-6'p>>"
  	sPaginationType: "bootstrap"
  	"bRetrieve": true
  	"bDestroy": true

$(document).ready(ready)
$(document).on('page:load', ready)
$(document).on('page:restore', ready)