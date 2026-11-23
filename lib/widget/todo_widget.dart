import 'package:flutter/material.dart';
import '../model/todos.dart';

class TodoWidget extends StatelessWidget {
  final Todos todo;

  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          Icon(
            todo.completed
                ? Icons.check_circle_outline
                : Icons.radio_button_unchecked,
            size: 18,
            color: todo.completed
                ? const Color(0xFF999999)
                : const Color(0xFFDDDDDD),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              todo.title,
              style: TextStyle(
                fontSize: 14,
                color: todo.completed
                    ? const Color(0xFFBBBBBB)
                    : const Color(0xFF333333),
                decoration: todo.completed
                    ? TextDecoration.lineThrough
                    : null,
                decorationColor: const Color(0xFFCCCCCC),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
