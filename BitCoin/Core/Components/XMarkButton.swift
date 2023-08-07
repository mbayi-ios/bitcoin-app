//
//  XMarkButton.swift
//  BitCoin
//
//  Created by Ambrose Mbayi on 06/08/2023.
//

import SwiftUI

struct XMarkButton: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button(action: {
           dismiss()
        }, label: {
            Image(systemName: "xmark")
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
