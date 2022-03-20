# ua_parser_js

UAParser from JavaScript

[![](https://img.shields.io/npm/v/ua-parser-js.svg)](https://www.npmjs.com/package/ua-parser-js)
[![](https://img.shields.io/npm/dw/ua-parser-js.svg)](https://www.npmjs.com/package/ua-parser-js)
[![](https://data.jsdelivr.com/v1/package/npm/ua_parser/badge)](https://www.jsdelivr.com/package/npm/ua_parser)

## Getting Started

Include [ua-parser-js](https://www.npmjs.com/package/ua-parser-js) at `/web/index.html`

```html
<!doctype html>
<html>
<head>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/ua-parser-js@1.0.2/dist/ua-parser.min.js"></script>
</head>
<body>
</body>
</html>
```


## Using HTML

```html
<!doctype html>
<html>
<head>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/ua-parser-js@1.0.2/dist/ua-parser.min.js"></script>
    <script type="text/javascript">
    let parser = new UAParser();
    let result = parser.getResult();
    var useCanvaskit = false;
    if(result.os.name == "Android" && result.browser.major >= 57) {
      useCanvaskit = true
    } else if(result.os.name == "iOS" && result.browser.major >= 11) {
      useCanvaskit = true
    }

    if(useCanvaskit) {
      window.flutterWebRenderer = "canvaskit";
    }

    console.log("canvaskit: " + useCanvaskit);
    console.log(result);
  </script>
</head>
<body>
</body>
</html>
```

## Using Dart


```dart
import 'package:ua_parser_js/ua_parser_js.dart';

String? defaultFontFamily() {
  String? fontFamily;

  var uaParser = UAParser();
  final result = uaParser.getResult();
  print("UAParser: ${result.jsObject()}");
  switch (uaParser.getOS().name) {
    case "iOS":
      fontFamily = "PingFang";
      break;
  }

  print("fontFamily: $fontFamily");
  return fontFamily;
}
```