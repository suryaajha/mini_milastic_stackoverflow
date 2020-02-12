var sample = [
    "### Instructions",
    "Enter text in the area on the left. For more info, click the ? (help) icon in the menu."
]

var simplemde = new SimpleMDE({element: $("#smde")[0], toolbar: ["bold", "italic", "heading", "|", "quote", "unordered-list", "ordered-list", "|", "link", "image", "|", "guide"]});

$(document).ready(function() {
    $('#post_question_id').submit(function(e) {
        // your code here
        alert('Hello') ;
        $('#title').val(document.getElementById("write_here").firstChild.innerHTML);
        let description = document.getElementById("write_here").innerHTML.split("\n");
        description.shift()
        $('#description').val(description);
    });

    writeSample();
    simplemde.codemirror.on("change", function(){
        var renderedHTML = simplemde.options.previewRender(simplemde.value());
        $("#write_here").html(renderedHTML);
    });
});

function writeSample() {
    var s = "";
    s = getSample();
    simplemde.value(s);
    var renderedHTML = simplemde.options.previewRender(simplemde.value());
    $("#write_here").html(renderedHTML);
}

function getSample() {
    var s = "";
    $.each(sample, function( index, value ) {
        //alert( index + ": " + value );
        s = s + value + "\n\r";
    });
    return s;
}

function do_some(data) {
    console.log(data) ;
}

function custom_post(url, func){
    let hsh = {
        'a' : 'ABC',
        'b' : 'PQR'
    }
    // let params = 'orem=ipsum&name=binny'
    // let params = 'title:'

    let formData = new FormData();
    // formData.append('user', 'person in operation');
    // formData.append('age', 12);

    for(let prop in hsh){
        formData.append(prop, hsh[prop])
    }
    let xhttp = new XMLHttpRequest();
    xhttp.open("POST", url, true);
    let token = document.querySelector('meta[name="csrf-token"]').content
    xhttp.setRequestHeader("X-CSRF-Token", token)
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            func(this.responseText)
        }
    };
    xhttp.send(formData);
}