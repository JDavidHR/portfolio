import 'package:flutter/material.dart';

class AppDefaultText {
  /// App titles and texts.
  ///
  static const String portafoli = "Portafoli";
  static const String letterO = "o";
  static const String projectsOf = "Proyectos de";
  static const String github = "Github";
  static const String about = "Acerca de";
  static const String me = "Mí";
  static const String experience = "Experiencia";
  static const String whatSkillDoIHave = "¿Qué habilidad tengo?";
  static const String tags = "Etiquetas: ";
  static const String projectLink = "Link del proyecto:";

  /// Social media.
  ///
  static const String email = "david.software.developer.contact@gmail.com";
  static const String linkedin = "Linkedin";

  /// Descriptions.
  ///
  static const String descriptionAboutMyParagraphOne =
      "Soy Juan David Hoyos, diseñador gráfico, técnico, tecnólogo e ingeniero de sistemas de Cartago, Valle del Cauca.";
  static const String descriptionAboutMyParagraphTwo =
      "Soy un profesional enfocado con excelentes habilidades en sistemas y diseño. Poseo 2 años y 4 meses de experiencia en el ámbito de sistemas y 1 año en diseño gráfico. Soy competente en el trabajo en equipo y en la escritura de código en PHP, JavaScript, CSS, HTML y Dart.";

  /// Experience.
  ///
  /// First.
  static const String firstCompanyName = "Empresa: Fluwin S.A.S";
  static const String firstCompanyCharge =
      "Cargo: Desarrollador en lenguaje Dart (Android, iOS, Web, Windows, Linux). Mi rol principal consistió en gestionar tanto el frontend como el backend de las aplicaciones, proporcionando actualizaciones constantes y realizando mejoras para mantenerlas al día con las tecnologías más recientes.";
  static const String firstCompanyTime = "Tiempo: 2 años 4 meses";

  /// Second.
  static const String secondCompanyName = "Empresa: Nyce Customs";
  static const String secondCompanyCharge =
      "Cargo: Diseñador Gráfico (Independiente). Colaboraba en diversos proyectos del negocio, creando diseños para prendas y desarrollando logotipos personalizados.";
  static const String secondCompanyTime = "Tiempo: 1 año";

  /// Skills.
  ///
  static const String skill1 = "Android";
  static const String skill2 = "IOS";
  static const String skill3 = "Web";
  static const String skill4 = "Windows";
  static const String skill5 = "Linux";
  static const String skill6 = "PHP";
  static const String skill7 = "JS";
  static const String skill8 = "HTML";
  static const String skill9 = "Docker";
  static const String skill10 = "Flutter";
  static const String skill11 = "Figma";
  static const String skill12 = "Ilustrator";
  static const String skill13 = "Photoshop";
  static const String skill14 = "Github";
  static const String skill15 = "Git";
  static const String skill16 = "Mongo DB";
  static const String skill17 = "SQL";
  static const String skill18 = "Dart";
  static const String skill19 = "C++";
  static const String skill20 = "Flutter/Dart";
  static const String skill21 = "CSS";

  /// projects.
  ///
  /// First.
  ///
  static const String firstProjectName = "Nombre: Gestión Biblioteca";
  static const String firstPreviewLink = "https://placehold.co/300";
  static const String firstProjectDescription =
      "Descripción: El proyecto se centra en la gestión de libros para una biblioteca, permitiendo generar reportes en formatos Excel y PDF, además de enviar correos electrónicos a través de mailto. También incluye un CRUD básico que permite agregar, modificar y asignar libros a los clientes, todo respaldado con una base de datos MySQL.";

  /// Second.
  ///
  static const String secondProjectName = "Nombre: Control de asistencia";
  static const String secondPreviewLink = "https://placehold.co/300";
  static const String secondProjectDescription =
      "Descripción: El objetivo principal es gestionar el control de asistencia y los horarios de estudiantes y docentes en una institución, además de asignar tareas a los docentes. Incluye la generación de reportes y un CRUD básico para agregar, eliminar y modificar estudiantes, docentes y materias. También gestiona roles, con vistas específicas habilitadas para estudiantes, docentes y administradores.";

  /// Third.
  ///
  static const String thirdProjectName = "Nombre: Clone Spotify";
  static const String thirdPreviewLink = "https://placehold.co/300";

  /// Fourth.
  ///
  static const String fourthProjectName = "Nombre: CRUD básico con mongo DB";
  static const String fourthPreviewLink = "https://placehold.co/300";
  static const String fourthProjectDescription =
      "Descripción: El proyecto implementa un CRUD básico utilizando MongoDB, junto con la creación y configuración de widgets personalizados para una mejor organización de la estructura de archivos. Permite consultar, registrar y modificar usuarios.";
}

extension DefaultTextExtension on BuildContext {
  AppDefaultText get string => AppDefaultText();
}
