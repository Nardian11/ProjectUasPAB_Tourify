import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptionHelper {
  static final _key = encrypt.Key.fromLength(32);
  static final _iv = encrypt.IV.fromLength(16);
  static final _encrypter = encrypt.Encrypter(encrypt.AES(_key));

  static String encryptPassword(String text) {
    final encrypted = _encrypter.encrypt(text, iv: _iv);
    return encrypted.base64;
  }

  static String decryptPassword(String encryptedText) {
    final decrypted = _encrypter.decrypt(encrypt.Encrypted.fromBase64(encryptedText), iv: _iv);
    return decrypted;
  }
}