import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

void launchBiblioteca() async {
  const url = 'https://github.com/JDavidHR/Biblioteca';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

void launchControlAsistencia() async {
  const url = 'https://github.com/JDavidHR/tesis';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

void launchCrudBasic() async {
  const url = 'https://github.com/JDavidHR/flutter_projects';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

void launchPorfolio() async {
  const url = 'https://github.com/JDavidHR/portfolio/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

void launchLinkedin() async {
  const url = 'https://www.linkedin.com/in/juan-david-hoyos-ramirez-233043318/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

void launchGithub() async {
  const url = 'https://github.com/JDavidHR/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir el enlace $url';
  }
}

bool shouldShowImage(BuildContext context) {
  return MediaQuery.of(context).size.width >= 1000;
}

void sendEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: AppDefaultText.email,
    query: 'subject=Asunto del correo&body=Cuerpo del correo',
  );

  var url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('No se pudo abrir la aplicación de correo');
  }
}
