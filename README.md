# 재고를 알려줘! - iOS Application
## 프로젝트 설명
> 2019 osam에서 진행한 IoT 프로젝트인 [재고를 알려줘!](https://github.com/JinsungGwag/Checkstorage) 의 iOS Application이다.<br>

### 목차
- [1. 사용 방법](#사용-방법) <br>
  * [1-1. 설치 환경](#설치-환경) <br>
  * [1-2. 설치 방법](#설치-방법) <br>
  * [1-3. 실행 안내](#실행-안내) <br>
- [2. 파일 정보 및 목록](#파일-정보-및-목록) <br>
- [3. 개인 설정 작업](#개인-설정-작업) <br>
- [4. 버그 신고](#contact-me) <br>


### 사용 방법

 #### 설치 환경
   * **macOS high sierra 10.12.6** 이상 <br>
   * **Xcode 9.2** 이상의 버전 <br>
   * **iOS SDK 12.0** 이상의 iOS 기기 보유 <br>
     > iPhone 뿐만 아니라 iPad에서도 설치 및 실행은 가능하지만, ui 문제상 iPhone7 ~ iPhoneX 를 권장함 (SE제외) <br>
  
 #### 설치 방법
   0. [개인별 코드 수정](#개인-설정-작업)
   1. 준비된 iOS기기를 usb를 이용해 macOS에 연결한다. <br>
   2. 프로젝트 코드를 Xcode에서 실행시킨다. <br>
   3. build 대상을 Xcode의 가상머신이 아닌, usb로 연결한 user device로 변경하고 실행 <br>
   4. iOS 기기에서 동작 확인 <br>
  
 #### 실행 안내
   * [재고를 알려줘!](https://github.com/JinsungGwag/Checkstorage) 프로젝트 참고<br>
   
<br>

### 파일 정보 및 목록
  * /osamIotApp/initViewController.swift
    > 대기 화면 <br>
    > 어플리케이션이 켜질 때 팀/프로젝트 소개가 이루어지는 화면.<br>
       자동으로 화면이 넘어가며, 이때 데이터 load를 진행. <br>
       
  * /osamIotApp/mainViewController.swift
    > 메인 화면 <br>
    > 각 수납장의 물건이 얼마나 채워져있는지를 gui로 표기 <br>
       새로고침 버튼을 통해 수납장 정보를 다시 가져올 수 있다.<br>
       
  * setupViewController.swift
    > 환경설정 <br>
    > 각 수납장에 이름을 붙일 수 있다. <br>
     각 수납장에 대한 이름은 개별 저장/일괄 저장 가능 <br>
     
  * /osamIotApp/Base.Iproj/Main.stroyboard
    > 프로젝트 전체 gui 코드 <br>
    > 모든 ui element의 크기/위치 정보가 저장되어있다. <br>

### 개인 설정 작업
  해당 어플리케이션은 서버의 데이터를 받아 사용하므로 서버의 주소가 필요하다.<br>
  [재고를 알려줘!](https://github.com/JinsungGwag/Checkstorage) 프로젝트를 참고하면 아래와 같은 작업을 한다.<br>
     1. python simplehttpserver를 이용해 local directory 정보를 localhost에 업로드<br>
     2. ngrok를 이용해 포트 포워딩 <br>
  위 작업을 마치면 ngrok.exe window에 Forward 정보가 나온다. <br>
  정상적으로 진행시 **'http://NNNNaaNN.ngrok.io'** 와 같은 형식의 http 주소로 포트포워딩이 될 것이다. <br>
  **/osamIotApp/mainViewController.swift** 파일의 **serverURL** string variable을 해당 주소로 변경한다. <br>
  > **let serverURL = "http://NNNNaaNN.ngrok.io"** <br>

<br><br><br>
### Contact me
 > kjeonghoon065@gmail.com
