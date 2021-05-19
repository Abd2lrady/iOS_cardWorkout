// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let _10C = ImageAsset(name: "10C")
  internal static let _10D = ImageAsset(name: "10D")
  internal static let _10H = ImageAsset(name: "10H")
  internal static let _10S = ImageAsset(name: "10S")
  internal static let _2C = ImageAsset(name: "2C")
  internal static let _2D = ImageAsset(name: "2D")
  internal static let _2H = ImageAsset(name: "2H")
  internal static let _2S = ImageAsset(name: "2S")
  internal static let _3C = ImageAsset(name: "3C")
  internal static let _3D = ImageAsset(name: "3D")
  internal static let _3H = ImageAsset(name: "3H")
  internal static let _3S = ImageAsset(name: "3S")
  internal static let _4C = ImageAsset(name: "4C")
  internal static let _4D = ImageAsset(name: "4D")
  internal static let _4H = ImageAsset(name: "4H")
  internal static let _4S = ImageAsset(name: "4S")
  internal static let _5C = ImageAsset(name: "5C")
  internal static let _5D = ImageAsset(name: "5D")
  internal static let _5H = ImageAsset(name: "5H")
  internal static let _5S = ImageAsset(name: "5S")
  internal static let _6C = ImageAsset(name: "6C")
  internal static let _6D = ImageAsset(name: "6D")
  internal static let _6H = ImageAsset(name: "6H")
  internal static let _6S = ImageAsset(name: "6S")
  internal static let _7C = ImageAsset(name: "7C")
  internal static let _7D = ImageAsset(name: "7D")
  internal static let _7H = ImageAsset(name: "7H")
  internal static let _7S = ImageAsset(name: "7S")
  internal static let _8C = ImageAsset(name: "8C")
  internal static let _8D = ImageAsset(name: "8D")
  internal static let _8H = ImageAsset(name: "8H")
  internal static let _8S = ImageAsset(name: "8S")
  internal static let _9C = ImageAsset(name: "9C")
  internal static let _9D = ImageAsset(name: "9D")
  internal static let _9H = ImageAsset(name: "9H")
  internal static let _9S = ImageAsset(name: "9S")
  internal static let ac = ImageAsset(name: "AC")
  internal static let ad = ImageAsset(name: "AD")
  internal static let ah = ImageAsset(name: "AH")
  internal static let `as` = ImageAsset(name: "AS")
  internal static let jc = ImageAsset(name: "JC")
  internal static let jd = ImageAsset(name: "JD")
  internal static let jh = ImageAsset(name: "JH")
  internal static let js = ImageAsset(name: "JS")
  internal static let kc = ImageAsset(name: "KC")
  internal static let kd = ImageAsset(name: "KD")
  internal static let kh = ImageAsset(name: "KH")
  internal static let ks = ImageAsset(name: "KS")
  internal static let qc = ImageAsset(name: "QC")
  internal static let qd = ImageAsset(name: "QD")
  internal static let qh = ImageAsset(name: "QH")
  internal static let qs = ImageAsset(name: "QS")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
