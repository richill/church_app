/*===================================================
    Page: header signedout nav
    File: views/shared/_header_signedout.html.erb
  ===================================================*/

$(document).ready(function() {
  $("#content2_info").hide();
  $("#content3_info").hide();
  $("#content4_info").hide();
  $('#content1').mouseover(function() {
    $("#content1_info").show();
    $("#content2_info").hide();
    $("#content3_info").hide();
    $("#content4_info").hide();
    $("#content1").addClass("activecontent");
    $("#content2").removeClass("activecontent");
    $("#content3").removeClass("activecontent");
    $("#content4").removeClass("activecontent");
  });

  $('#content2').mouseover(function() {
    $("#content2_info").show();
    $("#content1_info").hide();
    $("#content3_info").hide();
    $("#content4_info").hide();
    $("#content2").addClass("activecontent");
    $("#content1").removeClass("activecontent");
    $("#content3").removeClass("activecontent");
    $("#content4").removeClass("activecontent");
  });

  $('#content3').mouseover(function() {
    $("#content3_info").show();
    $("#content1_info").hide();
    $("#content2_info").hide();
    $("#content4_info").hide();
    $("#content3").addClass("activecontent")
    $("#content1").removeClass("activecontent");
    $("#content2").removeClass("activecontent");
    $("#content4").removeClass("activecontent");
  });

  $('#content4').mouseover(function() {
    $("#content4_info").show();
    $("#content1_info").hide();
    $("#content2_info").hide();
    $("#content3_info").hide();
    $("#content4").addClass("activecontent")
    $("#content1").removeClass("activecontent");
    $("#content2").removeClass("activecontent");
    $("#content3").removeClass("activecontent");
  });
});
