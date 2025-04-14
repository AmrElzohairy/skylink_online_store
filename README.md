# 📱Rika-Store

This app demonstrates basic authentication and product listing features using clean architecture principles.

---

## 🔐 Features Implementation

### **Login Screen**

- Email and password fields with input validation.
- Local storage of login information using `SharedPreferences`.
- Form validation with error messages.

### **Sign Up Screen**

- Form for creating a new account.
- Includes fields for name, email, password, and password confirmation.
- Input validation and error handling.
- Connected to authentication logic.

### **Authentication Logic**

- Completed full authentication flow (Login + Sign Up).
- Managed authentication states using `Cubit`.
- Handled success, error, and loading states.
- Stored user session info locally using `SharedPreferences`.

### **Home Screen (Products)**

- Displays a list of products with name, image, and price.
- Tapping a product shows more details (can be extended).
- Product data currently mocked or hardcoded for UI testing.

---

## 🛠️ Technical Requirements Implementation

### **State Management**

- Used **Bloc pattern** with `Cubit` for managing UI state.
- Separate Cubits for Authentication and Product modules.

### **API Requests**

- Using **Dio** for network communication.
- Mocked API or local JSON currently used during development.

### **Local Storage**

- Implemented `SharedPreferences` to store user session info.

### **Responsive Design**

- Adaptive UI using MediaQuery and LayoutBuilder.
- Proper padding and spacing for multiple screen sizes.

### **Clean Architecture**

Structured into three main layers

### **Screen shots**


file:///home/amr-elzohairy/Downloads/Telegram%20Desktop/photo_2025-04-14_18-26-45.jpg

![photo_2025-04-14_18-24-01](https://github.com/user-attachments/assets/dbc36b26-dbdd-407f-81c6-7687c1f53ee2) 

![photo_2025-04-14_18-23-59](https://github.com/user-attachments/assets/e8f227db-f631-4f29-a97c-8147646c0c1d)

![photo_2025-04-14_18-23-57](https://github.com/user-attachments/assets/e0ba9f49-2c9a-470b-95e0-24973d54f2b2)

![photo_2025-04-14_18-23-56](https://github.com/user-attachments/assets/6309fc46-cfca-4b8b-8485-6e12a29f4b56)

![photo_2025-04-14_18-23-54](https://github.com/user-attachments/assets/1d4f29e5-db4f-4539-98f3-bfbc6b3a7199)
