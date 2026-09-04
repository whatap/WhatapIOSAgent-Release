# WhatapAgent (iOS SDK)

WhaTap iOS SDK is a framework that can be easily installed via Swift Package Manager (SPM) or directly downloaded and integrated into your project.
Supports iOS 15 and above.

---

## 📦 Latest Release

**Version**: 2.7.13 (Released: 2026-09-04)

### What's New (v2.7.13)
- **ScreenGroup 종료 타이머 크래시 수정**: 크래시 스레드가 `com.whatap.screengroup` 이고 스택이 `__CFRunLoopTimerDeallocate` 를 지나는 크래시가 더 이상 발생하지 않습니다. 앱에서 ScreenGroup API 를 직접 사용하지 않아도 해당됩니다.
- **ScreenGroup 종료·전송 시점**: 스크롤 중에도 지연되지 않습니다. 스크롤이 많은 화면에서 ScreenGroup 의 종료 시각과 duration 분포가 이전보다 짧고 일정하게 나올 수 있습니다. 수집 항목과 전송 형식은 그대로입니다.

**Drop-in** — 코드 변경 불필요, xcframework 파일 교체만으로 적용. 공개 API 표면 변화 없음 (v2.7.10 ~ v2.7.12 와 동일).

### What's New (v2.7.12)
- **최소 지원 iOS 15.0**: 배포 바이너리의 최소 버전을 15.0 으로 낮췄습니다.
- **SPM 매니페스트 정렬**: `platforms` 를 `.iOS(.v15)` 로 맞췄습니다.

**Drop-in** — 코드 변경 불필요, xcframework 파일 교체만으로 적용. 공개 API 표면 변화 없음.
**런타임 동작 변경 없음.**

### What's New (v2.7.11)
- **fix(webview) — WebView 브릿지 데이터 전량 폐기 해소**: 브라우저 에이전트 payload 의 `meta.pCode` / `meta.projectAccessKey` 가 웹 프로젝트 값 그대로 올라가 모바일 인그레스가 전량 폐기하던 이슈. 서버가 HTTP 200 + 본문 에러(`<pcode> has deleted.`) 로 응답해 흔적 없이 유실됐다. camelCase 키를 **존재할 때만** override 하도록 변경 (Android `replaceMetaFields` 정합). 통짜 merge 가 `p_platform: W_IOS` 를 오염시키던 부수 회귀도 정정.
- **fix(webview) — Web Vitals 전량 유실 해소**: 업로드 경로를 `/webVitals_v2` → `/v2/webVitals` 로 교정 (기존 경로는 서버에 없어 404). 브릿지 method 이름 `webVitals_v2` 는 브라우저 에이전트와의 계약이라 유지.
- **fix(webview) — `endScreenGroup` 고아 업로드 라인 제거**: ScreenGroup 종료 payload 가 `/v2/webVitals` 로 함께 올라가 Web Vitals 를 오염시키던 문제.
- **fix(webview) — 업로드 큐 수명 창 제거**: 전송 중 들어온 청크가 닫힌 배열 뒤에 이어붙어 깨진 JSON 이 전송되거나 조용히 유실되던 구조를 스왑 방식으로 변경.
- **fix(stability) — 호스트 앱 크래시 위험 3건 방어**: `repackV2SessionReplay` 의 `JSONSerialization` NSException 을 `WhatapExceptionGuard` 로 차단 (Swift `try?`/`catch` 로 안 잡힌다) · 누적 업로드 큐 상한 16MB 도입 (OOM 강제종료 방지) · `WhatapLogger.adapters` 데이터 레이스에 `NSLock` 도입.

**Drop-in** — 코드 변경 불필요, xcframework 파일 교체만으로 적용. 공개 API 표면 변화 없음.
**대시보드 영향**: 그동안 폐기되던 WebView 브릿지 데이터(onError / pageLoad / routeChange / event / resource / webVitals / sessionReplay)가 **새로 적재되기 시작한다.** WebView 지표가 0 이었던 프로젝트는 값이 올라온다.

### What's New (v2.7.10)
- **fix(userlog) — Extras attribute 중복 제거**: `UserLogger.log(...)` 호출 시 `ExtrasStore` 데이터가 payload 상 두 위치 (`attributes[extra_{key}.c]` 와 `metrics.extras.{key}.c`) 에 중복으로 담기던 이슈. `UserLogger` 쪽 부착 로직 삭제, Android 정합 위치인 `metrics.extras` 만 유지. **대시보드 영향**: `metrics.extras` 참조 위젯은 무영향, `attributes[extra_*]` 참조하던 위젯은 `metrics.extras` 로 이관 필요.

### What's New (v2.7.9)
- **feat(network) — HTTP 헤더 캡처 (opt-in)**: `TracingURLProtocol` 이 처리하는 네트워크 span 에 HTTP 요청/응답 헤더를 attribute 로 부착. Builder 옵션 3종:
  - `setCaptureRequestHeaders(_:)` — 기본 `false`
  - `setCaptureResponseHeaders(_:)` — 기본 `false`
  - `setHeaderValueMaxLength(_:)` — 기본 `512` bytes, `0` = 무제한
- Attribute 네이밍: `http.request.header.<normalized>` / `http.response.header.<normalized>` (OTel + Android 정합). Key 정규화: 소문자 + `-` → `_`. 값 상한 초과 시 `...[TRUNCATED to <N>B]` 마커.

### What's New (v2.7.8)
- **feat(network) — `WhatapIOSAgent.instrument(_ config: URLSessionConfiguration)` 신규 API**: 호스트 앱이 커스텀 `URLSessionConfiguration` 을 사용해 네트워크 요청이 자동 수집 안 되는 경우 명시적으로 `TracingURLProtocol` 삽입. `URLProtocol.registerClass(...)` 의 Apple 제약 (기본 config 만 커버) 을 우회하기 위한 opt-in 헬퍼. Idempotent · `collectNetwork` opt-in 옵션 존중.

