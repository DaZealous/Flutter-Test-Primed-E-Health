import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/utils/assets_data.dart';
import 'package:flutter_assessment/utils/theme.dart';
import 'widgets/grid_images.dart';
import 'widgets/profile_section.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                // Colors.white,
                // AppColors.primary.withOpacity(0.01),
                AppColors.primary.withOpacity(0.5),
              ],
              stops: const [0.1, 0.5],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ProfileSection(
                  location: 'Saint Petersburg',
                  profileUrl: AssetsData.profileAvatar.absolutePath,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              child: GridImages(),
            ),
          ),
        ],
      ),
    );
  }
}
