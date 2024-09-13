import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/container_box_widget.dart';
import 'package:portfolio1/features/core/components/tag_widget.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:portfolio1/features/core/constants/text.dart';
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
                AppDefaultText.portafoli,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                AppDefaultText.letterO,
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
                      shouldShowImage(context)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 46),
                              child: _buildRight(),
                            )
                          : const SizedBox.shrink(),
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
                        AppDefaultText.projectsOf,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        AppDefaultText.github,
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
          height: shouldShowImage(context) ? 30 : 50,
          child: BottomAppBar(
            color: Colors.transparent,
            child: Wrap(
              spacing: 4,
              runSpacing: 4,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                shouldShowImage(context)
                    ? const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: 18,
                          ),
                          SizedBox(width: 4),
                          Flexible(
                            child: Tooltip(
                              triggerMode: TooltipTriggerMode.tap,
                              message: AppDefaultText.email,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                AppDefaultText.email,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink(),
                SizedBox(
                  width: 77,
                  height: 20,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero,
                      ),
                      backgroundColor:
                          WidgetStateProperty.all(Colors.transparent),
                      side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.transparent),
                      ),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    onPressed: _launchLinkedin,
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.link_outlined,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          AppDefaultText.linkedin,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 66,
                  height: 20,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero),
                      backgroundColor:
                          WidgetStateProperty.all(Colors.transparent),
                      side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.transparent),
                      ),
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
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
                          AppDefaultText.github,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                shouldShowImage(context)
                    ? const SizedBox.shrink()
                    : const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Tooltip(
                              triggerMode: TooltipTriggerMode.tap,
                              message: AppDefaultText.email,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                AppDefaultText.email,
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ],
                      )
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
                AppDefaultText.about,
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
                AppDefaultText.me,
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
            AppDefaultText.descriptionAboutMyParagraphOne,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            AppDefaultText.descriptionAboutMyParagraphTwo,
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
          AppDefaultText.experience,
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
              AppDefaultText.firstCompanyName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 10,
              AppDefaultText.firstCompanyCharge,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              AppDefaultText.firstCompanyTime,
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
              AppDefaultText.secondCompanyName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              maxLines: 10,
              AppDefaultText.secondCompanyCharge,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              AppDefaultText.secondCompanyTime,
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
          AppDefaultText.whatSkillDoIHave,
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
            TagWidget(label: AppDefaultText.skill1),
            TagWidget(label: AppDefaultText.skill2),
            TagWidget(label: AppDefaultText.skill3),
            TagWidget(label: AppDefaultText.skill4),
            TagWidget(label: AppDefaultText.skill5),
            TagWidget(label: AppDefaultText.skill6),
            TagWidget(label: AppDefaultText.skill7),
            TagWidget(label: AppDefaultText.skill8),
            TagWidget(label: AppDefaultText.skill9),
            TagWidget(label: AppDefaultText.skill10),
            TagWidget(label: AppDefaultText.skill11),
            TagWidget(label: AppDefaultText.skill12),
            TagWidget(label: AppDefaultText.skill13),
            TagWidget(label: AppDefaultText.skill14),
            TagWidget(label: AppDefaultText.skill15),
            TagWidget(label: AppDefaultText.skill16),
            TagWidget(label: AppDefaultText.skill17),
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
          title: AppDefaultText.firstProjectName,
          listTag: const [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  AppDefaultText.tags,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    TagWidget(label: AppDefaultText.skill6),
                    TagWidget(label: AppDefaultText.skill21),
                    TagWidget(label: AppDefaultText.skill7),
                    TagWidget(label: AppDefaultText.skill8),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          onPressed: _launchBiblioteca,
        ),

        /// Proyecto #2.
        ContainerBoxWidget(
          title: AppDefaultText.secondProjectName,
          listTag: const [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  AppDefaultText.tags,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    TagWidget(label: AppDefaultText.skill6),
                    TagWidget(label: AppDefaultText.skill21),
                    TagWidget(label: AppDefaultText.skill7),
                    TagWidget(label: AppDefaultText.skill8),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          onPressed: _launchControlAsistencia,
        ),

        /// Proyecto #3.
        ContainerBoxWidget(
          size: 342,
          title: AppDefaultText.thirdProjectName,
          listTag: const [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  AppDefaultText.tags,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    TagWidget(label: AppDefaultText.skill19),
                    TagWidget(label: AppDefaultText.skill18),
                    TagWidget(label: AppDefaultText.skill20),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          onPressed: _launchCloneSpotify,
        ),

        /// Proyecto #4.
        ContainerBoxWidget(
          size: 342,
          title: AppDefaultText.fourthProjectName,
          listTag: const [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  AppDefaultText.tags,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    TagWidget(label: AppDefaultText.skill19),
                    TagWidget(label: AppDefaultText.skill18),
                    TagWidget(label: AppDefaultText.skill20),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          onPressed: _launchCrudBasic,
        ),
      ],
    );
  }

  void _launchBiblioteca() async {
    const url = '';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchControlAsistencia() async {
    const url = '';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchCloneSpotify() async {
    const url = '';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  void _launchCrudBasic() async {
    const url = '';
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

  bool shouldShowImage(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1000;
  }
}
