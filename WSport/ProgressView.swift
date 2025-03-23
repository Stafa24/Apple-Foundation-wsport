//
//  ProgressView.swift
//  WSport
//
//  Created by Apprenant 56 on 18/03/2025.
//

import SwiftUI

struct ProgressView: View {
    @State var progress : Double = 0.33
    var width : Double = 300
    var height : Double = 12
    var cRadius : Double = 10
    var body: some View {
        VStack(alignment: .leading, spacing: 7){
            HStack{
                Text("\(Int(progress*100))%").bold().font(.callout)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.violetfoncé, .violet]), startPoint: .leading, endPoint: .trailing))
                Spacer()
                Group{
                    Image(systemName: "trophy")
                    Text("Niveau 2")
                }
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            .frame(width: width)
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: cRadius)
                    .frame(width: width, height: height)
                    .foregroundStyle(.bProgress)
                RoundedRectangle(cornerRadius: cRadius)
                    .frame(width: progress*width, height: height)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.violetfoncé, .violet, .rose]), startPoint: .leading, endPoint: .trailing))
            }
        }
        .padding()
        .background(.white, in: .rect(cornerRadius: 16))
        .shadow(color: .black.opacity(0.1), radius: 10)
    }
}

#Preview {
    ProgressView()
}
