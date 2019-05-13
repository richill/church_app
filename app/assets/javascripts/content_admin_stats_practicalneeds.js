/*===================================================
    Page: admin panel/stats practical needs page
    File: views/users/shared/_content_admin_stats_practicalneeds.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#pnstats_approved_tab_content").hide();
  $("#pnstats_pending_tab_content").hide();
  $("#pnstats_closed_tab_content").hide();
  $('#pnstats_all_tab').click(function() {
    $("#pnstats_all_tab_content").show();
    $("#pnstats_approved_tab_content").hide();
    $("#pnstats_pending_tab_content").hide();
    $("#pnstats_closed_tab_content").hide();
  });

  $('#pnstats_approved_tab').click(function() {
    $("#pnstats_approved_tab_content").show();
    $("#pnstats_all_tab_content").hide();
    $("#pnstats_pending_tab_content").hide();
    $("#pnstats_closed_tab_content").hide();
  });

  $('#pnstats_pending_tab').click(function() {
    $("#pnstats_pending_tab_content").show();
    $("#pnstats_approved_tab_content").hide();
    $("#pnstats_all_tab_content").hide();
    $("#pnstats_closed_tab_content").hide();
  });

  $('#pnstats_closed_tab').click(function() {
    $("#pnstats_closed_tab_content").show();
    $("#pnstats_approved_tab_content").hide();
    $("#pnstats_pending_tab_content").hide();
    $("#pnstats_all_tab_content").hide();
  });
});