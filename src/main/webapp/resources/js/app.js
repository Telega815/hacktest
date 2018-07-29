window.addEventListener("DOMContentLoaded", init);

function init() {
	var logIn=document.getElementById('logIn');
	var blackpanel=document.getElementById('blackpanel');
	var close=document.getElementsByClassName('close');
	var close=document.getElementsByClassName('close');
	var regButton=document.getElementById('regButton');
	var winLogIn=document.getElementById('winLogIn');
	var winRegistration=document.getElementById('winRegistration');
	var blockGameButton=document.getElementById('blockGameButton');
	var game=document.getElementById('game');
	var userName=document.getElementById('userName');
    var shop=document.getElementById('shop');
    var closeShope=document.getElementById("closeId");
    var sellbuttons = document.getElementsByClassName("buyMusicButton");

    for (var i = 0; i<sellbuttons.length ;i++){
        sellbuttons[i].onclick = transaction;
    }

	logIn.addEventListener('click',function() {
		blackpanel.style.display='flex';
		winLogIn.style.display='block';
		winRegistration.style.display='none';
	});

	close[0].addEventListener('click',function() {
		blackpanel.style.display='none';
		winLogIn.style.display='none';
		winRegistration.style.display='none';
	});
	close[1].addEventListener('click',function() {
		blackpanel.style.display='none';
		winLogIn.style.display='none';
		winRegistration.style.display='none';
	});
	close[3].addEventListener('click',function() {
		blackpanel.style.display='none';
		game.style.display='none';
	});


	regButton.addEventListener('click',function() {
		winLogIn.style.display='none';
		winRegistration.style.display='block';
	});
	blockGameButton.addEventListener('click',function() {
		blackpanel.style.display='flex';
		game.style.display='flex';
			
	});
    userName.addEventListener('click',function() {
        blackpanel.style.display='flex';
        shop.style.display='block';

    });

    closeShope.addEventListener('click',function() {
        blackpanel.style.display='none';
        shop.style.display='none';
    });
}

function logIn() {

}

function sendPromoCode(event) {
    var formData = new FormData();
    var input = document.getElementById("sendPromoEmail");
    formData.append("user_email", input.value);
    formData.append("user_name", promoCodeVar);
    $.ajax({
        url: "localhost/mail.php",
        type: "POST",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
            alert("suckass");
        },
        error: function (error) {
            alert("suckass");
        }
    })
}

function transaction(event) {
    var id = event.target.id.split("_")[1];
    var price = document.getElementById("priceCoinsValue_"+id);

    var formData = new FormData();
    var int = price.innerText;
    formData.append("priceCount", int);
    formData.append("id", 2000);
    $.ajax({
        url: "/transaction",
        enctype: "multipart/form-data",
        type: "POST",
        method: "POST",
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
            if (data == "fail" )
                alert("need to login");
            else{
                var div = document.createElement("table");
                div.innerHTML = data;
                document.getElementById("shopTableId").appendChild(div.firstChild);
                var coindiv = document.getElementById("conValue");
                var coindiv2 = document.getElementById("bonusValue");
                coindiv.innerText -= 100;
                coindiv2.innerText = coindiv.innerText;
            }
        },
        error: function (error) {
            alert("suckass");
        }
    })
}

function okBtn() {
    document.getElementById("game").style.display = "none";
    document.getElementById("blackpanel").style.display = "none";
    var coindiv = document.getElementById("conValue");
    var coindiv2 = document.getElementById("bonusValue");
    coindiv.innerText += 200;
    coindiv2.innerText = coindiv.innerText;
}