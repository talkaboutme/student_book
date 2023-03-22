import 'package:flutter/material.dart';
import '../data/local/db/app_db.dart';
import 'package:drift/drift.dart' as drift;

enum Gender { male, female }

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  late AppDb _db;
  final TextEditingController _studentNameController = TextEditingController();
  final TextEditingController _studentIdController = TextEditingController();
  Gender genderSelection = Gender.male;
  String enumValue = 'male';

  @override
  void initState() {
    super.initState();
    _db = AppDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final entity = StudentInfosCompanion(
                  studentId: drift.Value(int.parse(_studentIdController.text)),
                  name: drift.Value(_studentNameController.text),
                  gender: drift.Value(enumValue));
              _db.insertStudent(entity).then(
                    (value) => ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        content: Text('New Student inserted: $value'),
                        actions: [
                          TextButton(
                              onPressed: () => ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner(),
                              child: const Text('Close'))
                        ],
                      ),
                    ),
                  );
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomTextFormField(
                    controller: _studentIdController,
                    txtLabel: 'Student Id',
                    type: TextInputType.number),
                const SizedBox(height: 16),
                CustomTextFormField(
                    controller: _studentNameController,
                    txtLabel: 'Student Name',
                    type: TextInputType.name),
                const SizedBox(height: 16),
                RadioListTile<Gender>(
                  title: const Text('male'),
                  value: Gender.male,
                  groupValue: genderSelection,
                  onChanged: (Gender? value) {
                    setState(() {
                      if (value != null) {
                        genderSelection = value;
                        enumValue = value.name;
                      }
                    });
                  },
                ),
                RadioListTile<Gender>(
                  title: const Text('female'),
                  value: Gender.female,
                  groupValue: genderSelection,
                  onChanged: (Gender? value) {
                    setState(() {
                      if (value != null) {
                        genderSelection = value;
                        enumValue = value.name;
                      }
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required String txtLabel,
    required TextInputType type,
  })  : _controller = controller,
        _txtLabel = txtLabel,
        _type = type;

  final TextEditingController _controller;
  final String _txtLabel;
  final TextInputType _type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: _type,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(_txtLabel),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$_txtLabel cannot be empty';
        }
        return null;
      },
    );
  }
}
