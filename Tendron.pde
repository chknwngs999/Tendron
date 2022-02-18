int size;
boolean sizeup, sizedown, pause;
Cluster c;
public void setup()
{
  size(500, 500);  
  background(255);
  frameRate(20);
  size = 50;
  pause = false;
  background(0);
}

public void draw()
{
  if (sizeup)
    size++;
  if (sizedown)
    size--;
  if (size < 4)
    size = 4;
  if (!pause){
    background(0);
    c = new Cluster(size, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
  }
}
public void mousePressed()
{
  background(0);
    c = new Cluster(size, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}

public void keyPressed(){
  if (keyCode == 40){
    sizedown = true;
  }
  if (keyCode == 38){
    sizeup = true;
  }
  if (keyCode == 32){
    pause = !pause;
  }
}
public void keyReleased(){
  if (keyCode == 40){
    sizedown = false;
  }
  if (keyCode == 38){
    sizeup = false;
  }
}
