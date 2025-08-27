# WhatapAgent (iOS SDK)

Whatap iOS SDK는 Swift Package Manager(SPM)를 통해 간편하게 설치하거나, 직접 다운로드하여 프로젝트에 통합할 수 있는 프레임워크입니다.  
iOS 13 이상을 지원합니다.

---

## 🔧 설치 방법

### 📦 Swift Package Manager (SPM)

Xcode에서 다음 단계를 따라 설치할 수 있습니다:

1. `File` → `Add Packages...`
2. 아래 URL을 입력:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. 원하는 버전 또는 브랜치를 선택 (예: `main`, `1.0.0`)
4. `WhatapAgent` 라이브러리를 프로젝트에 추가

### 📥 직접 다운로드하여 설치

SPM 대신 직접 프레임워크를 다운로드하여 설치할 수도 있습니다:

```bash
curl -O https://repo.whatap-mobile-agent.io/uploads/debug/WhatapAgent.xcframework.zip
unzip WhatapAgent.xcframework.zip
```

1. 압축을 풀고 `WhatapAgent.xcframework` 폴더를 Xcode 프로젝트의 Frameworks 그룹에 추가합니다.
2. 타겟의 `General > Frameworks, Libraries, and Embedded Content`에 추가합니다.
3. 코드에서 아래와 같이 임포트합니다:

```swift
import WhatapAgent
```

---

## ✅ 포함된 구성 요소

- `WhatapAgent.xcframework` (Binary Framework)
- SwiftPM용 `Package.swift`
- iOS 13 이상 지원

---

## 📌 주의사항

- SwiftPM 또는 직접 설치 방식 모두 동일한 SDK 기능을 제공합니다.
- 프레임워크에는 필요한 모듈, 헤더, 시뮬레이터 및 디바이스 바이너리가 포함되어 있습니다.

---

## 📬 문의

SDK 및 연동 관련 문의는 [support@whatap.io](mailto:support@whatap.io) 또는 공식 웹사이트를 통해 문의해 주세요.
