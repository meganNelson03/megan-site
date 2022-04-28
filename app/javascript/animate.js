let transitionTimer;

export default function setupTransitions() {
  $(document).on('turbolinks:request-start', animateOut);
  $(document).on('ready', animateIn);
  $(document).on('turbolinks:before-cache', removeAnimations);
}

function animateOut() {
  runAnimations('data-animate-out');
  
  // Fade in our loader
  transitionTimer = setTimeout(() => {
    $('.loader').removeClass('loader--hide');
  }, 500);
}

function animateIn() {
  runAnimations('data-animate-in');

  // Remove animation classes once they've finished
  setTimeout(removeAnimations, 1000);
}

// Get elements by data-attr, then add this attr as a class
function runAnimations(dataAttr) {
  $(`[${dataAttr}]`).each((ind, el) => {
    const $el = $(el);
    $el.addClass($el.attr(dataAttr));
  });
}

function removeAnimations() {
  // Clear the timeout for the loader
  window.clearTimeout(transitionTimer);

  // Clear up class names before caching
  const $els = $('[data-animate-out], [class*=animate-]');
  removeAllAnimateClasses($els);

}

// Remove class names beginning with 'animate-'
function removeAllAnimateClasses(els) {
  $(els).removeClass(function(index, className) {
    return (className.match(/(^|\s)animate-\S+/g) || []).join(' ');
  });
}