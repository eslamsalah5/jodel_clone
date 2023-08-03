import 'package:flutter/material.dart';

class InfoPageViewSecondItem extends StatelessWidget {
  const InfoPageViewSecondItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Column(
        children: [
          const Text(
            'What is your Age?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  style: const TextStyle(
                      fontSize: 60, fontWeight: FontWeight.w700),
                  cursorColor: Colors.grey.withOpacity(0.2),
                  cursorHeight: 60,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'No one will see your age?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.white.withOpacity(0.6),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.32,
                  vertical: 14,
                ),
                onPressed: () {},
                child: const Text(
                  'NEXT',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const Text(
                'I confirm that my age is correct',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
