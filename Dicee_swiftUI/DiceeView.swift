//
//  DiceeView.swift
//  Dicee_swiftUI
//
//  Created by Omar Bakry on 20/11/2021.
//

import SwiftUI


struct DiceeView: View {
    let number :Int
    var body: some View {
        Image("dice\(number)").resizable().aspectRatio(1, contentMode: .fit).padding()
    }
}


struct DiceeView_Previews: PreviewProvider {
    static var previews: some View {
        DiceeView(number: 1).previewLayout(.sizeThatFits)
    }
}
