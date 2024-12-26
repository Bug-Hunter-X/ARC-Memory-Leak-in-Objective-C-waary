The solution involves carefully managing the lifecycle of the `someString` property. One approach is to use a `weak` property if the object doesn't need to retain its reference:

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *someString;
@end

@implementation MyClass
- (void)someMethod {
    self.someString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
}
@end
```

However, in cases where `someString` must be retained, ensure it's nilled out when no longer needed:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *someString;
@end

@implementation MyClass
- (void)someMethod {
    self.someString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
    self.someString = nil; // Release the string when done
}
@end
```

Another option is to use a block to manage its lifetime appropriately, particularly if the lifetime is tied to a specific task.  Or, in some cases, switching to `copy` instead of `strong` might be useful, if you need to ensure that you have a unique copy of the string.

Choosing the correct approach depends on the specific needs of your application; the key is to understand the implications of strong references and to manage their lifetimes effectively to avoid memory leaks.