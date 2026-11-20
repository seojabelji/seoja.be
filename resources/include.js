document.addEventListener("DOMContentLoaded", function () {
    // noinspection ES6ConvertVarToLetConst
    var headerRequest = new XMLHttpRequest()
    headerRequest.open("GET", "/resources/header.html", true)

    headerRequest.onreadystatechange = function () {
        if (headerRequest.readyState === 4 && headerRequest.status === 200) {
            document.getElementById("header").innerHTML = headerRequest.responseText;
        }
    }
    headerRequest.send()

    // noinspection ES6ConvertVarToLetConst
    var headRequest = new XMLHttpRequest()
    headRequest.open("GET", "/resources/head.html", true)

    headRequest.onreadystatechange = function () {
        if (headRequest.readyState === 4 && headRequest.status === 200) {
            document.head.insertAdjacentHTML("beforeend", headRequest.responseText)
        }
    }
    headRequest.send()
})