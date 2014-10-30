
var posters = document.getElementsByTagName('img')

for(var i=0 ; i<posters.length ; i++){
  posters[i].addEventListener('click', compare);
};



function compare(e){

	var questionYear = document.getElementById('question').getAttribute("questionYear")
	var movieYear = e.target.getAttribute("year")

		if (questionYear === movieYear){

			alert("well, well, well")

		}
		else

			alert("Idiot, try again")
};