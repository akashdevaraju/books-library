jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  # $('#girls .pagination a').on 'click', ->
  #   console.log "hello"
  #   console.log $.getScript(this.href)
  #   return false
