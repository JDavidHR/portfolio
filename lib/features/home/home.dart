import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/button_widget.dart';
import 'package:portfolio1/features/core/components/container_box_widget.dart';
import 'package:portfolio1/features/core/components/tag_widget.dart';
import 'package:portfolio1/features/core/constants/colors.dart';
import 'package:portfolio1/features/core/constants/text.dart';
import 'package:portfolio1/features/home/functions/functions.dart';

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
          title: Row(
            children: [
              shouldShowImage(context)
                  ? const SizedBox.shrink()
                  : _buildRight(40),
              const SizedBox(width: 8),
              const Text(
                AppDefaultText.portafoli,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
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
          height: shouldShowImage(context) ? 30 : 40,
          child: const BottomAppBar(
            color: Colors.transparent,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                /// Linkedin.
                SizedBox(
                  width: 77,
                  height: 20,
                  child: ButtonWidget(
                    label: AppDefaultText.linkedin,
                    onPressed: launchLinkedin,
                  ),
                ),

                /// Github.
                SizedBox(
                  width: 66,
                  height: 20,
                  child: ButtonWidget(
                    label: AppDefaultText.github,
                    onPressed: launchGithub,
                  ),
                ),
                // Gmail.
                SizedBox(
                  width: 66,
                  height: 20,
                  child: ButtonWidget(
                    label: AppDefaultText.gmail,
                    onPressed: sendEmail,
                  ),
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

  Widget _buildRight([double? size]) {
    return SizedBox(
      width: size ?? 310,
      height: size,
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
    return const Wrap(
      runSpacing: 24,
      spacing: 24,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        /// Proyecto #1.
        ContainerBoxWidget(
          title: AppDefaultText.firstProjectName,
          description: AppDefaultText.firstProjectDescription,
          listTag: [
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
          //linkPreview: "lib/assets/images/placeholder_300.png",
          onPressed: launchBiblioteca,
        ),

        /// Proyecto #2.
        ContainerBoxWidget(
          title: AppDefaultText.secondProjectName,
          description: AppDefaultText.secondProjectDescription,
          listTag: [
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
          //linkPreview: "lib/assets/images/placeholder_300.png",
          onPressed: launchControlAsistencia,
        ),

        /// Proyecto #4.
        ContainerBoxWidget(
          title: AppDefaultText.fourthProjectName,
          description: AppDefaultText.fourthProjectDescription,
          listTag: [
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
                    TagWidget(label: AppDefaultText.skill16),
                    TagWidget(label: AppDefaultText.skill20),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          //linkPreview: "lib/assets/images/placeholder_300.png",
          onPressed: launchCrudBasic,
        ),

        /// Proyecto #5.
        ContainerBoxWidget(
          title: AppDefaultText.fifthProjectName,
          description: AppDefaultText.fifthProjectDescription,
          listTag: [
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
                    TagWidget(label: AppDefaultText.skill20),
                  ],
                ),
              ],
            ),
          ],
          labelLinkProject: AppDefaultText.projectLink,
          //linkPreview: "lib/assets/images/placeholder_300.png",
          onPressed: launchPorfolio,
        ),
      ],
    );
  }
}
