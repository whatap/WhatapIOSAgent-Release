# WhatapAgent (iOS SDK)

WhaTap iOS SDK is a framework that can be easily installed via Swift Package Manager (SPM) or directly downloaded and integrated into your project.
Supports iOS 15 and above.

---

## 📦 Latest Release

**Version**: 2.5.0 (Released: 2026-06-19)

### What's New
- **fix(stability) — System VC hardening**: picker / share / composer 류 시스템 VC (`UIImagePickerController`, `UIDocumentPickerViewController`, `UIActivityViewController`, `PHPickerViewController`, `SFSafariViewController` 등) 진입 시 swizzling 추적 경로에서 호스트 앱이 종료되는 케이스 차단. subclass (e.g. `UIImagePickerControllerEx`) 도 `isKindOfClass` 매칭으로 동일하게 격리. 4-layer 방어 (필터 확장 + `@try/@catch` swizzling wrapper + `WhatapExceptionGuard` Swift bridge + scene activationState guard).
- **fix(stability) — Exporter sanitize**: `WhatapLogHttpExporter` / `WhatapSpanHttpExporter` 의 NaN/Inf 방어, snake_case key normalize, nano→milli 자동 변환. Span flush interval 1초 단축 (ScreenGroup 즉시 export 보장).
- **feat(method-tracing) — Public API**: `WhatapAgentBuilder.enableMethodTracing(_:)` 옵트인. `WhatapIOSAgent.trackMethod(className:methodName:durationMs:depth:)` / `traceMethod(...)` 클로저 / `traceMethodObjC(...)` 노출. 수집된 CallStack 은 10초 주기로 묶여 `/m/log` 엔드포인트로 송신 (Android 호환 schema). 미활성 시 비용 0.
- **chore**: swizzling layer 의 verbose NSLog 정리, `build_xcframework.sh` cleanup assertion 강화 (배포 패키지에 잡파일 잔존 시 빌드 실패).

[View Release Notes](https://github.com/whatap/WhatapIOSAgent-Release/releases/tag/v2.5.0)

---

## 🔧 Installation

### 📦 Swift Package Manager (SPM)

You can install it in Xcode by following these steps:

1. `File` → `Add Packages...`
2. Enter the following URL:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. Select version `2.5.0` (recommended) or `main` branch
4. Add the `WhatapAgent` library to your project

### 📥 Direct Download Installation

You can also download and install the framework directly instead of using SPM:

```bash
curl -L -o WhatapAgent.xcframework.zip https://repo.whatap-mobile-agent.io/uploads/2.5.0/WhatapAgent.xcframework.zip
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
- **Recommended**: Use version 2.5.0 or later.

---

## 📬 Contact

For SDK and integration inquiries, please contact [support@whatap.io](mailto:support@whatap.io) or visit our official website.
