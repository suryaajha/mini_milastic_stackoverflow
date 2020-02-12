$(document).ready(function() {
    let content_areas = document.getElementsByClassName('content_area') ;
    for (let i in content_areas){
        let area = content_areas[i]
        area.innerHTML = area.textContent
    }
});