$(document).ready(function() {
  $('.dashing-clippy').tooltipster({
    theme: ['clippy-theme'],
    interactive: 'true',
    triggerOpen: {
      mouseenter: true,
      tap: true
    },
    triggerClose: {
      mouseleave: true,
      originClick: true,
      tap: true
    }
    //TODO: Figure out better positioning. This code doesn't work on a mobile responsive layout
    // functionPosition: function(instance, helper, position){
    //     position.coord.left += 150;
    //     return position;
    // }
  });

   $('.dashing-tooltip').tooltipster({
     trigger: 'custom',
     triggerOpen: {
         mouseenter: true,
         touchstart: true
     },
     triggerClose: {
         mouseleave: true,
         originClick: true,
         touchleave: true
     }
  });
});
