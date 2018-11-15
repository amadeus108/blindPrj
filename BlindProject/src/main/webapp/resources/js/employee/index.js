/**
 * index.js
 */

window.addEventListener("load", function(){
    var section = document.querySelector("#section");
    var searchBtn = section.querySelector(".searchBtn");
    var addBtn = section.querySelector(".add-btn");

    addBtn.onclick = function(){
    	alert("공고를 추가합니다.");
    	addBtn.innerHTML = location.href='recruit';
    }
    
});