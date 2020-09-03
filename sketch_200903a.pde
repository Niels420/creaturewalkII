import processing.core.PApplet;

public class Main extends PApplet {

    public static void main(String[] args) {
        PApplet.main("Main");
    }
    float x= 1;
    float y= 1;
    float xSpeed=5;
    float ySpeed=4;
float radiusSpeed=1;
float radius2=1000;
    @Override
    public void settings() {
        super.settings();
        //start kode
//Koden ville ikke lade mig skifte baggrunden så det endet med at det blev en sort firkant på en sort baggrund
        size(1000, 1000);



    }
    @Override
    public void draw() {

clear();

        fill(250);
        ellipse(x,y,50,50);
        //alle disse if() siger hvilken retning den skal afgørende af hvor den rammer firkanten
        if (x + 50/2 > (500 + radius2/2)) {
            xSpeed = -abs(xSpeed);
        }

        if (x - 50/2 < (500 - radius2/2)){
            xSpeed = abs(xSpeed);
        }


        if(y + 50/2 > (500 + radius2/2)){
            ySpeed = -abs(ySpeed);
        }


        if (y - 50/2 < (500 - radius2/2)) {
            ySpeed = abs(ySpeed);
        }

        stroke(0);

        rectMode(CENTER);

noFill();
//denne del af koden for firkanten til at skrumpe indtil at den er på størrelse med cirklens diameter
        rect(500,500,radius2,radius2);
        if(radius2>50){
            radius2=radius2-radiusSpeed;
        }

x=x+xSpeed;
y=y+ySpeed;

        }
    }
