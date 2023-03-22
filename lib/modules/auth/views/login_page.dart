import 'package:generalapp/global/utils/style_utils.dart';
import 'package:generalapp/modules/auth/controllers/login_controiller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            constraints: const BoxConstraints.expand(),
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints.expand(height: 140),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/images/logoapp.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: const BoxConstraints.expand(),
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    // ignore: sort_child_properties_last
                    child: GetBuilder<LoginController>(
                      builder: (loginCntrll) {
                        return SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(vertical: 80.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: H3, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 40),
                              Material(
                                elevation: 8.0,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: loginCntrll.nombreCntl,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isCollapsed: false,
                                      labelText: 'Usuario',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Material(
                                elevation: 8.0,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: loginCntrll.passwCntl,
                                    decoration: const InputDecoration(
                                      labelText: 'Clave',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                constraints:
                                    const BoxConstraints.expand(height: 50),
                                child: TextButton(
                                  onPressed: () {
                                    loginCntrll.getDataUser();
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.zero,
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(BACKGROUND),
                                  ),
                                  child: const Text(
                                    'Ingresar',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(100)),
                      color: PRIMARY,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: BACKGROUND);
  }
}
