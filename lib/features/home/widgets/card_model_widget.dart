import 'package:flutter/material.dart';

class CardModelWidget extends StatefulWidget {
  const CardModelWidget({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);
  final Widget child;
  final Function()? onTap;
  @override
  State<CardModelWidget> createState() => _CardModelWidgetState();
}

class _CardModelWidgetState extends State<CardModelWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 280,
        height: 396,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          shadowColor: Colors.grey.withOpacity(0.5),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                stops: const [
                  0.0,
                  1.0,
                ],
                colors: [
                  const Color.fromARGB(255, 170, 170, 170).withOpacity(0.6),
                  const Color.fromARGB(255, 93, 93, 93),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
