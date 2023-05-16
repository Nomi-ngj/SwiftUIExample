//
//  View+DownloadImage.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import Foundation
import SwiftUI

extension View {
    
    func getImageFromURL(_ urlString: String, completion: @escaping (UIImage?) -> Void) {
        // Check if the image is already cached
        let imageCache = NSCache<NSString, UIImage>()
        if let cachedImage = imageCache.object(forKey: urlString as NSString) {
            completion(cachedImage)
            return
        }
        
        // If the image is not cached, download it from the URL
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let image = UIImage(data: data) {
                imageCache.setObject(image, forKey: urlString as NSString)
                completion(image)
            } else {
                completion(nil)
            }
        }
        
        task.resume()
    }
}
