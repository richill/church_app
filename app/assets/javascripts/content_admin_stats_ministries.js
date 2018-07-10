/*===================================================
    Page: admin panel/stats ministries page
    File: views/users/shared/_content_admin_stats_ministries.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#ministstats_approved_tab_content").hide();
  $("#ministstats_pending_tab_content").hide();
  $("#ministstats_admin_tab_content").hide();
  $('#ministstats_all_tab').click(function() {
    $("#ministstats_all_tab_content").show();
    $("#ministstats_approved_tab_content").hide();
    $("#ministstats_pending_tab_content").hide();
    $("#ministstats_admin_tab_content").hide();
  });

  $('#ministstats_approved_tab').click(function() {
    $("#ministstats_approved_tab_content").show();
    $("#ministstats_all_tab_content").hide();
    $("#ministstats_pending_tab_content").hide();
    $("#ministstats_admin_tab_content").hide();
  });

  $('#ministstats_pending_tab').click(function() {
    $("#ministstats_pending_tab_content").show();
    $("#ministstats_approved_tab_content").hide();
    $("#ministstats_all_tab_content").hide();
    $("#ministstats_admin_tab_content").hide();
  });

  $('#ministstats_admin_tab').click(function() {
    $("#ministstats_admin_tab_content").show();
    $("#ministstats_approved_tab_content").hide();
    $("#ministstats_pending_tab_content").hide();
    $("#ministstats_all_tab_content").hide();
  });
});