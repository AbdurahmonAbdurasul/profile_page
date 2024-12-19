import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 26,
          right: 26,
          bottom: 26,
        ),
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
              leading: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: const Color(0xFF161926),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/icons/arrow.png",
                    width: 14,
                    height: 14,
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "Profil",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              actions: [
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF191C2D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/logout.svg",
                    height: 20,
                    width: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                SizedBox(
                  width: 105,
                  height: 105,
                  child: Stack(
                    //fit: StackFit.expand,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          color: const Color(0xFF262938),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF0085FF),
                            width: 2.5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/mask.png",
                          ),
                        ),
                      ),
                      Positioned(
                        right: 4,
                        bottom: 4,
                        child: Container(
                          alignment: Alignment.center,
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0085FF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: const Color(0xFF161926),
                            ),
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Ashurov",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Tolibov Suxrobjon",
                  style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.5),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 53,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0D0F18,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D2134),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/user_one.svg",
                      width: 22,
                      height: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.name,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.deny(
                          RegExp("[0-9]"),
                        ),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Ism Familyangiz",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 53,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0D0F18,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D2134),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/envelope.svg",
                      width: 22,
                      height: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.deny(RegExp("[0-9]"))
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "namuna@gmail.com",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 53,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0D0F18,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D2134),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/phone.svg",
                      width: 22,
                      height: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      ],
                      // maxLength: 12,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "+998(XX)XXX-XX-XX",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 53,
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0D0F18,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D2134),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      "assets/images/calendar.svg",
                      width: 22,
                      height: 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      keyboardType: TextInputType.datetime,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "kk-oo-yyyy",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Spacer(),
                Container(
                  width: 164,
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFF1D2134,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assets/images/bin.svg",
                        width: 18,
                        height: 18,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "Akkauntni o'chirish",
                        style: TextStyle(
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 46,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0085FF)),
                  onPressed: () {},
                  child: const Text(
                    "Saqlash",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
