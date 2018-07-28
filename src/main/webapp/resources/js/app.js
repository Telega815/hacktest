window.addEventListener("DOMContentLoaded", init);

function init() {
	var logIn=document.getElementById('logIn');
	var blackpanel=document.getElementById('blackpanel');
	var close=document.getElementsByClassName('close');
	var close=document.getElementsByClassName('close');
	var regButton=document.getElementById('regButton');
	var winLogIn=document.getElementById('winLogIn');
	var winRegistration=document.getElementById('winRegistration');

	logIn.addEventListener('click',function() {
			blackpanel.style.display='flex';
			winLogIn.style.display='block';
			winRegistration.style.display='none';
	});
	close[0].addEventListener('click',function() {
			blackpanel.style.display='none';
	});
	close[1].addEventListener('click',function() {
			blackpanel.style.display='none';
	});
	regButton.addEventListener('click',function() {
			winLogIn.style.display='none';
			winRegistration.style.display='block';
	});
}