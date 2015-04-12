# JSONModel-RACExtensions

ReactiveCocoa support for widely used **JSONModel** library by Marin Todorov. It was designed to work with libraries for **AFNetworking** and their corresponding **RACExtensions**.

# Installation 

Install the library with CocoaPods.

```
pod 'JSONModel-RACExtensions'
```

Import the RACJSONModel.h file:

```
#import "RACJSONModel.h"
```

# Usage

The most important method in `RACJSONModel` is `parseSignalForObject:`, which will take a parameter of next types:
- `NSDictionary`
- `NSArray`
- `RACTuple`.

Method must be called on it's corresponding `JSONModel` class. If the model cannot parse the first level of keys (in case of `NSDictionary` or `RACTuple`) it will try to parse the contents of each key recursively (only first level).

Contact
======

Dal Rupnik

- [legoless](https://github.com/legoless) on **GitHub**
- [@thelegoless](https://twitter.com/thelegoless) on **Twitter**
- [legoless@arvystate.net](mailto:legoless@arvystate.net)

License
======

JSONModel-RACExtensions is available under the MIT license. See [LICENSE](https://github.com/Legoless/JSONModel-RACExtensions/blob/master/LICENSE) file for more information.
