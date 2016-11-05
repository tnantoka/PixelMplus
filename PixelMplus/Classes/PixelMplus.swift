//
//  PixelMplus.swift
//  PixelMplus
//
//  Created by Tatsuya Tobioka on 11/5/16.
//  Copyright © 2016 tnantoka. All rights reserved.
//

import Foundation

enum Size: Int {
    case px10 = 10
    case px12 = 12
}

enum Weight: String {
    case regular = "Regular"
    case bold = "Bold"
}

class Font {
    var name: String
    
    static var bundle: Bundle = {
        let bundle = Bundle(for: Font.self)
        let path = bundle.path(forResource: "PixelMplus", ofType: "bundle")!
        return Bundle(path: path)!
    }()
    
    init(weight: Weight, size: Size) {
        name = "PixelMplus\(size.rawValue)-\(weight.rawValue)"
        load()
    }
    
    func load() {
        guard UIFont.fontNames(forFamilyName: name).isEmpty else { return }
        
        let url = Font.bundle.url(forResource: name, withExtension: "ttf")!
        let data = try! Data(contentsOf: url)
        let provider = CGDataProvider(data: data as CFData)!
        let font = CGFont(provider)
        
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
        
        guard error != nil else { return }
        let errorDescription = CFErrorCopyDescription(error!.takeRetainedValue())
        print(errorDescription as! String)
    }
}

public struct PixelMplus {
    public static var regular10: String = { Font(weight: .regular, size: .px10).name }()
    public static var bold10: String = { Font(weight: .bold, size: .px10).name }()
    
    public static var regular12: String = { Font(weight: .regular, size: .px12).name }()
    public static var bold12: String = { Font(weight: .bold, size: .px12).name }()
}
