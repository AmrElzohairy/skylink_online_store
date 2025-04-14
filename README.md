# 📱 My Flutter App

This app demonstrates basic authentication and product listing features using clean architecture principles.

---

## 🔐 Features Implementation

### **Login Screen**
- Email and password fields with input validation.
- Local storage of login information using `SharedPreferences`.
- Form validation with error messages.

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
Structured into three main layers:
