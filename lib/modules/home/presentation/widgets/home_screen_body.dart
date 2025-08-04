import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Stack(children: [CustomHeader()]));
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Color(0xFF121212))
    child: ,
    );
  }
}


class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ima,
      title: ,
      subtitle: ,
      trailing: ,
    );
  }
}