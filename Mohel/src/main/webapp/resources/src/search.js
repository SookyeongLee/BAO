'use strict';

//검색클릭 
function searchClick(){
	
    let form = document.createElement("form");
    let rqWord = document.getElementsByName("wordValue")[0].value;
    
   let input = document.createElement("input");
   input.type = "hidden";
   input.name = "rqWord";
   input.value = rqWord;
  
   form.action = "Search";
   form.method = "Post";    
   form.appendChild(input);
    
    document.body.appendChild(form);
    form.submit();  
 }

