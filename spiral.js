class Spiral extends Cleaner {
  constructor(x,y,radius,color,ang, speed){
    super(x,y,radius,color,ang,speed);
    this.inSpiral = false;
    this.turn = 0.6;
    this.margin = 70;
  }
  resetSpiralParams(){
    this.turn = 0.6;
    this.inSpiral = false;
  }
  move(){
    this.x += (this.speed*Math.cos(this.ang));
    this.y += (this.speed*Math.sin(this.ang));
    if( this.inSpiral || (this.x>this.margin && this.y>this.margin && this.x<canvas.width-this.margin && this.y<canvas.height-this.margin)){
      this.rotate(this.ang+=this.turn);
      this.turn=this.turn/(1.01-(0.01-Math.abs(this.turn)/20));
      this.inSpiral=true;
    }
    if(this.x+this.radius>canvas.width) {
      this.bounceRight();
      this.x=canvas.width-this.radius;
      //this.trace.push([this.x,this.y]);
      this.resetSpiralParams();
    }
    else if(this.x-this.radius<0) {
      this.bounceLeft();
      this.x=this.radius+0;
      //this.trace.push([this.x,this.y]);
      this.resetSpiralParams();
    }
    else if(this.y-this.radius<0) {
      this.bounceTop();
      this.y=this.radius;
      //this.trace.push([this.x,this.y]);
      this.resetSpiralParams();
    }
    else if(this.y+this.radius>canvas.height) {
      this.bounceBottom();
      this.y=canvas.height-this.radius;
      //this.trace.push([this.x,this.y]);
      this.resetSpiralParams();
    }
    this.trace.push([this.x,this.y]);
  }

}
