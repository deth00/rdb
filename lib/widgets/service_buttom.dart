import 'package:flutter/material.dart';

class ServiceButtom extends StatelessWidget {
  final String title;
  final String text;
  final String image;
  final VoidCallback? onpress;
  const ServiceButtom(
      {super.key,
      required this.title,
      required this.text,
      required this.image,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 95,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset(
                      image,
                      scale: 0.88,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          text,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 75, right: 0),
                child: Divider(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
