function displayIt(click) {
  var dom = document.getElementById('picture');
  dom.style.left=(click.clientX-50) + 'px';
  dom.style.top=(click.clientY-150) + 'px';
  dom.style.visibility = 'visible';
}

function hideIt() {
  document.getElementById('picture').style.visibility='hidden';
}