#= require_tree ./vendor
#= require_tree ./lib
$(document).ready () ->
	init = () ->
		GeoCode = ymaps.geocode("Дубна ул. Жолио-Кюри д. 17-а")
		GeoCode.then (res) ->
			myMap = new ymaps.Map("map",
				center: res.geoObjects.get(0).geometry.getCoordinates(),
				zoom: 16
			)
			myPlacemark = new ymaps.Placemark res.geoObjects.get(0).geometry.getCoordinates()
			myMap.geoObjects.add(myPlacemark)

	if (typeof ymaps != 'undefined')
		ymaps.ready(init)



