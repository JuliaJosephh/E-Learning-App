// app_content.dart

const List<Map<String, dynamic>> publishingToAppStoreContent = [
  {
    'title': 'Publishing to App Store',
    'content': '''
Publishing your Flutter application to the App Store involves several steps to ensure compliance with Apple’s guidelines and to provide a seamless user experience.

Key Steps for Publishing:

1. Prepare Your App:
   - Ensure your app meets Apple's App Store Review Guidelines.
   - Test your app thoroughly on real devices to catch any issues.

2. Set Up App Store Connec:
   - Create an App Store Connect account if you don't have one.
   - Add your app in App Store Connect, providing necessary information like the app's name, description, keywords, and screenshots.

3. Configure Your App:
   - Update the `Info.plist` file in your Flutter project with required metadata, including the app version, build number, and any required permissions.
   - Ensure that your app's icons and launch screens are correctly configured.

4. Build the iOS App:
   - Use the command `flutter build ios` to build your Flutter app for iOS.
   - Make sure to resolve any build issues and address warnings.

5. Archive and Upload:
   - Open your project in Xcode.
   - Select "Product" -> "Archive" to create an archive of your app.
   - Once archived, upload it to App Store Connect via the Xcode Organizer.

6. Submit for Review:
   - In App Store Connect, navigate to the app you created and submit your build for review.
   - Fill in the required information, such as App Privacy details and App Store screenshots.

7. App Review Process:
   - Your app will undergo a review process by Apple. This can take anywhere from a few hours to several days.
   - Monitor the review status in App Store Connect.

8. Release Your App:
   - Once approved, you can release your app immediately or schedule it for a future date.
   - Promote your app through various channels to attract users.

Remember to regularly update your app to fix bugs, add new features, and comply with the latest App Store requirements. Monitoring user feedback and analytics can help you improve the app experience over time.
''',
    'code': null,
    'url': "https://youtu.be/g0GNuoCOtaQ?si=X9PdsVTLAso2zjxRT"
  },
];
