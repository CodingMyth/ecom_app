import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.title, required this.onTabSeeAll,
  });

  final String title;
  final VoidCallback onTabSeeAll;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: textTheme.titleMedium?.copyWith(fontSize: 24),),
        TextButton(onPressed: onTabSeeAll, child: Text('See all'))
      ],
    );
  }
}