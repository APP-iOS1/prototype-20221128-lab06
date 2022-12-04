//
//  WritePhotoView.swift
//  BootCamping
//
//  Created by 차소민 on 2022/12/02.
//

import SwiftUI
import PhotosUI

struct WritePhotoView: View {
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    @State private var location: String = ""
    @State private var name: String = ""
    @State private var userName: String = "_chasomin"
    @State private var userImage: String = "_chasomin"
    @State private var title: String = ""
    @State private var content: String = ""

    var body: some View {
        VStack {
            ZStack {
                PhotosPicker(
                    selection: $selectedItem,
                    matching: .images,
                    photoLibrary: .shared()
                ) {
                    Text("Select a photo")
                }
                
                if let selectedImageData,
                   let uiImage = UIImage(data: selectedImageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                    //                    .scaledToFit()
                        .frame(width: 250, height: 250)
                }
                
                
            }
            
            // 장소이름, 위치, 이미지, 제목, 글
            TextField("제목을 적어주세요", text: $title)
            TextEditor(text: $content)
            if title.isEmpty {
                Text("이야기를 적어주세요")
                    .foregroundColor(Color.primary.opacity(0.25))
                    .padding(.leading, 5)
                    .padding(.vertical, 50.0)
            }
            }.onChange(of: selectedItem) { newItem in
                Task {
                    if let data = try? await newItem?.loadTransferable(type: Data.self) {
                        selectedImageData = data
                    }
                }
        }
    }
}

struct WritePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        WritePhotoView()
    }
}
