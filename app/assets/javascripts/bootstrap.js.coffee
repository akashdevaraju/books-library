jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

$ ->
  $(".pagination a").on 'click', (e)->
    e.preventDefault()
    $.get(this.href, null, null, "script")
    false
