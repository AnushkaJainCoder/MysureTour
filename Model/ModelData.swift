//
//  ModelData.swift
//  Project
//
//  Created by apple on 09/06/24.
//

import Foundation
import SwiftUI

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("not found such file")
    }
    
    do{
        data = try Data(contentsOf: file)
    }
    catch{
        fatalError("could not load content")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("cannot decodebale")
    }
}

