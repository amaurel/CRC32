import 'dart:async';
import 'package:unittest/unittest.dart';
import 'package:crc32/crc32.dart';

void main() {

  test('basic', () {
    expect(CRC32.compute("testing out".codeUnits), 316532775);
  });
  
  test('stream', () {
    Stream<List<int>> stream = new Stream.fromIterable(["testing out".codeUnits]);
    return CRC32.computeStream(stream).then((crc)=>expect(crc, 316532775));
  });
}