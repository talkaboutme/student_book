import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  Gender? _character = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Gender>(
          title: const Text('male'),
          value: Gender.male,
          groupValue: _character,
          onChanged: (Gender? value) {
            setState(() {
              if (value != null) {
                _character = value;
                String enumValue = value.name;
              }
            });
          },
        ),
        RadioListTile<Gender>(
          title: const Text('female'),
          value: Gender.female,
          groupValue: _character,
          onChanged: (Gender? value) {
            setState(() {
              if (value != null) {
                _character = value;
                String enumValue = value.name;
              }
            });
          },
        ),
      ],
    );
  }
}
