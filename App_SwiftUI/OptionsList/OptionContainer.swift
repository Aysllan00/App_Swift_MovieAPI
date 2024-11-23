//
//  OptionContainer.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/9/24.
//

import SwiftUI

struct OptionContainer: View {
    var options: [OptionType]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ForEach(options){
                option in OptionListView(option: option)
            }
        }
    }
}

#Preview {
    OptionContainer(options: optionsMock)
}
