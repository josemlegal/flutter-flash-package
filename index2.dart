import 'dart:io';

void main() {
  // Crear la carpeta 'modules'
  Directory modulesFolder = Directory('./modules');
  modulesFolder.createSync();
  print('Carpeta "modules" creada.');

  // Crear las subcarpetas dentro de 'modules'
  Directory presentationFolder = Directory('./modules/presentation');
  presentationFolder.createSync();
  print('Carpeta "presentation" creada.');

  Directory domainFolder = Directory('./modules/domain');
  domainFolder.createSync();
  print('Carpeta "domain" creada.');

  Directory dataFolder = Directory('./modules/data');
  dataFolder.createSync();
  print('Carpeta "data" creada.');

  // Crear la subcarpeta 'models' dentro de 'domain'
  Directory modelsFolder = Directory('./modules/domain/models');
  modelsFolder.createSync();
  print('Carpeta "models" creada.');

  // Crear el archivo 'model.dart' dentro de 'models'
  File modelFile = File('./modules/domain/models/model.dart');
  modelFile.createSync();
  print('Archivo "model.dart" creado.');

  // Crear la subcarpeta 'repositorio' dentro de 'data'
  Directory repositoryFolder = Directory('./modules/data/repositorio');
  repositoryFolder.createSync();
  print('Carpeta "repositorio" creada.');

  // Crear el archivo 'repositorio_implementation.dart' dentro de 'repositorio'
  File repositoryImplementationFile =
      File('./modules/data/repositorio/repositorio_implementation.dart');
  repositoryImplementationFile.createSync();
  print('Archivo "repositorio_implementation.dart" creado.');

  // Crear las subcarpetas dentro de 'presentation'
  Directory controllersFolder = Directory('./modules/presentation/controllers');
  controllersFolder.createSync();
  print('Carpeta "controllers" creada.');

  Directory viewFolder = Directory('./modules/presentation/view');
  viewFolder.createSync();
  print('Carpeta "view" creada.');

  print('Estructura de carpetas y archivos creada exitosamente.');
}
