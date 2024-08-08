import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/tag_widget.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:portfolio1/features/project_history_page/project_history_page.dart';

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
              child: Wrap(
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
                builder: (context) => const ProjectHistoryPage(),
              ),
            );
          },
          tooltip: "Proyectos",
          child: const Icon(
            Icons.inventory_2_outlined,
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
      width: 400,
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
              "Empresa: Fluwin",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 2,
              "Cargo: Desarrollador en lenguaje Dart (Android / IOS / Web / Windows / Linux)",
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
              maxLines: 2,
              "Cargo: Diseñador Gráfico (independiente)",
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
        SizedBox(
          height: 16,
          width: 16,
        ),
        Divider(),
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
            TagWidget(label: "Html"),
            TagWidget(label: "Docker"),
            TagWidget(label: "Flutter"),
            TagWidget(label: "Figma"),
            TagWidget(label: "Ilustrator"),
            TagWidget(label: "Photoshop"),
            TagWidget(label: "Github"),
            TagWidget(label: "Git"),
          ],
        ),
      ],
    );
  }
}
