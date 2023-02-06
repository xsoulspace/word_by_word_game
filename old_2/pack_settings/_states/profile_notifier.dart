part of pack_settings;

class ProfileNotifier extends ChangeNotifier implements ProfileNotifierI {
  ProfileNotifier({
    required this.profileService,
  });
  final ProfileServiceI profileService;
  PlayerProfileModel _profile = PlayerProfileModel.empty;

  @override
  PlayerProfileModel get profile => _profile;

  @override
  set profile(final PlayerProfileModel profile) {
    _profile = profile;
    notifyListeners();
  }
}
