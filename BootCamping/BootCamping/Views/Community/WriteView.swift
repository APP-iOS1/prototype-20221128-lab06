//
//  WriteView.swift
//  BootCamping
//
//  Created by Roen White on 2022/11/14.
//

import SwiftUI

struct WriteView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var postStore: PostStore
    
    
    //카테고리 선택
    @State private var selectedOutdoor: String = ""
    @State private var selectedCategory: String = ""
    
    //피커가 나타나는거
    @State private var isShowingPicker: Bool = true
    
    //유저가 쓴 글 받는 스트링?
    @State private var textContent: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                Button(action: { isShowingPicker = true }, label: {
                    selectedOutdoor.isEmpty && selectedCategory.isEmpty ?
                    Text("게시글의 주제를 선택해주세요.") :
                    Text("\(selectedOutdoor) / \(selectedCategory)")
                })
                .sheet(isPresented: $isShowingPicker) {
                    CategorySelectorView(
                        isShowingPicker: $isShowingPicker,
                        selectedOutdoor: $selectedOutdoor,
                        selectedCategory: $selectedCategory)
                    .presentationDetents([.medium])
                }
                .padding()
                
                Divider()
                TextEditor(text: $textContent)
                    .border(.indigo)
            }
            .navigationBarTitle(Text("글쓰기"), displayMode: .inline)
            .navigationBarItems(trailing: Button("완료", action: {
                addPosts()
            })
            )
        }.padding()
        
    }
    
    func addPosts() {
        let newPost = Post(outdoor: selectedOutdoor, category: selectedCategory, content: textContent, userName: "thekoon", date: "2022.11.29", likes: 0, commentsCount: 0)
        
        postData.append(newPost)
        print(postData)
        dismiss()
    }
}

struct CategorySelectorView: View {
    @Binding var isShowingPicker: Bool
    @Binding var selectedOutdoor: String
    @Binding var selectedCategory: String
    
    @State private var isWarning: Bool = false
    
    var body: some View {
        Section(header: Text("게시글의 주제를 선택해주세요.").font(.title2)) {
            VStack(alignment: .leading, spacing: 20) {
                Section(header: Text("아웃도어")) {
                    Picker("아웃도어", selection: $selectedOutdoor) {
                        Text("캠핑").tag("캠핑")
                        Text("차박").tag("차박")
                        Text("글램핑").tag("글램핑")
                        Text("백패킹").tag("백패킹")
                    }
                    .pickerStyle(.segmented)
                }
                Section(header: Text("글 주제")) {
                    Picker("글 주제", selection: $selectedCategory) {
                        Text("자유").tag("자유")
                        Text("질문").tag("질문")
                        Text("캠핑팁").tag("캠핑팁")
                        Text("중고거래").tag("중고거래")
                        Text("동행").tag("동행")
                    }
                    .pickerStyle(.segmented)
                }
            }
            .padding()
            isWarning ? Text("❗️게시글의 주제를 선택해주세요") : Text("")
            HStack {
                Spacer()
                Button("취소", action: {
                    isShowingPicker = false
                })
                Spacer()
                Button("선택완료", action: {
                    if !selectedOutdoor.isEmpty && !selectedCategory.isEmpty {
                        isShowingPicker = false
                    } else {
                        isWarning = true
                    }
                })
                Spacer()
            }
            .padding()
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView(postStore: PostStore(posts: postData))
    }
}
