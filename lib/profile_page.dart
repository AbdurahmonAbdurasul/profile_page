import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1B223A),
              Color(0xFF151825),
              Color(0xFF151825),
              Color(0xFF151825),
              Color(0xFF151825),
              Color(0xFF1B223A),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                Container(
                  width: 35,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF191C2D)),
                  child: SvgPicture.asset(
                    "assets/icons/logout.svg",
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              alignment: Alignment.center,
              height: 102,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF0D0F18),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/image.png"),
                      radius: 29,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Arashov",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        Text(
                          "arashov@gmail.com",
                          style: TextStyle(
                            color: Color(0xFF777E90),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          width: 51,
                          height: 21,
                          decoration: const BoxDecoration(
                            color: Color(0xFF262938),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/icons/pencil.svg",
                width: 30,
                height: 30,
              ),
              title: const Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Color(0xFF212433),
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/icons/location_arrow.svg",
                height: 30,
                width: 30,
              ),
              title: const Text(
                "Ofis map",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Color(0xFF212433),
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/icons/headset.svg",
                width: 30,
                height: 30,
              ),
              title: const Text(
                "Qo'llab quvvatlash",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Color(0xFF212433),
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/icons/list.svg",
                width: 30,
                height: 30,
              ),
              title: const Text(
                "Biz haqimizda",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Color(0xFF212433),
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/icons/sun.svg",
                width: 30,
                height: 30,
              ),
              title: const Text(
                "Dark theme",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Switch(
                value: true,
                activeColor: Colors.white,
                activeTrackColor: const Color(0xFF0085FF),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF151825),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/homee.svg",
              width: 26,
              height: 26,
            ),
            label: "Bosh sahifa",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/candlesticks.svg",
              width: 26,
              height: 26,
            ),
            label: "Bosh sahifa",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/invoice.svg",
              width: 26,
              height: 26,
            ),
            label: "Ro'yhat",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/fire.svg",
              width: 26,
              height: 26,
            ),
            label: "Olov",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              width: 26,
              height: 26,
            ),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
