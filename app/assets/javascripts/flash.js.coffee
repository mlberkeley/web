$ ->
  $(".alert-box").on("click", (event)->
    $(event.target).hide("slow")
  )
