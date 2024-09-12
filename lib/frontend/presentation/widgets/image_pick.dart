import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
      "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
      "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    ];

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(images.length + 1, (index) {
          if (index < images.length) {
            return Align(
              widthFactor: .3,
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                margin: EdgeInsets.only(left: index.toDouble() * 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                ),
              ),
            );
          } else {
            return Align(
              widthFactor: .3,
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                margin: EdgeInsets.only(left: index.toDouble() * 10),
                child: IconButton(
                  icon: const Icon(Icons.person_add_alt, color: Colors.white),
                  onPressed: () {
                    // hona alcode
                  },
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
