var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var number=0;
var theGuess;

function generateRandomNumber(){
	number = Math.floor((Math.random()*100)+1);
}

function test(){
	generateRandomNumber();
	alert(number);
}

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').empty();
  $('h2#score span#guessesLeft').append(score);
}

function guessNumber(){
	theGuess = $('input#guess').val();
	alert(theGuess);
	--guessesLeft;
	updateScore(guessesLeft);
}
