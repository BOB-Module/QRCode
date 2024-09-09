import CoreImage
import CoreImage.CIFilterBuiltins

public struct QRCode {
    public let aValue: Int = 10
    
    public func generateQRCode() {
        let qrCodeGenerator = CIFilter.qrCodeGenerator()
    }
}
