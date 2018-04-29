// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require foundation
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

// [nav links]
$(document).ready(function() {
  // [nav links] link_aboutus
  $(document).ready(function() {
    $("#link_aboutus").mouseover(function() {
      $("#linkContainer_aboutus").fadeToggle(300);
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_aboutus").hide();
    });
    //Popup on click
    $("#linkContainer_aboutus").click(function() {
      return true;
    });
  });

  // [nav links] link_serve
  $(document).ready(function() {
    $("#link_serve").mouseover(function() {
      $("#linkContainer_serve").fadeToggle(300);
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_serve").hide();
    });
    //Popup on click
    $("#linkContainer_serve").click(function() {
      return true;
    });
  });

  // [nav links] link_connect
  $(document).ready(function() {
    $("#link_connect").mouseover(function() {
      $("#linkContainer_connect").fadeToggle(300);
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_connect").hide();
    });
    //Popup on click
    $("#linkContainer_connect").click(function() {
      return true;
    });
  });

  // [nav links] link_events
  $(document).ready(function() {
    $("#link_events").mouseover(function() {
      $("#linkContainer_events").fadeToggle(300);
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_events").hide();
    });
    //Popup on click
    $("#linkContainer_events").click(function() {
      return true;
    });
  });

  // [nav links] link_grow
  $(document).ready(function() {
    $("#link_grow").mouseover(function() {
      $("#linkContainer_grow").fadeToggle(300);
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_grow").hide();
    });
    //Popup on click
    $("#linkContainer_grow").click(function() {
      return true;
    });
  });

  // [nav links] link_resources
  $(document).ready(function() {
    $("#link_resources").mouseover(function() {
      $("#linkContainer_resources").fadeToggle(300);
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_contact").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_resources").hide();
    });
    //Popup on click
    $("#linkContainer_resources").click(function() {
      return true;
    });
  });

  // [nav links] link_contact
  $(document).ready(function() {
    $("#link_contact").mouseover(function() {
      $("#linkContainer_contact").fadeToggle(300);
      $("#linkContainer_aboutus").fadeOut("slow");
      $("#linkContainer_connect").fadeOut("slow");
      $("#linkContainer_events").fadeOut("slow");
      $("#linkContainer_resources").fadeOut("slow");
      return false;
    });
    //Document Click hiding the popup 
    $(document).click(function() {
      $("#linkContainer_contact").hide();
    });
    //Popup on click
    $("#linkContainer_contact").click(function() {
      return true;
    });
  });
});
