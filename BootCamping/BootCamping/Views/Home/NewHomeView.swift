//
//  NewHomeView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/12/01.
//

import SwiftUI

enum tapInfo : String, CaseIterable {
    case top = "인기"
    case follow = "팔로잉"
}

struct NewHomeView: View {
    @State private var selectedPicker: tapInfo = .top
    @Namespace private var animation
    var body: some View {
        VStack{
            animate()
                        testView(tests: selectedPicker)
        }
        
    }
    
    @State private var isSheeting: Bool = false
    @ViewBuilder
    private func animate() -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text("부트캠핑")
                    .font(.title.bold())
                .padding(.leading)
                Spacer()
                Button {
                    isSheeting.toggle()
                } label: {
                    Image(systemName: "person.fill")
                        .foregroundColor(.accentColor)
                        .font(.title)
                }
                .padding(.trailing, 18)
                .sheet(isPresented: $isSheeting) {
                    MyPageView()
                        .presentationDetents([.large])
                        .presentationDragIndicator(.visible)
                }
            }
//            .padding(.bottom, -10)
            HStack {
                ForEach(tapInfo.allCases, id: \.self) { item in
                    VStack {
                        Text(item.rawValue)
                            .font(.title3)
                            .frame(maxWidth: .infinity/4, minHeight: 50)
                            .foregroundColor(selectedPicker == item ? .black : .gray)
                        
                        if selectedPicker == item {
                            Capsule()
                                .foregroundColor(.black)
                                .frame(height: 3)
                                .matchedGeometryEffect(id: "info", in: animation)
                        }
                        
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedPicker = item
                        }
                    }
                }
            }
        }
    }
}
struct testView : View {
    
    var tests : tapInfo
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            switch tests {
            case .top:
                HomePhotoCards()
            case .follow:
                FollowPhotoView()
           
                                    }
                                }
                            }

            }
 
struct NewHomeView_Previews: PreviewProvider {
    static var previews: some View {
            NewHomeView()
        
    }
}
