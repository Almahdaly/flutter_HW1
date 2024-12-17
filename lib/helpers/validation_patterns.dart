class ValidationPatterns {
  // 1. نمط التحقق من البريد الإلكتروني
  static final RegExp emailPattern = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  // 2. نمط التحقق من النصوص (أحرف فقط)
  static final RegExp textPattern = RegExp(
    r'^[a-zA-Z\u0600-\u06FF\s]+$', // يدعم النصوص الإنجليزية والعربية
  );

  // 3. نمط التحقق من أرقام الهاتف
  static final RegExp phonePattern = RegExp(
    r'^(77|78|71|73|70)\d{7}$', // يبدأ بـ 77، 78، 71، 73، 70 ثم 7 أرقام
  );
}
