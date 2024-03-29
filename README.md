# 

# # 앱 이름: 부트캠핑

# ## 앱 정의(ADS)

이 앱은 ‘갬성캠핑에 특화된’ 캠퍼들에게 사진 공유를 통한 캠핑 정보와 커뮤니티를 제공하는 앱입니다.

왜냐하면 인증샷을 자주 찍는 감성 컨셉의 캠퍼들에게 본인의 캠핑 사진을 직접 자랑할 수 있는 사진 공유 채널을 제공하고, 뷰가 우수한 캠핑장 정보를 공유할 수 있도록 하여 감성캠핑 라이프에 편리함을 더해주기 때문입니다.

# ## 주요기능

- 홈: 현재 인기많은 사진을 메인화면에 보여주고, 팔로잉 친구들의 사진 관리
- 검색: 포토, 장소, 캠퍼 등 카테고리별로 다양한 검색기능 제공
- 내 추억: 사진과 글을 추가하고, 추가한 사진을 포토카드, grid, list 등 여러 모드로 볼 수 있음
- 플레이스: 실제 캠핑장 정보 제공, 맵뷰 위치보기, 홈페이지 링크 또는 네이버 지도로 이동 가능
- 커뮤니티: 카테고리에 따라 다양한 주제의 글 작성, 댓글 달기 등 유저간의 커뮤니케이션 제공

# ## 활용한 기술

- 고캠핑 API 사용해 JSON 파싱
- 데이터를 받아올때 비동기 페이지 로딩 구현
- MapKit을 활용해 실제 캠핑장 위치 맵뷰로 구현
- ObservableObject 활용해 커뮤니티 작성글 저장, 업데이트
- 색상 설정을 통한 다크모드 구현

## 스크린샷

<img src="https://user-images.githubusercontent.com/106993057/205495512-bf061390-abc5-4013-891e-3b6b5d72bcaa.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495881-80c6dd82-0cbd-4f06-8206-00510db57006.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495888-85583f07-4c36-4a2d-814b-b1b2f5a3768e.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495889-8acd14b6-5fdf-42bf-900a-634c0a0283ee.png" width="200" height="400">

<img src="https://user-images.githubusercontent.com/106993057/205495895-4571e9df-9b06-4870-8f54-ec0f268a7549.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495902-6b6bb5c1-11e6-4c6c-b0a5-9bf300064a1f.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495905-90195183-55f4-4dc9-b896-fda39c6ac2d9.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495909-55f9e889-e349-4462-9507-05bef3da7c4c.png" width="200" height="400">

<img src="https://user-images.githubusercontent.com/106993057/205495913-b1c1bd29-aaca-4fc3-a093-b1f501d3bb50.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495915-d96f2e51-4542-4c75-999c-ae77da27b35c.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495918-c916c038-c478-4b07-970c-e781bcd094fa.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495921-cd3b3dc9-8f3c-43a3-9418-e8153abc45fe.png" width="200" height="400">

<img src="https://user-images.githubusercontent.com/106993057/205495929-076f2249-39b6-4c03-a7c5-ebe229a36fe5.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495933-55d15ed7-93aa-4a48-bc89-414f00810136.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495940-e684709c-29cf-4c9c-9a31-45a4a14779f5.png" width="200" height="400"> <img src="https://user-images.githubusercontent.com/106993057/205495944-76bae1c2-f73e-4010-a802-a6868e14bfee.png" width="200" height="400">

## 참여자
- 3기 멤버: 덕훈님, 동훈님, 소민님, 현호님, 소영님

- 덕훈님 : 내 추억 탭, 검색 탭, 커뮤니티 탭
- 동훈님 : 플레이스 탭, 세부 뷰, 맵뷰, 커뮤니티 탭 세부 뷰
- 소민님 : 홈 탭, 내 추억 탭 세부 뷰
- 현호님 : 홈 탭, 검색 탭
- 소영님 : 아이디어 제공, 검색 탭

------------------------------------
- 이전 멤버
초기멤버 : 덕훈님, 동훈님, 소민님, 수민님

- 덕훈님 : 아이디어 발제, 정리, 포토카드 탭
- 동훈님 : 장소 탭, 마이 캠핑 탭
- 소민님 : 홈 탭
- 수민님 : 커뮤니티 탭

2기 멤버 : 소민님, 수민님, 희경님, 창휘님
- 소민님 : 포토카드 탭, 홈 탭
- 수민님 : 커뮤니티 탭, 장소 탭, 마이 캠핑 탭
- 희경님 : 홈 탭, Places 구조체 수정
- 창휘님 : 국방의 의무를 다하러 가셨습니다
------------------------------------
