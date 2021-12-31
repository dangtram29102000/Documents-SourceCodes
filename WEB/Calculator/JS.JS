function insert(num){
	document.form.textview.value=document.form.textview.value+num;
}

function equal(){
	var exp=document.form.textview.value;
	if(exp){
		document.form.textview.value=eval(exp)
 	  }
	}

function clean() {
		document.form.textview.value="''";
}

function back (){
	var e=document.form.textview.value;
	document.form.textview.value=e.substring(0,e.length-1);
}