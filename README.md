# daniel_engage

A new Flutter application.

## Generating assets

Any time you want to change the routes file in `lib -> app -> app.dart`, you can add your new routes
inside the `@StackedApp` routes array.

You may define it in the 2 following ways:

```dart
@StackedApp(
    routes: [
      MaterialRoute(page: StartupView, initial: true), // set initial for the first route the app opens
      MaterialRoute(page: OtherView), // normal routes will be generated here
      CupertinoRoute(page: CupertinoPage), // IOS Styled routes
    ],
    dependencies: [
      LazySingleton(classType: NavigationService),
      LazySingleton(classType: DialogService),
      LazySingleton(classType: BottomSheetService),
      LazySingleton(classType: SnackbarService),
    ],
)
```
