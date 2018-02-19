var rootFolder = "";//leave as "/" for live version

//Active Function
$(function() {
  $("#sidebarNavigation").load(rootFolder +"/example/templates/sidebar.html", function() {
    //get the url of the current page
    var url = window.location.href;
    //get the default active page (index)
    var indexObject = document.getElementById("index");

      $('#nav li').each(function(){
        //get each provided navigation link
        var $this = $(this);
        //get the id from each provided navigation link
        var id = this.id;

        //check if the id provided is in the url
        if(url.indexOf(id) > -1) {
            //if there is a match, add the class of current
            $(this).addClass('current');
            //if there is a match, remove the class of current from the home page
            $(indexObject).removeClass('current');
        }
      });
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

$(function(){
  $('.example-sidebar').on('click', '.chevron-dark:not(.rotate)',
    function(event){
      $(event.target).closest('.example-sidebar').find('ul').addClass('hidden');
      $(event.target).closest('.example-sidebar').find('.chevron-dark').removeClass('rotate');

      $(event.target).closest('h3').next('ul').removeClass('hidden');
      $(event.target).addClass('rotate');
    }
  );
  $('.example-sidebar').on('click', '.chevron-dark.rotate',
    function(event){
      $(event.target).closest('h3').next('ul').addClass('hidden');
      $(event.target).removeClass('rotate');
    }
  );
  $('.sub-nav').on('click', '.chevron-dark:not(.rotate)',
    function(event){
      window.blah = event
      $(event.target).closest('.sub-nav').find('ul ul').addClass('hidden');
      $(event.target).closest('.sub-nav').find('.chevron-dark').removeClass('rotate');

      $(event.target).closest('li').find('ul').removeClass('hidden');
      $(event.target).addClass('rotate');
    }
  );
  $('.sub-nav').on('click', '.chevron-dark.rotate',
    function(event){
      $(event.target).closest('li').find('ul').addClass('hidden');
      $(event.target).removeClass('rotate');
    }
  );

  $(".button--sidebar-icon").click(function() {
      if ($(".example-sidebar").hasClass("active")){
        $(".example-sidebar").removeClass("active");
        $(".button--sidebar-icon").removeClass("sidebar-open");
        $(".sidebar-icon--menu").removeClass("dashing-icon");
        $(".sidebar-icon--menu").removeClass("dashing-icon--close");
        $(".sidebar--overlay").addClass("is-hidden");
    }else{
        $(".example-sidebar").addClass("active");
        $(".button--sidebar-icon").addClass("sidebar-open");
        $(".sidebar-icon--menu").addClass("dashing-icon");
        $(".sidebar-icon--menu").addClass("dashing-icon--close");
        $(".sidebar--overlay").removeClass("is-hidden");
    }
  });

  $(".sidebar--overlay").click(function() {
    if ($(".sidebar--overlay").hasClass("is-hidden")){
      $(".example-sidebar").removeClass("active");
    }else{
      $(".example-sidebar").removeClass("active");
      $(".button--sidebar-icon").removeClass("sidebar-open");
      $(".sidebar-icon--menu").removeClass("dashing-icon");
      $(".sidebar-icon--menu").removeClass("dashing-icon--close");
      $(".sidebar--overlay").addClass("is-hidden");
    }
  });
  $('.code-toggle').click(function(e) {

      var $this = $(this);

      if ($this.next().hasClass('show')) {
          $this.siblings("pre").removeClass('show');
          $this.siblings("pre").slideUp(250);
      } else {
          $this.siblings("pre").toggleClass('show');
          $this.siblings("pre").slideToggle(250);
      }
  });

  $('.code-toggle').click(function(e) {

      var $this = $(this);

      if ($this.hasClass('is-open')) {
          $this.removeClass('is-open');
      } else {
          $this.toggleClass('is-open');
      }
  });
})

function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}

// $('.code-toggle').click(function(e) {
//
//     var $this = $(this);
//
//     if ($this.next().hasClass('show')) {
//         $this.next().removeClass('show');
//         $this.next().slideUp(350);
//     } else {
//         $this.find('.code').removeClass('show');
//         $this.find('.code').slideUp(350);
//         $this.next().toggleClass('show');
//         $this.next().slideToggle(350);
//     }
// });

// $('.code-toggle').click(function() {
//
//     var $this = $(this);
//
//     if ($this.next().hasClass('show')) {
//         $this.next().removeClass('show');
//         $this.next().slideUp(350);
//     } else {
//         $this.find('.code').removeClass('show');
//         $this.find('.code').slideUp(350);
//         $this.next().toggleClass('show');
//         $this.next().slideToggle(350);
//     }
// });
