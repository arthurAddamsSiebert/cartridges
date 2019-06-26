var sOffBackColor = "threedface";
var sOffTextColor = "menutext"
var sOffBorderColor = "threedface";
var sOffPadding = "1px 1px 1px 1px";

var sOverBackColor = "threedface";
var sOverTextColor = "menutext"
var sOverBorderColor = "threedhighlight threedshadow threedshadow threedhighlight";
var sOverPadding = "1px 1px 1px 1px";

var sDownBackColor = "threedface"
var sDownTextColor = "menutext"
var sDownBorderColor = "threedshadow threedhighlight threedhighlight threedshadow";
var sDownPadding = "2px 0px 0px 2px";

function SetButtonPadding(eButton,sPaddingStyle)
{
  eButton.rows[0].cells[0].style.padding = sPaddingStyle;
	eButton.rows[0].cells[1].style.padding = sPaddingStyle;
}

function SetButtonImage(eButton,sState)
{
	var eImg = eButton.rows[0].cells[0].children[0];
	if (eImg) 
	{
		var sImgSrc = eImg.src;
		if (sImgSrc.match(/_(\w+)\.gif/)) 
		{
			eImg.src = sImgSrc.replace(RegExp.$1,sState);
		}
	}
}

function button_over(eButton)
{
	eButton.style.backgroundColor = sOverBackColor;
	eButton.style.color = sOverTextColor;
	eButton.style.borderColor = sOverBorderColor;
	SetButtonImage(eButton,"over");
}

function button_out(eButton)
{
	eButton.style.backgroundColor = sOffBackColor;
	eButton.style.borderColor = sOffBorderColor;
	eButton.style.color = sOffTextColor;
	SetButtonPadding(eButton,sOffPadding);
	SetButtonImage(eButton,"off")
}

function button_down(eButton)
{
	eButton.style.borderColor = sDownBorderColor;
	SetButtonPadding(eButton,sDownPadding);
}

function button_up(eButton)
{
	eButton.style.backgroundColor = sOffBackColor;
	eButton.style.borderColor = sOverBorderColor;
	eButton.style.color = sOffTextColor;
	SetButtonPadding(eButton,sOffPadding);
	SetButtonImage(eButton,"over")
}

function preloadImages(webRoot)
{
	var sImgPath = webRoot + "/staging/";
	var aImgNames = new Array("savenclose","save");
	var aImgs = new Array();
	for (var i=0;i<aImgNames.length;i++)
	{
		aImgs[i] = new Image();
		aImgs[i].src = sImgPath + aImgNames[i] + "_over.gif";
	}
}
