abstract base class BaseRepository<TLocal, TRemote> {
  BaseRepository({
    required this.local,
    required this.remote,
  });
  final TLocal local;
  final TRemote remote;
}

abstract base class BaseRemoteRepository<TRemote> {
  BaseRemoteRepository({
    required this.remote,
  });
  final TRemote remote;
}

abstract base class BaseLocalRepository<TLocal> {
  BaseLocalRepository({
    required this.local,
  });
  final TLocal local;
}
