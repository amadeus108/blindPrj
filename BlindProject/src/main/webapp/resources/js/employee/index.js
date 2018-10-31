/**
 * index.js
 */

window.addEventListener("load", function(){
    var section = document.querySelector("#section");
    var searchBtn = section.querySelector(".searchBtn");

    searchBtn.onclick = function(){
        alert("검색을 시작합니다.");
    };
});