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
        $(".button").addClass("has-spinner");
    });
});
