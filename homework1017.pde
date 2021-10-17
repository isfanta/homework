PImage hw;
int x,y,c,all,a,i,j;
float r,yy,s,xx;
long t;

int []h=new int[10];
int []w=new int[10];

void setup(){
  yy=150;
  s=1.5;
  size(1000,400);
  hw=loadImage("text.png");
  background(0);
  colorMode(HSB,360,100,100);
  frameRate(1000);
}

void draw(){
  
 t++;
 translate(100,100);
   if(t<=17000){
     x=int(random(hw.width));
     y=int(random(hw.height));
     all=x+y*hw.width;
     loadPixels();
     r=red(hw.pixels[all]);
       if(r<5){
         c=int(random(360));
         fill(c,100,100,100);
         circle(x,y,3);
       }
   }
   else if(t<=17200){
     fill(0,0,100);
     a=a+10;     
       for(x=0;x<=hw.width;x++){
         for(y=0;y<=hw.height;y++){    
           if(x*3+y<=a){
             rect(x,y,3,3);
           }
         }
       }
   }
   else if(t<=17800){
     image(hw,0,0);
   }
   else if(t<=30000){
     frameRate(60);
     x=x-5;
     background(0,0,100);
     noStroke();
     image(hw,x,0);
     fill(0,100,0);
     rect(-100,-100,300,400);
       if(t>17900){
         float gravity=abs(yy*0.1);
         yy+=s*gravity;
           if((yy> height -25 && s>0) || (yy<25 && s<0)){
             if(t<18060){
               s=-s;
             }
           }
         fill(255);
         ellipse(200,yy*0.2-55,50,50);
         
       for(i=0;i<=9;i++){
         h[i]=floor(random(-100,200));
         w[i]=floor(random(-100,300));
         fill(0,0,100);
         circle(h[i],w[i],3);
       } 
       }
   }
   println(t);
 }
      
