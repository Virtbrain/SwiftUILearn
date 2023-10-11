//
//  ContentView.swift
//  SwiftUILearn
//
//  Created by Alexey Manankov on 21.09.2023.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    let image: Image
    
    init() {
        let uiImage = UIImage(named: "CaneCorso") ?? UIImage()
        let filteredUIImage = ContentView.applySepiaFilter(to: uiImage)
        image = Image(uiImage: filteredUIImage)
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .shadow(color: Color.gray, radius:20, x: 15, y: 15)
            .border(Color.black, width: 1)
            .padding()
    }
    
    static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
        guard let ciImage = CIImage(image: inputImage) else {
            return inputImage
        }
        
        let filter = CIFilter.sepiaTone()
        filter.inputImage = ciImage
        filter.intensity = 1.0
        
        //Get a CIContext
        let context = CIContext()
        
        //create a CGImage form CIImage
        guard let outputCIImage = filter.outputImage,
              let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
            return inputImage
        }
        
        //Create UIImage from the CGImage
        let outputUIImage = UIImage(cgImage: cgImage)
        
        return outputUIImage
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
