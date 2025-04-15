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

### 🛍️ Product Details Screen

- Displays detailed information about the selected product.
- Shows product image, name, price, and description.
- May include additional information like rating, availability, or category (optional).
- Data is passed from the Home Screen or fetched based on product ID .


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


<img src="https://github.com/user-attachments/assets/dbc36b26-dbdd-407f-81c6-7687c1f53ee2" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/e8f227db-f631-4f29-a97c-8147646c0c1d" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/e0ba9f49-2c9a-470b-95e0-24973d54f2b2" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/6309fc46-cfca-4b8b-8485-6e12a29f4b56" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/1d4f29e5-db4f-4539-98f3-bfbc6b3a7199" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/754742eb-15ff-41ed-912b-3b4b8af0a1d9" width="300" />




