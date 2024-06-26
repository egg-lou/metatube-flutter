import 'package:flutter/material.dart';
import 'package:metatube/utils/app_styles.dart';
import 'package:metatube/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _mainButton(() => null, 'New File'),
                _mainButton(null, 'New File'),
                Row(
                  children: [
                    _actionButton(() => null, Icons.file_upload),
                    const SizedBox(width: 8),
                    _actionButton(() => null, Icons.folder)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: titleController,
              hintText: 'Enter Video Title',
              maxLength: 100,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _mainButton(Function()? onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      style: _buttonStyle(),
      child: Text(text),
    );
  }

  IconButton _actionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,
      splashColor: AppTheme.accent,
      icon: Icon(icon, color: AppTheme.medium),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
        backgroundColor: AppTheme.accent,
        foregroundColor: AppTheme.dark,
        disabledBackgroundColor: AppTheme.disabledBackgroundColor,
        disabledForegroundColor: AppTheme.disabledForegroundColor);
  }
}
