import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/services/auth_service.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    SizeConfig().init(context);
    return Scaffold(
      appBar: const MySignUpAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0),
            child: _showFirstStep(),
          ),
        ),
      ),
    );
  }

  Form _showFirstStep() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyTextBold(
            text: "Kirish",
            size: 24.0,
            color: Colors.black,
          ),
          MySizedBox(height: 50),
          MyTextFormField(
            hint: 'Email',
            controller: _emailController,
            inputType: TextInputType.name,
            action: TextInputAction.next,
          ),
          MySizedBox(height: 20),
          MyTextFormField(
            hint: 'Parol',
            controller: _passwordController,
            inputType: TextInputType.name,
            action: TextInputAction.done,
            obscureText: true,
            suffix: IconButton(
                padding: EdgeInsets.only(right: getUniqueW(10)),
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye)),
          ),
          MySizedBox(height: 30.0),
          _showDivider(),
          MySizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyElevatedIconButton(
                onPressed: () {},
                label: 'Facebook',
                assetIcon: MyAssetIcons.facebook,
              ),
              MyElevatedIconButton(
                onPressed: () {},
                label: 'Google',
                assetIcon: MyAssetIcons.google,
              ),
            ],
          ),
          MySizedBox(height: 60.0),
          MyButton(
              onPressed: () {
                ServiceAuth.signInUser(
                        _emailController.text, _passwordController.text)
                    .then((bool success) {
                  if (success) {
                    _showScaffoldMessanger(
                      "Muvaffaqiyatli Kirish Amalga Oshirildi",
                      _context,
                      Colors.green,
                    );
                    Navigator.push(_context,
                        MaterialPageRoute(builder: (_) => BodyPageView()));
                  } else {
                    _showScaffoldMessanger("Parol yoki Email noto'g'ri",
                        _context, Colors.redAccent);
                  }
                });
              },
              label: 'Kirish'),
          MyTextButton(
              onPressed: () {
                Navigator.push(
                    _context, MaterialPageRoute(builder: (_) => SignUpView()));
              },
              label: "Ro'yhatdan o'tish")
        ],
      ),
    );
  }

  _showDivider() => Row(
        children: [
          _divider(true),
          MyTextRegular(text: 'yoki'),
          _divider(false),
        ],
      );

  Expanded _divider(bool isStart) => Expanded(
        child: Divider(
          thickness: getUniqueH(1.0),
          endIndent: isStart ? getUniqueW(10.0) : 0.0,
          indent: !isStart ? getUniqueW(10.0) : 0.0,
        ),
      );

  _showScaffoldMessanger(String message, BuildContext context, Color color) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: color,
        dismissDirection: DismissDirection.horizontal,
        content: Text(message),
      ),
    );
  }
}
