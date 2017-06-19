// JavaScript Document

data=[
["../graphicsnight/sponsors/1.png","",""],
["../graphicsnight/sponsors/2.png","",""],
["../graphicsnight/sponsors/3.png","",""],
["../graphicsnight/sponsors/4.png","",""],
["../graphicsnight/sponsors/5.png","",""],
["../graphicsnight/sponsors/6.png","",""],
["../graphicsnight/sponsors/7.png","",""],
["../graphicsnight/sponsors/8.png","",""],
["../graphicsnight/sponsors/9.png","",""],
["../graphicsnight/sponsors/10.png","",""],
["../graphicsnight/sponsors/11.png","",""],
["../graphicsnight/sponsors/12.png","",""],
["../graphicsnight/sponsors/13.png","",""],
["../graphicsnight/sponsors/14.png","",""],
["../graphicsnight/sponsors/15.png","",""],
["../graphicsnight/sponsors/16.png","",""],
["../graphicsnight/sponsors/17.png","",""],
["../graphicsnight/sponsors/18.png","",""],
["../graphicsnight/sponsors/19.png","",""]

 // no comma at end of last index
]

imgPlaces=12 // number of images visible
imgWidth=100 // width of the images
imgHeight=92 // height of the images
imgSpacer=0 // space between the images

dir=0 // 0 = left, 1 = right

newWindow=1 // 0 = Open a new window for links 0 = no  1 = yes

// ********** End User Defining Area **********

moz=document.getElementById&&!document.all

step=1
timer=""
speed=50
nextPic=0
initPos=new Array()
nowDivPos=new Array()

function initHIS3(){

for(var i=0;i<imgPlaces+1;i++){ // create image holders
newImg=document.createElement("IMG")
newImg.setAttribute("id","pic_"+i)
newImg.setAttribute("src","")
newImg.style.position="absolute"
newImg.style.width=imgWidth+"px"
newImg.style.height=imgHeight+"px"
newImg.style.border=0
newImg.alt=""
newImg.i=i
newImg.onclick=function(){his3Win(data[this.i][2])}
document.getElementById("display_area").appendChild(newImg)
}

containerEL=document.getElementById("his3container")
displayArea=document.getElementById("display_area")
pic0=document.getElementById("pic_0")

containerBorder=(document.compatMode=="CSS1Compat"?0:parseInt(containerEL.style.borderWidth)*2)
containerWidth=(imgPlaces*imgWidth)+((imgPlaces-1)*imgSpacer)
containerEL.style.width=containerWidth+(!moz?containerBorder:"")+"px"
containerEL.style.height=imgHeight+(!moz?containerBorder:"")+"px"

displayArea.style.width=containerWidth+"px"
displayArea.style.clip="rect(0,"+(containerWidth+"px")+","+(imgHeight+"px")+",0)"
displayArea.onmouseover=function(){stopHIS3()}
displayArea.onmouseout=function(){scrollHIS3()}

imgPos= -pic0.width

for(var i=0;i<imgPlaces+1;i++){
currentImage=document.getElementById("pic_"+i)

if(dir==0){imgPos+=pic0.width+imgSpacer} // if left

initPos[i]=imgPos
if(dir==0){currentImage.style.left=initPos[i]+"px"} // if left

if(dir==1){ // if right
document.getElementById("pic_"+[(imgPlaces-i)]).style.left=initPos[i]+"px"
imgPos+=pic0.width+imgSpacer
}

if(nextPic==data.length){nextPic=0}

currentImage.src=data[nextPic][0]
currentImage.alt=data[nextPic][1]
currentImage.i=nextPic
currentImage.onclick=function(){his3Win(data[this.i][2])}
nextPic++
}

scrollHIS3()
}

timer=""
function scrollHIS3(){
clearTimeout(timer)
for(var i=0;i<imgPlaces+1;i++){
currentImage=document.getElementById("pic_"+i)

nowDivPos[i]=parseInt(currentImage.style.left)

if(dir==0){nowDivPos[i]-=step}
if(dir==1){nowDivPos[i]+=step}

if(dir==0&&nowDivPos[i]<= -(pic0.width+imgSpacer) || dir==1&&nowDivPos[i]>containerWidth){

if(dir==0){currentImage.style.left=containerWidth+imgSpacer+"px"}
if(dir==1){currentImage.style.left= -pic0.width-(imgSpacer*2)+"px"}

if(nextPic>data.length-1){nextPic=0}

currentImage.src=data[nextPic][0]
currentImage.alt=data[nextPic][1]
currentImage.i=nextPic
currentImage.onclick=function(){his3Win(data[this.i][2])}

nextPic++

}
else{
currentImage.style.left=nowDivPos[i]+"px"
}

}
timer=setTimeout("scrollHIS3()",speed)

}

function stopHIS3(){
clearTimeout(timer)
}

function his3Win(loc){
if(loc==""){return}
if(newWindow==0){
location=loc
}
else{
//window.open(loc)
newin=window.open(loc,'win1','left=430,top=340,width=800,height=300') // use for specific size and positioned window
newin.focus()
}
}

// add onload="initHIS3()" to the opening BODY tag

// -->
