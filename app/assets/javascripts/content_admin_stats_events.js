/*===================================================
    Page: admin panel/stats events page
    File: views/users/shared/_content_admin_stats_events.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#eventstats_pending_tab_content").hide();
  $("#eventstats_past_tab_content").hide();
  $("#eventstats_all_tab_content").hide();
  $('#eventstats_upcoming_tab').click(function() {
    $("#eventstats_upcoming_tab_content").show();
    $("#eventstats_pending_tab_content").hide();
    $("#eventstats_past_tab_content").hide();
    $("#eventstats_all_tab_content").hide();
  });

  $('#eventstats_pending_tab').click(function() {
    $("#eventstats_pending_tab_content").show();
    $("#ministstats_all_tab_content").hide();
    $("#eventstats_past_tab_content").hide();
    $("#eventstats_all_tab_content").hide();
  });

  $('#eventstats_past_tab').click(function() {
    $("#eventstats_past_tab_content").show();
    $("#eventstats_pending_tab_content").hide();
    $("#ministstats_all_tab_content").hide();
    $("#eventstats_all_tab_content").hide();
  });

  $('#eventstats_all_tab').click(function() {
    $("#eventstats_all_tab_content").show();
    $("#eventstats_pending_tab_content").hide();
    $("#eventstats_past_tab_content").hide();
    $("#ministstats_all_tab_content").hide();
  });
});