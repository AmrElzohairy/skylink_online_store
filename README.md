# 📱SkyLink-online-Store

This app demonstrates basic authentication and product listing features using clean architecture principles.

---

## 🔐 Features Implementation

### **📝 Onboarding Screen**

- Introduces users to the app with a series of informative screens.
- Includes a welcome message, features highlights, and app benefits.
- Option to skip or proceed with the onboarding process.
- Can include animated visuals or illustrations for user engagement.
- Ideal for first-time users to understand the app’s functionality and set expectations.
  

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

### **🛍️ Product Details Screen**

- Displays detailed information about the selected product.
- Shows product image, name, price, and description.
- May include additional information like rating, availability, or category (optional).
- Data is passed from the Home Screen or fetched based on product ID.

### **💬 Chat Screen**

- Displays a list of conversations with users or support.
- Tapping a conversation opens a detailed chat view.
- Supports sending and receiving messages in real time or mock data.
- Messages aligned by sender (user vs. other).
- May support emojis, images, or voice notes (optional).

### **🔔 Notification Screen**

- Shows a list of user notifications like order updates, offers, or app alerts.
- Each item includes a title, short message, and timestamp.
- Read/unread status with visual indicators.
- Tapping a notification may navigate to related content.

### **📦 Order Screen**

- Lists all current user orders.
- Shows order ID, status, total price, and summary of items.
- Each order can be tapped to view more detailed info or tracking.
- Status updates visually represented (e.g., pending, shipped, delivered).

### **👤 Profile Screen**

- Displays user’s personal information such as name, email, and profile image.
- Provides quick access to Edit Profile, Settings, or Logout.
- May include order history or saved preferences.

### **❤️ Wishlist Screen**

- Displays products the user has saved or liked.
- Shows product image, name, and price.
- Option to add item to cart or remove from wishlist.
- Useful for personalized shopping or remembering favorite items.

### **🧰 Filters Screen**

- Allows users to filter products by category, price, brand, rating, etc.
- Includes sliders, checkboxes, or dropdowns for selection.
- Can be applied to refine product list in Home or Search screen.
- Reset or Apply buttons to control filter behavior.

### **📞 Voice Call Screen**

- UI for an ongoing or incoming voice call.
- Includes timer, mute/unmute, end call, and speaker toggle options.
- Clean and minimal layout focused on the call experience.
- Could be peer-to-peer or support-based.

### **✏️ Edit Profile Screen**

- Allows users to update personal information like name, email, or profile picture.
- Includes validation for each field and save functionality.
- May support uploading a new profile image.
- Changes reflected immediately in the Profile Screen.

### **🚚 Order Tracking Screen**

- Visual progress of current order status (e.g., confirmed → shipped → out for delivery → delivered).
- Includes estimated delivery time and tracking ID.
- May show courier info or live map (optional).
- Accessible from Order or Order History screens.

### **🕘 Order History Screen**

- Displays all completed or cancelled past orders.
- Includes product details, total spent, and order date.
- Can be filtered by date or status.
- Useful for reordering or checking old receipts.



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
<img src="https://github.com/user-attachments/assets/3df07d7f-3ea0-4e1a-abde-0d327d3ee9bc" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/48c2caed-ce64-4071-ab9d-db31f171737d" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/eeb03b64-76ad-467c-b0d4-99fff7e04c86" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/309533f8-b874-47e4-8fad-d9110189289c" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/2e5a8db0-fca3-472d-b34d-ed6d376e1232" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/d05c10db-2924-41b1-aefb-8e2f3ff423b1" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/74934369-1e50-45ca-81f3-b7aed9f5e54f" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/df7058a6-00c8-465e-a766-b391c5e84239" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/806a7b2d-bb6c-420f-8910-b779fddc84da" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/2f08e8de-ba92-497c-a3de-6368a4eb134a" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/120884ab-1dbd-409d-9f24-6871b41f4325" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/877c2d2c-e068-4ac7-9ab0-c9b0e98f786d" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/0f7c1f36-1cbb-462f-921c-f5bb3b94246b" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/499fadc5-f29a-418c-9093-1d07f07958aa" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/975c2706-2ae3-48e1-a442-2b30b47ed471" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/2dd08774-e07b-4d5a-9afd-0f880f334c56" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/b9199820-e727-412d-a17d-fce592894f97" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/ff36574e-777a-4e8a-897e-8b804424b33c" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/56ea810e-4ad2-4683-96a9-e4405f1b837a" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/dda56d34-e561-4e3a-a0cb-3f4f0b256105" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/8fe712c5-8ddd-4727-be45-7e7e0edaf29f" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/879dc6bc-ca22-45df-b046-aaec8a3ec84f" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/610e8bd2-104b-456d-9eb9-a42706c82544" width="300" style="margin-right: 10px;" />
<img src="https://github.com/user-attachments/assets/aa40b1b0-7735-4a72-b9b8-1b9b12cedf22" width="300" style="margin-right: 10px;" />



