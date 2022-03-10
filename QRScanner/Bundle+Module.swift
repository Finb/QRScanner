//
//  Bundle+Module.swift
//  QRScanner
//
//  Created by woxtu on 2020/11/22.
//

import Foundation

#if !SWIFT_PACKAGE
extension Bundle {
    static var module: Bundle = {
        let bundle = Bundle(for: QRScannerView.self)
        
        let url = bundle.resourceURL!
        let b = Bundle(url: url.appendingPathComponent("QRScannerAssets.bundle"))
        return b!
    }()
}
#endif
