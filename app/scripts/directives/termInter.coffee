'use strict'

angular.module('spacewarcliApp')
  .directive('termInter', () ->
    link: (scope, element, attrs) ->
      setInterval(() ->
        $(element).find(".term-cursor").toggleClass("inverted")
      , 500)

      $(element).click -> $(this).find(".term-input").focus()
  )
