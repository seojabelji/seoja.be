document.addEventListener("DOMContentLoaded", function () {
    fetch("/resources/header.html")
        .then(r => r.text())
        .then(data => {
            document.getElementById("header").innerHTML = data;
        })
})