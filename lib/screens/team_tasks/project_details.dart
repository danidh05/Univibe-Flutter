import 'package:flutter/material.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';
import 'package:univibeflutter/widgets/header.dart';
import 'package:univibeflutter/widgets/image_pick.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Projects",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ImageStack(),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          WorkTODO(),
                          WorkINPROGRESS(),
                          WorkDONE(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkTODO extends StatefulWidget {
  const WorkTODO({super.key});

  @override
  State<WorkTODO> createState() => _WorkTODOState();
}

class _WorkTODOState extends State<WorkTODO> {
  bool createIssue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "TO DO",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(5),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createIssue
                    ? Container(
                        height: 23,
                      )
                    : TextButton.icon(
                        onPressed: () {
                          setState(() {
                            createIssue = !createIssue;
                          });
                        },
                        label: const Text("Create issue"),
                        icon: const Icon(
                          Icons.add,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: createIssue
                      ? TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "What needs to be done?",
                            hintStyle:
                                Theme.of(context).textTheme.headlineMedium,
                          ),
                        )
                      : const Text("No issue to display"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WorkINPROGRESS extends StatefulWidget {
  const WorkINPROGRESS({super.key});

  @override
  State<WorkINPROGRESS> createState() => _WorkINPROGRESSState();
}

class _WorkINPROGRESSState extends State<WorkINPROGRESS> {
  bool createIssue = false;
  bool editIssue = false;
  TextEditingController controller = TextEditingController(text: "Abou page..");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "IN PROGRESS",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createIssue
                    ? Container(
                        height: 23,
                      )
                    : TextButton.icon(
                        onPressed: () {
                          setState(() {
                            createIssue = !createIssue;
                          });
                        },
                        label: const Text("Create issue"),
                        icon: const Icon(
                          Icons.add,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: createIssue
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black38),
                          ),
                          child: editIssue
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextField(
                                        controller: controller,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                            child: const Icon(
                                              Icons.done,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                            child: const Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: TextButton.icon(
                                            label: const Text(
                                              "Home page development",
                                            ),
                                            icon: const Icon(
                                                Icons.edit_road_outlined),
                                            onPressed: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: PopupMenuButton(
                                            color: ColorApp.colorPrimary,
                                            constraints: const BoxConstraints(
                                              maxWidth: 175,
                                            ),
                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  onTap: () {
                                                    setState(() {
                                                      createIssue =
                                                          !createIssue;
                                                    });
                                                  },
                                                  labelTextStyle:
                                                      const WidgetStatePropertyAll(
                                                    TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    "Delete Task",
                                                  ),
                                                ),
                                              ];
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 0),
                                      child: Text(
                                        "-Html\n"
                                        "-Css\n"
                                        "-Javascript\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Icons.done_rounded,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                        )
                      : const Text("No issue to display"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WorkDONE extends StatefulWidget {
  const WorkDONE({super.key});

  @override
  State<WorkDONE> createState() => _WorkDONEState();
}

class _WorkDONEState extends State<WorkDONE> {
  bool createIssue = false;
  bool editIssue = false;
  TextEditingController controller = TextEditingController(text: "Abou page..");
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "DONE",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createIssue
                    ? Container(
                        height: 23,
                      )
                    : TextButton.icon(
                        onPressed: () {
                          setState(() {
                            createIssue = !createIssue;
                          });
                        },
                        label: const Text("Create issue"),
                        icon: const Icon(
                          Icons.add,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: createIssue
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black38),
                          ),
                          child: editIssue
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextField(
                                        controller: controller,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                            child: const Icon(
                                              Icons.done,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                            child: const Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: TextButton.icon(
                                            label: const Text(
                                              "Home page development",
                                            ),
                                            icon: const Icon(
                                                Icons.edit_road_outlined),
                                            onPressed: () {
                                              setState(() {
                                                editIssue = !editIssue;
                                              });
                                            },
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: PopupMenuButton(
                                            color: ColorApp.colorPrimary,
                                            constraints: const BoxConstraints(
                                              maxWidth: 175,
                                            ),
                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  onTap: () {
                                                    setState(() {
                                                      createIssue =
                                                          !createIssue;
                                                    });
                                                  },
                                                  labelTextStyle:
                                                      const WidgetStatePropertyAll(
                                                    TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    "Delete Task",
                                                  ),
                                                ),
                                              ];
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 0),
                                      child: Text(
                                        "-Html\n"
                                        "-Css\n"
                                        "-Javascript\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Icon(
                                            Icons.done_rounded,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                        )
                      : const Text("No issue to display"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
