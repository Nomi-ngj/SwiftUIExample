# SwiftUI User Listing and Detail Screen Example
This is a simple SwiftUI example that demonstrates a user listing and detail screen, including the ability to search for users and fetch user data from an API. It showcases the basic usage of SwiftUI views, navigation, data binding, search functionality, and network requests.

# Features
User Listing: The app displays a list of users, where each user's name is shown as a list item.
User Details: Tapping on a user in the list navigates to a detail screen that displays the user's name and email.
User Search: The app includes a search bar that allows users to search for specific users by name. The search functionality filters the user list in real-time as the user types in the search bar.
Pagination: Users can fetch more users from an API with pagination support. The app supports loading additional users as the user scrolls to the bottom of the user list.

# Screenshots
<table>
    <th>Dark Mode</th>
    <th>Light Mode</th>
  </thead>
  <tbody>
    <tr>
      <td>
        <img src="https://github.com/Nomi-ngj/SwiftUIExample/assets/17121200/02c83ece-8842-4c7b-99e6-22a705fb7f72">
      </td>
      <td>
        <img src="https://github.com/Nomi-ngj/SwiftUIExample/assets/17121200/42e7e8f3-20ba-4302-bf3d-3d403eda6e1a">
      </td>
    </tr>
  </tbody>
</table>

# Requirements
Xcode 12.0 or later
iOS 14.0 or later

# Installation
Clone or download the repository.
Open the project in Xcode.
Build and run the app on the iOS Simulator or a physical device.

# Usage
The app starts with the user listing screen, where users are displayed in a list. Tapping on a user navigates to the user details screen, showing the user's name and email.

To search for a user, simply enter the user's name in the search bar at the top of the user listing screen. The user list will be filtered in real-time based on the search query.

To fetch more users from the API, scroll to the bottom of the user list. The app will automatically load additional users using pagination.

You can customize the user data by modifying the users array in the ContentView. Additionally, you can modify the API URL for fetching users by pagination. The current URL used is:

```swift
https://reqres.in/api/users?page=1
```

Feel free to add or remove users as needed or update the API URL to fetch users from a different source.

# Acknowledgements
This example is inspired by SwiftUI tutorials and documentation.
Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

# Author
Nouman Gul Junejo

Contact
For questions or inquiries, please contact me at Noumanguljunejo@gmail.com.

Feel free to customize and add any additional information as needed.
