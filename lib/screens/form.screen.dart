import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _descriptionController = TextEditingController();

  String? _selectedClub;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Form Submission'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Nama Depan: ${_firstNameController.text}'),
                  Text('Nama Belakang: ${_lastNameController.text}'),
                  Text('Umur: ${_ageController.text}'),
                  Text('Club Favorit: $_selectedClub'),
                  Text('Email: ${_emailController.text}'),
                  Text('No Telepon: ${_phoneController.text}'),
                  Text('Deskripsi: ${_descriptionController.text}'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(labelText: 'Nama Depan'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama depan wajib diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(labelText: 'Nama Belakang'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama belakang wajib diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _ageController,
                  decoration: InputDecoration(labelText: 'Umur'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Umur wajib diisi';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Umur harus berupa angka';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _selectedClub,
                  decoration: InputDecoration(labelText: 'Club Favorit'),
                  items: [
                    DropdownMenuItem(
                      value: 'Real Madrid',
                      child: Text('Real Madrid'),
                    ),
                    DropdownMenuItem(
                      value: 'BarcaCul',
                      child: Text('BarcaCul'),
                    ),
                    DropdownMenuItem(
                      value: 'Manchester Is R1d',
                      child: Text('Manchester Is R1d'),
                    ),
                    DropdownMenuItem(
                      value: 'Manchester Is Lostrekk 5x',
                      child: Text('Manchester Is Lostrekk 5x'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedClub = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih club favorit';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email wajib diisi';
                    }
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Format email tidak valid';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(labelText: 'No Telepon'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'No telepon wajib diisi';
                    }
                    if (!RegExp(r'^\d+$').hasMatch(value)) {
                      return 'No telepon harus berupa angka';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(labelText: 'Deskripsi'),
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _handleSubmit,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
