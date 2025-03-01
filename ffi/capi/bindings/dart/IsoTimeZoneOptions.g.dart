// generated by diplomat-tool

// https://github.com/dart-lang/sdk/issues/53946
// ignore_for_file: non_native_function_type_argument_to_pointer

part of 'lib.g.dart';

final class _IsoTimeZoneOptionsFfi extends ffi.Struct {
  @ffi.Int32()
  external int format;
  @ffi.Int32()
  external int minutes;
  @ffi.Int32()
  external int seconds;
}

final class IsoTimeZoneOptions {
  IsoTimeZoneFormat format;
  IsoTimeZoneMinuteDisplay minutes;
  IsoTimeZoneSecondDisplay seconds;

  IsoTimeZoneOptions({required this.format, required this.minutes, required this.seconds});

  // ignore: unused_element
  IsoTimeZoneOptions._(_IsoTimeZoneOptionsFfi underlying) :
    format = IsoTimeZoneFormat.values[underlying.format],
    minutes = IsoTimeZoneMinuteDisplay.values[underlying.minutes],
    seconds = IsoTimeZoneSecondDisplay.values[underlying.seconds];

  // ignore: unused_element
  _IsoTimeZoneOptionsFfi _pointer(ffi.Allocator temp) {
    final pointer = temp<_IsoTimeZoneOptionsFfi>();
    pointer.ref.format = format.index;
    pointer.ref.minutes = minutes.index;
    pointer.ref.seconds = seconds.index;
    return pointer.ref;
  }

  @override
  bool operator ==(Object other) =>
      other is IsoTimeZoneOptions &&
      other.format == this.format &&
      other.minutes == this.minutes &&
      other.seconds == this.seconds;

  @override
  int get hashCode => Object.hashAll([
        this.format,
        this.minutes,
        this.seconds,
      ]);
}
