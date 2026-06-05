# WhatapAgent (iOS SDK)

WhaTap iOS SDK is a framework that can be easily installed via Swift Package Manager (SPM) or directly downloaded and integrated into your project.
Supports iOS 15 and above.

---

## 📦 Latest Release

**Version**: 2.4.4 (Released: 2026-06-05)

### What's New
- **WhatapURLSession**: per-request custom attributes via `addAttribute` / request & response extractors — attached to `metrics.extras` for dashboard indexing (Android `InstrumentedDefaultHttpClient` parity)
- **Cold-launch performance**: `WhatapIOSAgent.initialize()` main-thread time reduced ~93% (78.6 ms → 5.5 ms on iPhone 13 mini); `didFinishLaunching` total ~62% faster
- **WebView meta auto-replacement**: in-WebView browser agent data is reclassified under the iOS project (iOS `p_code` / `project_access_key` / `session_id` / `user_id` override; `pageLocation` / `sendEventID` / `userAgent` preserved)
- **agent_version meta accuracy**: framework version is now build-time fixed (no more bundle-identifier-dependent fallback)
- **Hotfix (carried from 2.4.3)**: stack overflow crash in `getTopViewController` with WKWebView + SPA — depth limit + cycle detection + nil-safe navigation traversal

[View Release Notes](https://github.com/whatap/WhatapIOSAgent-Release/releases/tag/v2.4.4)

---

## 🔧 Installation

### 📦 Swift Package Manager (SPM)

You can install it in Xcode by following these steps:

1. `File` → `Add Packages...`
2. Enter the following URL:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. Select version `2.4.4` (recommended) or `main` branch
4. Add the `WhatapAgent` library to your project

### 📥 Direct Download Installation

You can also download and install the framework directly instead of using SPM:

```bash
curl -L -o WhatapAgent.xcframework.zip https://repo.whatap-mobile-agent.io/uploads/2.4.4/WhatapAgent.xcframework.zip
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
- **Recommended**: Use version 2.4.4 or later.

---

## 📬 Contact

For SDK and integration inquiries, please contact [support@whatap.io](mailto:support@whatap.io) or visit our official website.
