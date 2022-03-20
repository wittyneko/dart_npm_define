import 'package:js/js.dart';

@JS()
class UAParser {
  external factory UAParser();

  external Browser getBrowser();

  external CPU getCPU();

  external Device getDevice();

  external Engine getEngine();

  external OS getOS();

  external Result getResult();

  external String getUA();

  external UAParser setUA(String ua);
}

@JS()
@anonymous
class Browser {
  external String get name;

  external String get version;

  external String get major;
}

@JS()
@anonymous
class CPU {
  external String get architecture;
}

@JS()
@anonymous
class Device {
  external String get vendor;

  external String get model;

  external String get type;
}

@JS()
@anonymous
class Engine {
  external String get name;

  external String get version;
}

@JS()
@anonymous
class OS {
  external String get name;

  external String get version;
}

@JS()
@anonymous
class Result {
  external String get ua;

  external Browser get browser;

  external Engine get engine;

  external OS get os;

  external Device get device;

  external CPU get cpu;
}

extension UAParserBrowserExt on Browser {
  Map jsObject() => {"name": name, "version": version, "major": major};
}

extension UAParserCPUExt on CPU {
  Map jsObject() => {"architecture": architecture};
}

extension UAParserDeviceExt on Device {
  Map jsObject() => {"vendor": vendor, "model": model, "type": type};
}

extension UAParserEngineExt on Engine {
  Map jsObject() => {"name": name, "version": version};
}

extension UAParserOSExt on OS {
  Map jsObject() => {"name": name, "version": version};
}

extension UAParserResultExt on Result {
  Map jsObject() => {
        "ua": ua,
        "browser": browser.jsObject(),
        "engine": engine.jsObject(),
        "os": os.jsObject(),
        "device": device.jsObject(),
        "cpu": cpu.jsObject()
      };
}
