import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/container_box_widget.dart';
import 'package:portfolio1/features/core/components/tag_widget.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    children: [
                      _buildLeft(),
                      Padding(
                        padding: const EdgeInsets.only(top: 46),
                        child: _buildRight(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),

                  /// Proyectos Listado.
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Proyectos de",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Github",
                        style: TextStyle(
                          color: AppColors.secondaryColorText,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: _buildProjectList(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 45,
          child: BottomAppBar(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "david.software.developer.contact@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.transparent),
                        side: WidgetStateProperty.all(
                          const BorderSide(color: Colors.transparent),
                        ),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                      ),
                      onPressed: _launchLinkedin,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.link_outlined,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Linkedin",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Colors.transparent),
                        side: WidgetStateProperty.all(
                          const BorderSide(color: Colors.transparent),
                        ),
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                      ),
                      onPressed: _launchGithub,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.link_outlined,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Github",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeft() {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              Text(
                "Acerca de",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 8,
                height: 8,
              ),
              Text(
                "Mí",
                style: TextStyle(
                  color: AppColors.secondaryColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          /// Sobre mi.
          const Text(
            "Soy Juan David Hoyos, diseñador gráfico, técnico, tecnólogo e ingeniero de sistemas de Cartago, Valle del Cauca.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Soy un profesional enfocado con excelentes habilidades en sistemas y diseño. Poseo 2 años y 4 meses de experiencia en el ámbito de sistemas y 1 año en diseño gráfico. Soy competente en el trabajo en equipo y en la escritura de código en PHP, JavaScript, CSS, HTML y Dart.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 24,
            width: 24,
          ),

          _buildContend(),
        ],
      ),
    );
  }

  Widget _buildRight() {
    return SizedBox(
      width: 310,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          "lib/assets/images/user_profile.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildContend() {
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      children: [
        SizedBox(
          width: 300,
          child: _buildExperience(),
        ),
        SizedBox(
          width: 280,
          child: _buildSkills(),
        )
      ],
    );
  }

  Widget _buildExperience() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Experiencia Listado.
        Text(
          "Experiencia",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 16,
          width: 16,
        ),

        /// Experiencia #1.
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Empresa: Fluwin S.A.S",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 10,
              "Cargo: Desarrollador en lenguaje Dart (Android, iOS, Web, Windows, Linux). Mi rol principal consistió en gestionar tanto el frontend como el backend de las aplicaciones, proporcionando actualizaciones constantes y realizando mejoras para mantenerlas al día con las tecnologías más recientes.",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Tiempo: 2 años 4 meses",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
          width: 16,
        ),
        Divider(),
        SizedBox(
          height: 16,
          width: 16,
        ),

        /// Experiencia #2.
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Empresa: Nyce Customs",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 10,
              "Cargo: Diseñador Gráfico (Independiente). Colaboraba en diversos proyectos del negocio, creando diseños para prendas y desarrollando logotipos personalizados.",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Tiempo: 1 año",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSkills() {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Habilidades.
        Text(
          "¿Qué habilidad tengo?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 16,
          width: 16,
        ),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            TagWidget(label: "Android"),
            TagWidget(label: "IOS"),
            TagWidget(label: "Web"),
            TagWidget(label: "Windows"),
            TagWidget(label: "Linux"),
            TagWidget(label: "PHP"),
            TagWidget(label: "JS"),
            TagWidget(label: "HTML"),
            TagWidget(label: "Docker"),
            TagWidget(label: "Flutter"),
            TagWidget(label: "Figma"),
            TagWidget(label: "Ilustrator"),
            TagWidget(label: "Photoshop"),
            TagWidget(label: "Github"),
            TagWidget(label: "Git"),
            TagWidget(label: "Mongo DB"),
            TagWidget(label: "SQL"),
          ],
        ),
      ],
    );
  }

  Widget _buildProjectList() {
    return Wrap(
      runSpacing: 24,
      spacing: 24,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        /// Proyecto #1.
        ContainerBoxWidget(
          title: "Nombre: Gestión Biblioteca",
          listTag: const [
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
          labelLinkProject: "Link del proyecto:",
          linkPreview: 'https://via.placeholder.com/300',
          onPressed: _launchBiblioteca,
        ),

        /// Proyecto #2.
        ContainerBoxWidget(
          title: "Nombre: Control asistencia estudiantil",
          listTag: const [
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
          labelLinkProject: "Link del proyecto:",
          linkPreview: "https://via.placeholder.com/300",
          onPressed: _launchControlAsistencia,
        ),

        /// Proyecto #3.
        ContainerBoxWidget(
          size: 342,
          title: "Nombre: Clone Spotify",
          listTag: const [
            Text(
              maxLines: 2,
              "Etiquetas: ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TagWidget(label: "C++"),
            TagWidget(label: "Dart"),
            TagWidget(label: "Flutter/Dart"),
          ],
          labelLinkProject: "Link del proyecto:",
          linkPreview: "https://via.placeholder.com/300",
          onPressed: _launchCloneSpotify,
        ),

        /// Proyecto #4.
        ContainerBoxWidget(
          size: 342,
          title: "Nombre: CRUD básico con mongo DB",
          listTag: const [
            Text(
              maxLines: 2,
              "Etiquetas: ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TagWidget(label: "C++"),
            TagWidget(label: "Dart"),
            TagWidget(label: "Flutter/Dart"),
          ],
          labelLinkProject: "Link del proyecto:",
          linkPreview: "https://via.placeholder.com/300",
          onPressed: _launchCrudBasico,
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

  void _launchLinkedin() async {
    const url =
        'https://www.linkedin.com/in/juan-david-hoyos-ramirez-233043318/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchGithub() async {
    const url = 'https://github.com/JDavidHR/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }
}
