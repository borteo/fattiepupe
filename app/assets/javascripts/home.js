// Left menu
var menu = document.getElementById('menu');
var menuLink = document.getElementById('menuLink');
var layout = document.getElementById('layout');

var toggleClass = function (element, className) {
  var classes = element.className.split(/\s+/),
  length = classes.length,
  i = 0;

  for(; i < length; i++) {
    if (classes[i] === className) {
      classes.splice(i, 1);
      break;
    }
  }
  // The className is not found
  if (length === classes.length) {
    classes.push(className);
  }
    element.className = classes.join(' ');
  };

menuLink.onclick = function (e) {
  e.preventDefault();
  var active = 'active';
  toggleClass(layout, active);
  toggleClass(menu, active);
}; 

// Share it!
var addthis_config = {     
  services_overlay:'facebook,twitter,email,more'
}
