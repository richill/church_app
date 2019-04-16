/*===================================================
    Page: admin panel/stats ministries page
    File: views/users/shared/_content_admin_stats_ministries.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#careerstats_unapproved_tab_content").hide();
  $("#careerstats_church_tab_content").hide();
  $("#careerstats_career_tab_content").hide();
  $("#careerstats_volunteer_tab_content").hide();
  $('#careerstats_all_tab').click(function() {
    $("#careerstats_all_tab_content").show();
    $("#careerstats_unapproved_tab_content").hide();
    $("#careerstats_church_tab_content").hide();
    $("#careerstats_career_tab_content").hide();
    $("#careerstats_volunteer_tab_content").hide();
  });

  $('#careerstats_unapproved_tab').click(function() {
    $("#careerstats_unapproved_tab_content").show();
    $("#careerstats_all_tab_content").hide();
    $("#careerstats_church_tab_content").hide();
    $("#careerstats_career_tab_content").hide();
    $("#careerstats_volunteer_tab_content").hide();
  });

  $('#careerstats_church_tab').click(function() {
    $("#careerstats_church_tab_content").show();
    $("#careerstats_unapproved_tab_content").hide();
    $("#careerstats_all_tab_content").hide();
    $("#careerstats_career_tab_content").hide();
    $("#careerstats_volunteer_tab_content").hide();
  });

  $('#careerstats_career_tab').click(function() {
    $("#careerstats_career_tab_content").show();
    $("#careerstats_unapproved_tab_content").hide();
    $("#careerstats_church_tab_content").hide();
    $("#careerstats_all_tab_content").hide();
    $("#careerstats_volunteer_tab_content").hide();
  });

  $('#careerstats_volunteer_tab').click(function() {
    $("#careerstats_volunteer_tab_content").show();
    $("#careerstats_unapproved_tab_content").hide();
    $("#careerstats_church_tab_content").hide();
    $("#careerstats_career_tab_content").hide();
    $("#careerstats_all_tab_content").hide();
  });


});

