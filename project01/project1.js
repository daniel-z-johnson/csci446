function empty(){
	var x = document.forms["feelings"]["current"].value;
	if (x==null || x==""){
		alert("Surely you fell something!");
	}
}
