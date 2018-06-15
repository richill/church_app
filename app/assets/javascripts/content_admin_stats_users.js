/*===================================================
    Page: admin panel/stats users page
    File: views/users/shared/_content_admin_stats_users.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#userstats_males_tab_content").hide();
  $("#userstats_females_tab_content").hide();
  $("#userstats_admins_tab_content").hide();
  $('#userstats_user_tab').click(function() {
    $("#userstats_user_tab_content").show();
    $("#userstats_males_tab_content").hide();
    $("#userstats_females_tab_content").hide();
    $("#userstats_admins_tab_content").hide();
  });

  $('#userstats_males_tab').click(function() {
    $("#userstats_males_tab_content").show();
    $("#userstats_user_tab_content").hide();
    $("#userstats_females_tab_content").hide();
    $("#userstats_admins_tab_content").hide();
  });

  $('#userstats_females_tab').click(function() {
    $("#userstats_females_tab_content").show();
    $("#userstats_males_tab_content").hide();
    $("#userstats_user_tab_content").hide();
    $("#userstats_admins_tab_content").hide();
  });

  $('#userstats_admins_tab').click(function() {
    $("#userstats_admins_tab_content").show();
    $("#userstats_males_tab_content").hide();
    $("#userstats_females_tab_content").hide();
    $("#userstats_user_tab_content").hide();
  });
});