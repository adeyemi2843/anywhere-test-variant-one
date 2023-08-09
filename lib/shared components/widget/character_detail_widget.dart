
import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../../core/app_theme/app_colors.dart';

class CharacterDetailWidget extends StatelessWidget {
  const CharacterDetailWidget({
    super.key,
    required this.title,
    required this.description,
    this.image,
  });

  final String title;
  final String description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image!.isEmpty
              ? Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppTheme.water)),
                  child: const Icon(
                    Icons.person_outlined,
                    size: 100,
                  ),
                )
              : Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                          DecorationImage(image: Image.network(image!).image),
                      border: Border.all(color: AppTheme.water)),
                ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text(
              '${AppString.title}: $title',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 30, color: AppTheme.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Wrap(
                children: [
                  Text(
                    '${AppString.description}: $description',
                    style: const TextStyle(
                        letterSpacing: 2.0,
                        height: 1.0,
                        fontSize: 20,
                        color: AppTheme.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
