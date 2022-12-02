//
//  ScreenShot+Extension.swift
//  bookApp
//
//  Created by 10lift on 2.12.2022.
//

import Foundation
import SwiftUI

extension View {
    func snapshot() -> NSImage? {
        let controller = NSHostingController(rootView: self)
        let targetSize = controller.view.intrinsicContentSize
        let contentRect = NSRect(origin: .zero, size: targetSize)
        
        let window = NSWindow(
            contentRect: contentRect,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )
        window.contentView = controller.view
        
        guard
            let bitmapRep = controller.view.bitmapImageRepForCachingDisplay(in: contentRect)
        else { return nil }
        
        controller.view.cacheDisplay(in: contentRect, to: bitmapRep)
        let image = NSImage(size: bitmapRep.size)
        image.addRepresentation(bitmapRep)
        
        return image
    }
}

//func saveImage(image: UIImage) -> Bool {
//    guard let data = pngpres(image, 1) ?? UIImagePNGRepresentation(image) else {
//        return false
//    }
//    guard let directory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) as NSURL else {
//        return false
//    }
//    do {
//        try data.write(to: directory.appendingPathComponent("fileName.png")!)
//        return true
//    } catch {
//        print(error.localizedDescription)
//        return false
//    }
//}
