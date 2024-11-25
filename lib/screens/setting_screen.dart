import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String name = "";
  String shortBio = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                width: 140,
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'assets/images/여권사진.jpg', // 이미지 경로 설정
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(
                    onTap: _editName,
                    title: "이름 변경",
                    trailingText: name,
                  ),
                  _buildListTile(
                    onTap: _editBio,
                    title: "한줄소개 변경",
                    trailingText: shortBio,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required String title,
    required String trailingText,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailingText,
            style: const TextStyle(color: Colors.grey),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: onTap,
    );
  }

  void _editName() {
    TextEditingController _nameController = TextEditingController(text: name);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("이름 변경"),
          content: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              hintText: "새 이름 입력",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("취소", style: TextStyle(color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  name = _nameController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text("저장", style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }

  void _editBio() {
    TextEditingController _bioController = TextEditingController(text: shortBio);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("한줄소개 변경"),
          content: TextField(
            controller: _bioController,
            decoration: const InputDecoration(
              hintText: "새 소개 입력",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("취소", style: TextStyle(color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  shortBio = _bioController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text("저장", style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }
}
