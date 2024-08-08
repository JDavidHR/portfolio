import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/tag_widget.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:portfolio1/features/home/home.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectHistoryPage extends StatefulWidget {
  const ProjectHistoryPage({
    super.key,
  });

  @override
  State<ProjectHistoryPage> createState() => _ProjectHistoryPageState();
}

class _ProjectHistoryPageState extends State<ProjectHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.background,
          elevation: 0,
          title: const Row(
            children: [
              Text(
                "Portafoli",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "o",
                style: TextStyle(
                  color: AppColors.secondaryColorText,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Proyectos Listado.
                  const Text(
                    "Proyectos de Github",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  _buildProjectList(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.secondaryBackground,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          tooltip: "Home",
          child: const Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Email: jdhr123@hotmail.com",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "+57 310 491 2677",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectList() {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      children: [
        /// Proyecto #1.
        SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nombre: Gestión Biblioteca",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Row(
                children: [
                  Text(
                    maxLines: 2,
                    "Etiquetas: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TagWidget(label: "PHP"),
                  TagWidget(label: "CSS"),
                  TagWidget(label: "JS"),
                  TagWidget(label: "HTML"),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Link del proyecto:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: _launchBiblioteca,
                    icon: const Icon(Icons.link_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// Proyecto #2.
        SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nombre: Control asistencia estudiantil",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Row(
                children: [
                  Text(
                    maxLines: 2,
                    "Etiquetas: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TagWidget(label: "PHP"),
                  TagWidget(label: "CSS"),
                  TagWidget(label: "JS"),
                  TagWidget(label: "HTML"),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Link del proyecto:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: _launchControlAsistencia,
                    icon: const Icon(Icons.link_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// Proyecto #3.
        SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nombre: Clone Spotify",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Row(
                children: [
                  Text(
                    maxLines: 2,
                    "Etiquetas: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TagWidget(label: "C++"),
                  TagWidget(label: "Dart"),
                  TagWidget(label: "HTML"),
                  TagWidget(label: "Flutter"),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Link del proyecto:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: _launchCloneSpotify,
                    icon: const Icon(Icons.link_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// Proyecto #4.
        SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nombre: CRUD básico con mongo DB",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Row(
                children: [
                  Text(
                    maxLines: 2,
                    "Etiquetas: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TagWidget(label: "C++"),
                  TagWidget(label: "Dart"),
                  TagWidget(label: "HTML"),
                  TagWidget(label: "Flutter"),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Link del proyecto:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    onPressed: _launchCrudBasico,
                    icon: const Icon(Icons.link_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _launchBiblioteca() async {
    const url = 'https://www.ejemplo.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchControlAsistencia() async {
    const url = 'https://www.ejemplo.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchCloneSpotify() async {
    const url = 'https://www.ejemplo.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchCrudBasico() async {
    const url = 'https://www.ejemplo.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }
}
