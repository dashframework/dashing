 // $(function() {
//   $("#sidebarNavigation").load("/example/templates/sidebar.html", function() {
//     var url = window.location.href;
//     var findNameRegex = /[\w-]+\./;
//     var fileName = findNameRegex.exec(url)[0];
//     fileName = fileName.slice(0, -1);
//
//     var className = '#sidebarNavigation #'+fileName;
//
//     $(className).addClass('active');
//   });
// });

$(function() {
  $("#sidebarNavigation").load("../sidebar.html", function() {
    var url = window.location.href;
    var findNameRegex = /(\w+)(\/\w+)[\w-]+\./;
    var urlString = findNameRegex.exec(url)[0];
    var cutoff = urlString.indexOf('/');
    var fileName = urlString.substring(0, cutoff);
    var className = '#sidebarNavigation #'+fileName;
    $(className).addClass('active');
  });
});


$(document).ready(function(){
    $("#hasSpinner").click(function(){
        $("#hasSpinner").addClass("has-spinner");
    });
});

$(document).ready(function(){
    $("#fullSpinner").click(function(){
        $("body").addClass("prevent-scrolling");
        var overlay = document.createElement("div");
        var dashSpinner = document.createElement("div");
        overlay.id = 'overlay'
        dashSpinner.id = 'dashSpinner'
        $(overlay).addClass("overlay--spinner");
        $(dashSpinner).addClass("dash-spinner");
        document.getElementById("body").appendChild(overlay);
        document.getElementById("overlay").appendChild(dashSpinner);
    });
});
