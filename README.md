# QRCodeSwift

## `interpolation` modifier of SwiftUI

> [Generating and scaling up a QR code](https://www.hackingwithswift.com/books/ios-swiftui/generating-and-scaling-up-a-qr-code)

*Core Image* lets us generate a QR code from any input string, and do so extremely quickly. However, there’s a problem: the image it generates is very small because it’s only as big as the pixels required to show its data.

It’s trivial to make the QR code larger, but to make it look good we also need to adjust SwiftUI's image `interpolation`.

Line art like QR codes and bar codes is a great candidate for disabling image interpolation.

```swift
Image(uiImage: your_ui_image)
    .interpolation(.none)
```

Now the QR code will be rendered nice and sharp, because SwiftUI will just **repeat pixels rather than try to blend them neatly**.