### What's New (v2.7.7)
- **fix(meta) — `device_name` 이 항상 `"iPhone"` / `"iPad"` 로만 수집되던 이슈**: `UIDevice.current.model` (제네릭) 대신 `UIDevice.current.modelIdentifier` (utsname/uname 기반 실제 기기 식별자) 사용으로 통일. Android `Build.MODEL` 과 동일한 세부도 확보 (예: `"iPhone16,1"`, `"iPad13,4"`).

### What's New (v2.7.1)
- **fix(stability) — System VC hardening**: picker / share / composer 류 시스템 VC (`UIImagePickerController`, `UIDocumentPickerViewController`, `UIActivityViewController`, `PHPickerViewController`, `SFSafariViewController` 등) 진입 시 swizzling 추적 경로에서 호스트 앱이 종료되는 케이스 차단. subclass (e.g. `UIImagePickerControllerEx`) 도 `isKindOfClass` 매칭으로 동일하게 격리. 4-layer 방어 (필터 확장 + `@try/@catch` swizzling wrapper + `WhatapExceptionGuard` Swift bridge + scene activationState guard).
- **fix(stability) — Exporter sanitize**: `WhatapLogHttpExporter` / `WhatapSpanHttpExporter` 의 NaN/Inf 방어, snake_case key normalize, nano→milli 자동 변환. Span flush interval 1초 단축 (ScreenGroup 즉시 export 보장).
- **feat(method-tracing) — Public API**: `WhatapAgentBuilder.enableMethodTracing(_:)` 옵트인. **2-인자 enter/exit API**: `methodStart(className:methodName:)` / `methodEnd(className:methodName:)` — thread-local stack 으로 startMs/depth 자동 관리 (Android `CallStackTracer.onEnter`/`onExit` 동등 사용감). 보조: `traceMethod` Swift 클로저, `traceMethodObjC`, `trackMethod` (이미 측정된 duration 단발). 10초 주기로 묶여 `/m/log` 송신 (Android 호환 schema). 미활성 시 비용 0.

[View Release Notes](https://github.com/whatap/WhatapIOSAgent-Release/releases/tag/v2.7.13)

---

## 🔧 Installation

### 📦 Swift Package Manager (SPM)

You can install it in Xcode by following these steps:

1. `File` → `Add Packages...`
2. Enter the following URL:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. Select version `2.7.13` (recommended) or `main` branch
4. Add the `WhatapAgent` library to your project

### 📥 Direct Download Installation

You can also download and install the framework directly instead of using SPM:

```bash
curl -L -o WhatapAgent.xcframework.zip https://repo.whatap-mobile-agent.io/uploads/2.7.13/WhatapAgent.xcframework.zip
unzip WhatapAgent.xcframework.zip
```

1. Unzip and add the `WhatapAgent.xcframework` folder to the Frameworks group in your Xcode project.
2. Add it to your target's `General > Frameworks, Libraries, and Embedded Content`.
3. Import it in your code as follows:

```swift
import WhatapAgent
```

---

## ✅ Included Components

- `WhatapAgent.xcframework` (Binary Framework)
- `PrivacyInfo.xcprivacy` (Apple Privacy Manifest - included in XCFramework)
- `Package.swift` for SwiftPM
- iOS 15+ support
- Crash reporting and error handling
- Performance monitoring

---

## 📋 Version History

| Version | Release Date | Download URL |
|---------|--------------|--------------|
| 2.7.13 | 2026-09-04 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.13/WhatapAgent.xcframework.zip) |
| 2.7.12 | 2026-08-31 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.12/WhatapAgent.xcframework.zip) |
| 2.7.11 | 2026-08-27 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.11/WhatapAgent.xcframework.zip) |
| 2.7.10 | 2026-08-10 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.10/WhatapAgent.xcframework.zip) |
| 2.7.1 | 2026-06-23 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.1/WhatapAgent.xcframework.zip) |
| 2.7.0 | 2026-06-22 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.7.0/WhatapAgent.xcframework.zip) |
| 2.6.0 | 2026-06-22 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.6.0/WhatapAgent.xcframework.zip) |
| 2.5.1 | 2026-06-19 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.5.1/WhatapAgent.xcframework.zip) |
| 2.5.0 | 2026-06-19 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.5.0/WhatapAgent.xcframework.zip) |
| 2.4.4 | 2026-06-05 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.4.4/WhatapAgent.xcframework.zip) |
| 2.4.3 | 2026-04-14 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.4.3/WhatapAgent.xcframework.zip) |
| 2.4.0 | 2026-03-27 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.4.0/WhatapAgent.xcframework.zip) |
| 2.3.0 | 2025-12-01 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.3.0/WhatapAgent.xcframework.zip) |
| 2.1.0 | 2025-08-27 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.1.0/WhatapAgent.xcframework.zip) |

---

## 📌 Notes

- Both SwiftPM and direct installation methods provide the same SDK functionality.
- The framework includes necessary modules, headers, simulator and device binaries.
- **Privacy Manifest**: `PrivacyInfo.xcprivacy` is bundled in the XCFramework. No additional privacy manifest configuration is needed from the app developer.
- **Debug Logging**: SDK console logging is disabled by default. Enable with `WhatapLogger.isDebug = true` for debugging.
- **Recommended**: Use version 2.7.1 or later.

---

## 📬 Contact

For SDK and integration inquiries, please contact [support@whatap.io](mailto:support@whatap.io) or visit our official website.
