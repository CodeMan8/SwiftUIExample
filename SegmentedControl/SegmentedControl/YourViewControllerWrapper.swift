//
//  YourViewControllerWrapper.swift
//  SegmentedControl
//
//  Created by Bartu akman on 1.08.2019.
//  Copyright © 2019 Bartu akman. All rights reserved.
//

import SwiftUI

struct YourViewControllerWrapper: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: SignInVC, context: UIViewControllerRepresentableContext<YourViewControllerWrapper>) {
        
    }
    
    
    
    
    typealias UIViewControllerType = SignInVC
    
 
 
    func makeUIViewController(context: UIViewControllerRepresentableContext<YourViewControllerWrapper>) -> SignInVC {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: "1") as! SignInVC
    }
    
    
}

struct YourViewControllerWrapper_Preview: PreviewProvider {
    static var previews: some View {
        
        YourViewControllerWrapper()
    }
}
