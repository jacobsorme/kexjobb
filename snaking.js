class Snaking extends Cleaner {
  constructor(x,y,radius,color,ang, speed){
    super(x,y,radius,color,ang,speed);
    this.walling = false;
    this.old_x = 0;
    this.old_y = 0;
    this.old_ang = this.ang;
    this.wall_dir = 1;
  }

  wall_dir() {
      if(Math.random() > 0.5) {
          this.wall_dir = 1;
      } else {
          this.wall_dir = 0;
      }
  }

  store_wall(side) {
      this.coll = side;
      this.old_x = this.x;
      this.old_y = this.y;
      this.walling = true;
      this.old_ang = this.ang;

      if(this.coll == "h") {
          if(this.wall_dir) {
              this.rotate(Math.PI);
          } else {
              this.rotate(0);
          }
      } else if(this.coll == "v"){
          if(this.wall_dir) {
              this.rotate(1.5*Math.PI);
          } else {
              this.rotate(Math.PI/2);
          }
      }
  }

  done_walling() {
      if( this.coll == "h" ) {
          if(this.wall_dir) {
              if(this.x+1.8*this.radius < this.old_x) {
                  return true;
              } else {
                  return false;
              }
          } else {
              if(this.x-1.8*this.radius > this.old_x) {
                  return true;
              } else {
                  return false;
              }
          }
      } else if( this.coll == "v" ) {
          if(this.wall_dir) {
              if(this.y+1.8*this.radius < this.old_y) {
                  return true;
              } else {
                  return false;
              }
          } else {
              if(this.y-1.8*this.radius > this.old_y) {
                  return true;
              } else {
                  return false;
              }
          }
      }
      return false;
  }

  set_reverse() {
    this.walling = false;
    this.rotate(this.old_ang+Math.PI);
  }

  move() {
      this.x += (this.speed*Math.cos(this.ang));
      this.y += (this.speed*Math.sin(this.ang));

      if(this.x+this.radius>canvas.width) {
        this.x=canvas.width-this.radius;
        this.store_wall("v");
      } else if(this.x-this.radius<0) {
        this.x=this.radius+.1;
        this.store_wall("v");
      } else if(this.y-this.radius<0) {
        this.y=this.radius;
        this.store_wall("h");
      } else if(this.y+this.radius>canvas.height) {
        this.y=canvas.height-this.radius;
        this.store_wall("h");
      }

      if(this.walling && this.done_walling()) {
          this.set_reverse();
      }
      this.trace.push([this.x,this.y]);
  }

}
