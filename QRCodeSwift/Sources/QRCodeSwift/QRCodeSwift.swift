import UIKit
import CoreImage.CIFilterBuiltins

public struct QRCodeGen {
    private let message: String
    
    public init(message: String) {
        self.message = message
    }
    
    public func generateQRCode() -> UIImage {
        if let messageData = message.data(using: .utf8) {
            let filter = CIFilter.qrCodeGenerator()
            filter.message = messageData
            let context = CIContext()
            if let outputImage = filter.outputImage {
                if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
                    return UIImage(cgImage: cgImage)
                }
            }
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}
