int size;
boolean sizeup, sizedown;
public void setup()
{
  size(500, 500);  
  background(255);
  //noLoop();
  frameRate(20);
  size = 50;
}

public void draw()
{
  background(0);
  if (sizeup)
    size++;
  if (sizedown)
    size--;
  if (size < 4)
    size = 4;
  Cluster c = new Cluster(size, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}

public void keyPressed(){
  if (keyCode == 40){
    sizedown = true;
  }
  if (keyCode == 38){
    sizeup = true;;
  }
  System.out.println(keyCode);
}
public void keyReleased(){
  if (keyCode == 40){
    sizedown = false;
  }
  if (keyCode == 38){
    sizeup = false;
  }
  
}
