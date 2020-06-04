//Micaela Giménez. tp2

//hago espacio en memoria para la imagen
PImage imagen;
//hago espacio para la fuente
PFont titulo;
//subtitulo
PFont subtitulo;

//variables para titulo
float tamTitulo;


//variales para subtitulos1
float posX;
float posX2;

//variable para subtitulos2
float posY;
float posY2;

void setup () {
  size (520, 388);
  //cargo la imagen

  imagen = loadImage("n1.jpg");

  //cargo titulo
  titulo = loadFont ("Gabriola-48.vlw");

  //cargo subtitulo
  subtitulo = loadFont ("CambriaMath-48.vlw");

  //declaro variables de titulo
  tamTitulo = height*1/3;


  //declaro variables de subtitulo1
  posX= -300;
  posX2= -600;

  //declaro variables de subtitulo2
  posY = 1250;
  posY2= -1350;
}

void draw () {

  background (120);

  //carga de la imagen
  image(imagen, 0, 0, width, height);
  tint (0, 180, 250, 126);

  //cargo la primer tipografia que sera el titulo

  fill (7, 41, 0);
  textFont (titulo);
  textAlign (CENTER);
  textSize( tamTitulo);
  text ("LOS NENÚFARES", width/2, tamTitulo);

  tamTitulo= tamTitulo-1;


  //subtitulo1

  fill (24, 240, 123);
  textFont (titulo);
  textAlign (CENTER);
  textSize (80);
  text ("Claude Monet", posX, height*1/2);

  fill(90, 232, 255);
  textAlign (CENTER);
  textSize (50);
  text ("Pintados entre 1908-1926", posX2, height*2/3);


  posX = posX+2;
  posX2= posX2+3;


  //cargo subtitulo2
  fill (3, 18, 41);
  textFont (subtitulo);
  textAlign (CENTER);
  textSize (40);
  text ("Existen alrededor de 250\n nenúfares realizados\n por el pintor", width/2, posY);


  textAlign (CENTER);
  textSize (30);
  text ("Los más famosos de esta\n serie se encuentran en el \n Museo de La Orangerie\n de Las Tullerias en París", width/2, posY2);

  posY = posY-2;
  posY2= posY2 +2;
}

void mousePressed () {
  //variables de titulo
  tamTitulo = height*1/3;


  //variables de subtitulo1
  posX= -300;
  posX2= -600;

  // variables de subtitulo2
  posY = 1250;
  posY2= -1350;
}
