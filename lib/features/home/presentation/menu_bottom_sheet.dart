import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Menu bottom sheet for navigation and app options.
///
/// This menu bottom sheet will give the user access to general app destinations
/// such as settings, terms of service, privacy policy, contact/support, and more.
class MenuBottomSheet extends StatelessWidget {
  /// Creates a new instance of [MenuBottomSheet].
  const MenuBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: 8,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Lorem ipsum dolor sit amet'),
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Lorem ipsum dolor sit amet'),
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Lorem ipsum dolor sit amet'),
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Lorem ipsum dolor sit amet'),
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Lorem ipsum dolor sit amet'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
