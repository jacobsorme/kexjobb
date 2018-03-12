var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

class Cleaner {
  constructor(x,y,radius,color,ang, speed){
    this.x=x;
    this.y=y;
    this.startx = x;
    this.starty = y;
    this.radius=radius;
    this.color=color;
    this.ang=ang;
    this.speed = speed;
    this.trace=[[x,y]];
  }
  render(){
    ctx.globalAlpha=0.1;
    //ctx.lineJoin="round";
    //ctx.lineCap="round";
    ctx.strokeStyle="#000";
    ctx.lineWidth=2*this.radius;
    for(let i = 1; i <this.trace.length;i++){
      ctx.beginPath();
      ctx.moveTo(this.trace[i-1][0],this.trace[i-1][1]);
      ctx.lineTo(this.trace[i][0],this.trace[i][1]);
      ctx.stroke();
    }
    ctx.globalAlpha=1;
    ctx.lineWidth=1;
    ctx.beginPath();
    ctx.translate(this.x,this.y);
    ctx.rotate(this.ang);
    ctx.arc(0,0,this.radius,0,2*Math.PI);
    //ctx.fill();
    ctx.stroke();
    ctx.rotate(-this.ang);
    ctx.translate(-this.x,-this.y);


    ctx.beginPath();
    ctx.strokeStyle="#999";
    ctx.translate(this.startx,this.starty);
    ctx.rotate(this.ang);
    ctx.arc(0,0,this.radius,0,2*Math.PI);
    //ctx.fill();
    ctx.stroke();
    ctx.rotate(-this.ang);
    ctx.translate(-this.startx,-this.starty);
  }
  rotate(ang){
    this.ang = (ang) % (2*Math.PI);
  }
  move(){
    //this.trace.pop();

    this.x += (this.speed*Math.cos(this.ang));
    this.y += (this.speed*Math.sin(this.ang));
    if(this.x+this.radius>canvas.width) {
      // q1 & q4
      if(this.ang<Math.PI/2) this.rotate(Math.PI/2 + Math.random()*Math.PI/2);
      else this.rotate(Math.PI + Math.random()*Math.PI/2);
      //this.ang = Math.PI/2 + Math.random()*Math.PI;
      this.x=canvas.width-this.radius;
      this.trace.push([this.x,this.y]);
    }
    else if(this.x-this.radius<0) {
      // q3 & q2
      if(this.ang>Math.PI/2&&this.ang<Math.PI) this.rotate(Math.PI/2 - Math.random()*Math.PI/2);
      else this.rotate(3*2*Math.PI/4 + Math.random()*Math.PI/2)
      //this.ang = -Math.PI/2 + Math.random()*Math.PI;
      this.x=this.radius+0;
      this.trace.push([this.x,this.y]);
    }
    else if(this.y-this.radius<0) {
      // q1 & q2
      if(this.ang<2*Math.PI&&this.ang>3*2*Math.PI/4) this.rotate(Math.random()*Math.PI/2);
      else this.rotate(Math.PI/2+Math.random()*Math.PI/2);
      //this.ang = Math.random()*Math.PI;
      this.y=this.radius;
      this.trace.push([this.x,this.y]);
    }
    else if(this.y+this.radius>canvas.height) {
      // q4 & q3
      if(this.ang<Math.PI/2) this.rotate(3*2*Math.PI/4+Math.random()*Math.PI/2);
      else this.rotate(Math.PI+Math.random()*Math.PI/2)
      //this.ang = Math.PI+Math.random()*Math.PI;
      this.y=canvas.height-this.radius;
      this.trace.push([this.x,this.y]);
    }
    this.trace.push([this.x,this.y]);
  }
}


var c = new Cleaner(canvas.width*Math.random(),canvas.height*Math.random(),3,"#5f1",Math.PI*2*Math.random(), 1);

setInterval(run,30);

function run(){
  ctx.globalAlpha=1;
  ctx.strokeStyle="#000";
  ctx.lineWidth=2;
  ctx.clearRect(0,0,canvas.width,canvas.height);
  ctx.strokeRect(0,0,canvas.width,canvas.height);
  c.move();
  c.render();

  if(Math.random()<0.5) console.log(pixels(ctx));


}

function pixels(ctx){
  count=0;
  var imgData=ctx.getImageData(0,0,canvas.width,canvas.height);
  for (var i=0;i<imgData.data.length;i+=4) if(imgData.data[i+3]>0)count++;
  return count/imgData.data.length*4;
}
