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
  final _formKey = GlobalKey<FormState>();
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
            onPressed: () => addStudent(),
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: _studentIdController,
                    txtLabel: 'Student Id',
                    type: TextInputType.number,
                    validatorType: 'id',
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _studentNameController,
                    txtLabel: 'Student Name',
                    type: TextInputType.name,
                    validatorType: 'text',
                  ),
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
      ),
    );
  }

  void addStudent() {
    final isValid = _formKey.currentState?.validate();
    Text msg = const Text('Cannot be processed');
    if (isValid != null && isValid) {
      final entity = StudentInfosCompanion(
          studentId: drift.Value(_studentIdController.text),
          name: drift.Value(_studentNameController.text),
          gender: drift.Value(enumValue));
      _db.insertStudent(entity).then(
        (value) {
          if (value < 0) {
            msg = const Text('Student Id is already in use',
                style: TextStyle(color: Colors.red));
          } else {
            msg = const Text('New Student inserted!');
          }
          return ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              actions: [
                TextButton(
                  onPressed: () =>
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                  child: const Text('Close'),
                )
              ],
              content: msg,
            ),
          );
        },
      );
    }
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required String txtLabel,
    required TextInputType type,
    required String validatorType,
  })  : _controller = controller,
        _txtLabel = txtLabel,
        _type = type,
        _validatorType = validatorType;

  final TextEditingController _controller;
  final String _txtLabel;
  final TextInputType _type;
  final String _validatorType;

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
        switch (_validatorType) {
          case 'text':
            if (value == null || value.isEmpty) {
              return '$_txtLabel cannot be empty';
            }
            return null;
          case 'id':
            if (value == null || value.isEmpty) {
              return '$_txtLabel cannot be empty';
            }
            final number = num.tryParse(value);

            if (number.toString().length != 8) {
              return 'Studnet Id is 8 digit value only, cannot be start with 0';
            }

            if (number == null) {
              return 'Student Id is only valid number value';
            }
            return null;
        }
        return null;
      },
    );
  }
}
