import 'package:flutter/material.dart';
import 'package:univibeflutter/core/router/navigator_screen.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';
import 'package:univibeflutter/screens/team_tasks/project_details.dart';
import 'package:univibeflutter/widgets/header.dart';

/// TODO : Abdelkader (TeamTasks) from 15:02 to 16:36
class TeamTasksHome extends StatefulWidget {
  const TeamTasksHome({super.key});

  @override
  State<TeamTasksHome> createState() => _TeamTasksHomeState();
}

class _TeamTasksHomeState extends State<TeamTasksHome> {
  bool createIssue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              title: "Team tasks",
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Projects",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5),
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            changeScreen(
                              context,
                              const ProjectDetails(),
                            );
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Project $index",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                              PopupMenuButton(
                                color: ColorApp.colorPrimary,
                                constraints: const BoxConstraints(
                                  maxWidth: 175,
                                ),
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      onTap: () {
                                        setState(() {
                                          createIssue = !createIssue;
                                        });
                                      },
                                      labelTextStyle:
                                          const WidgetStatePropertyAll(
                                        TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                          shadows: [
                                            Shadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                              color: Colors.black45,
                                            ),
                                          ],
                                        ),
                                      ),
                                      child: const Text(
                                        "Leave Team",
                                      ),
                                    ),
                                  ];
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
