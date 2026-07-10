import 'package:flutter/material.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class PersonLanguagePage extends StatefulWidget {
  const PersonLanguagePage({super.key});

  @override
  State<PersonLanguagePage> createState() => _PersonLanguagePageState();
}

class _PersonLanguagePageState
    extends BasePageState<PersonLanguagePage, DefaultBloc> {
  String _language = 'vi';

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ngôn ngữ')),
      body: RadioGroup<String>(
        groupValue: _language,
        onChanged: (value) {
          if (value == null) return;
          setState(() => _language = value);
        },
        child: ListView(
          children: [
            RadioListTile<String>(
              title: const Text('Tiếng Việt'),
              value: 'vi',
            ),
            RadioListTile<String>(
              title: const Text('English'),
              value: 'en',
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: AppText.t1('Lưu cài đặt ngôn ngữ sẽ kết nối API sau.'),
            ),
          ],
        ),
      ),
    );
  }
}
