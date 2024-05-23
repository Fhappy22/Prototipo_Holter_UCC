String[] lines; // Array para almacenar las líneas del archivo

void setup() {
  size(400, 400);
  
  // Cargar el archivo de texto
  String[] filePaths = { sketchPath("test.txt") }; // Cambia "datos.txt" por el nombre de tu archivo
  lines = loadStrings(filePaths[0]);
  
  // Imprimir el contenido del archivo en la consola
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
  }
}

void draw() {
  background(255);
  
  // Mostrar el contenido del archivo en la ventana
  textAlign(LEFT, TOP);
  fill(0);
  for (int i = 0; i < lines.length; i++) {
    text(lines[i], 10, 10 + i * 15);
  }
}
