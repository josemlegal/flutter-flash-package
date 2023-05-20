import 'dart:io';

void main() {
  List<String> rutas = [
    './modules',
    './modules/presentation',
    './modules/domain',
    './modules/data',
    './modules/domain/models',
    './modules/domain/models/model.dart',
    './modules/data/repositorio',
    './modules/data/repositorio/repositorio_implementation.dart',
    './modules/presentation/controllers',
    './modules/presentation/controllers/controller.dart',
    './modules/presentation/view',
  ];

  creadorDeCarpetasProyecto(rutas);

  print('Estructura de carpetas y archivos creada exitosamente.');
}

void creadorDeCarpetasProyecto(List<String> rutas) {
  for (var ruta in rutas) {
    if (ruta.endsWith('.dart')) {
      // Crear archivo
      File archivo = File(ruta);
      archivo.createSync(recursive: true);
      print('Archivo "$ruta" creado.');
    } else {
      // Crear carpeta
      Directory carpeta = Directory(ruta);
      carpeta.createSync(recursive: true);
      print('Carpeta "$ruta" creada.');
    }
  }
}
