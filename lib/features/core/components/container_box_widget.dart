import 'package:flutter/material.dart';
import 'package:portfolio1/features/core/components/card_preview_widget.dart';

class ContainerBoxWidget extends StatefulWidget {
  final void Function()? onPressed;
  final String title;
  final double? size;
  final List<Widget> listTag;
  final String labelLinkProject;
  final String? linkPreview;
  final IconData? icon;
  const ContainerBoxWidget({
    super.key,
    this.onPressed,
    required this.title,
    required this.listTag,
    required this.labelLinkProject,
    this.linkPreview,
    this.size,
    this.icon,
  });

  @override
  State<ContainerBoxWidget> createState() => _ContainerBoxWidgetState();
}

class _ContainerBoxWidgetState extends State<ContainerBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
          width: 4.0,
        ),
      ),
      width: widget.size ?? 330,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: widget.listTag,
            ),
            Row(
              children: [
                Text(
                  widget.labelLinkProject,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  // onPressed: null,
                  onPressed: widget.onPressed,
                  icon: Icon(widget.icon ?? Icons.link_rounded),
                ),
              ],
            ),
            if (widget.linkPreview != null)
              ImagePreviewWidget(
                imageUrl: widget.linkPreview ?? "https://placehold.co/300",
              ),
          ],
        ),
      ),
    );
  }
}
