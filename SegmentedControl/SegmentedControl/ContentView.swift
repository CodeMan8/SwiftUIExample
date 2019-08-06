//
//  ContentView.swift
//  SegmentedControl
//
//  Created by Bartu akman on 1.08.2019.
//  Copyright © 2019 Bartu akman. All rights reserved.
//

import SwiftUI

enum CoffeeSize:Int,CaseIterable,Identifiable,Hashable {
    
    var id: UUID {
        return UUID()
    }
    
    
    case small
    case medium
    case large
}
extension CoffeeSize {
    
    
    var name: String {
        
        switch (self) {
        case .small:
             return "Small"
        case .medium:
            return "Medium"
        case .large:
             return "Large"
        }
       
    }
}


struct ContentView : View {
    @State private var selectedCoffeeSize: CoffeeSize = .medium
    
    var body: some View {
        
        VStack{
          SegmentedControl(selection: $selectedCoffeeSize) {
            ForEach(CoffeeSize.allCases)  { coffesize in
                
                Text(coffesize.name).tag(coffesize)
                
            }

            
            }                .frame(height:150)

            .tapAction {
                if self.selectedCoffeeSize == .small {
                    self.selectedCoffeeSize = .medium
                }
        }
            YourViewControllerWrapper()

        }
 

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

