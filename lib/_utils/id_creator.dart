part of utils;

class IdCreator {
  IdCreator._();

  static String create() => uuid.v1();
}
