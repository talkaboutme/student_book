import 'package:flutter/material.dart';

import '../widgets/gender_select.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final TextEditingController _studentNameController = TextEditingController();
  final TextEditingController _studentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
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
                const GenderSelection(),
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
