//
//  OptionContainer.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct OptionContainer: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ForEach(optionsMock){
                option in OptionListView(option: option)
            }
        }
    }
}

#Preview {
    OptionContainer()
}
