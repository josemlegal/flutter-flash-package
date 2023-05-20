import 'dart:io';

void main() {
  // Nombre del archivo a crear
  String nombreArchivo = 'nuevo_archivo.txt';

  // Contenido del archivo
  String contenidoArchivo = '''
  ¡Hola, mundo!
  Este es un archivo creado automáticamente.
  ''';

  // Ruta del archivo (puedes personalizar la ruta según tus necesidades)
  String rutaArchivo = './pepe.dart';

  // Crear el archivo
  File archivo = File(rutaArchivo);
  archivo.writeAsStringSync(contenidoArchivo);

  print('El archivo "$nombreArchivo" ha sido creado.');
  // Crear la carpeta
  Directory nuevaCarpeta = Directory('./carpetanueva');
  nuevaCarpeta.create().then((Directory carpeta) {
    print('La carpeta "${carpeta.path}" ha sido creada.');
  }).catchError((e) {
    print('Error al crear la carpeta: $e');
  });
}
