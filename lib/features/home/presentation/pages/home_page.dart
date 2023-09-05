import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/core/resources/padding_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).home),
        ),
        body: Padding(
          padding: PaddingManager.contentPaddingV7H14,
          child: Column(
            children: [
              TextField(
                controller: _nameController,
              ),
              Text(_nameController.text),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _nameController.clear();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Text('Clear text')
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
