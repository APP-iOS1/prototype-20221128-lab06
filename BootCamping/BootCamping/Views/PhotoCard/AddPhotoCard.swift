//
//  AddPhotoCard.swift
//  BootCamping
//
//  Created by Deokhun KIM on 2022/11/14.
//

import SwiftUI

struct AddPhotoCard: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var pickedImage: Image = Image(systemName: "photo").resizable()
    @State private var isPickerPresented: Bool = false
    @State private var title: String = ""
    @State private var story: String = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Button {
                        self.isPickerPresented.toggle()
                    } label: {
                        HStack {
                            Spacer()
                            pickedImage
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            Spacer()
                        }
                    }
                    .sheet(isPresented: $isPickerPresented) {
                        ImagePickerView(pickerImage: self.$pickedImage)
                    }
                    
                    TextField("제목을 입력해주세요", text: $title).padding(.all, 5.0)
                    DatePicker("날짜를 선택하세요", selection: $date).foregroundColor(Color.primary.opacity(0.25)).datePickerStyle(.automatic)
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                    }
                    ZStack(alignment: .leading) {
                        TextEditor(text: $story)
                            .cornerRadius(15)
                            .padding()
                        if story.isEmpty {
                            Text("이야기를 적어주세요")
                                .foregroundColor(Color.primary.opacity(0.25))
                                .padding(.leading, 5)
                                .padding(.vertical, 50.0)
                        }
                    }
                }
                
                Button {
                    addNewPhotoCard()
                } label: {
                    Text("추억 더하기")
                        .foregroundColor(Color(red: 0.285, green: 0.188, blue: 0.685))
                }
            }
        }
    }
    func addNewPhotoCard() {
        let newPhotoCard = PhotoCardData(title: "name", story: "story")
        
        PhotoCardList.placesList.append(newPhotoCard)
        
        dismiss()
    }
}

struct AddPhotoCard_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotoCard()
    }
}
