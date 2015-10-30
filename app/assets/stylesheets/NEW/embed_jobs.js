(function () {
  var element = document.getElementById('angellist_embed');
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function(){
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var div = document.createElement('div');
        div.innerHTML = xmlhttp.responseText;
        element.parentNode.insertBefore(div, element);
    }
  }
  var startup_slug = element.getAttribute('data-startup');
  xmlhttp.open("GET", "https://angel.co/job_profiles/embed?startup="+startup_slug, true);
  xmlhttp.send();

})();
