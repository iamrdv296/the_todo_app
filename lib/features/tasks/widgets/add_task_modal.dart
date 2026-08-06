import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  const AddTaskModal({super.key, required this.onAddTask});

  final void Function(String) onAddTask;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    
    return AlertDialog(
      title: const Text('New Task'),
      content: TextField(
        controller: controller,
        autofocus: true,
        onSubmitted: (_) => _submit(controller, context),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => _submit(controller, context),
          child: const Text('Add'),
        ),
      ],
    );
  }

  void _submit(TextEditingController controller, BuildContext context) {
    final taskTitle = controller.text.trim();
  
    if (taskTitle.isEmpty) return;
  
    onAddTask(taskTitle);
    Navigator.pop(context);
  }
}