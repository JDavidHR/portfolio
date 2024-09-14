import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        side: WidgetStateProperty.all(
          const BorderSide(color: Colors.transparent),
        ),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const Icon(
            Icons.link_outlined,
            size: 18,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
