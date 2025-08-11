enum Routes {
  splash(path: '/', name: 'splash'),
  home(path: '/home_page', name: 'home'),
  profile(path: '/profile_page', name: 'profile');

  const Routes({required this.path, required this.name});

  final String path;
  final String name;
}
