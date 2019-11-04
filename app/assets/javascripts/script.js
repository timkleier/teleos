$(document).ready(function() {
  // Semantic UI initializers
  $('.ui.dropdown').dropdown();

  // Insert new record
  $("[data-form-prepend]").click(function(e) {
    var obj = $($(this).attr("data-form-prepend"));
    obj.find("input, select, textarea").each(function() {
      $(this).attr("name", function() {
        return $(this)
          .attr("name")
          .replace("new_record", new Date().getTime());
      });
    });
    obj.insertBefore(this);
    return false;
  });
});
