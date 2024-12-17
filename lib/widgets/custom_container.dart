import 'package:flutter/material.dart';

// حاوية مخصصة قابلة لإعادة الاستخدام
class CustomContainer extends StatelessWidget {
  final Widget title; // العنوان
  final List<Widget> children; // الحقول والأزرار

  const CustomContainer({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50, // لون الحاوية
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ), // الزوايا الدائرية
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 3), // تأثير الظل
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title, // عنصر العنوان
          const SizedBox(height: 12), // تباعد بين العنوان والمحتويات
          ...children, // عرض العناصر المرسلة للحاوية
        ],
      ),
    );
  }
}
