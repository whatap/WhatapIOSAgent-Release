# WhatapAgent (iOS SDK)

WhaTap iOS SDK is a framework that can be easily installed via Swift Package Manager (SPM) or directly downloaded and integrated into your project.
Supports iOS 13 and above.

---

## 📦 Latest Release

**Version**: 2.3.0 (Released: 2025-12-01)

### 🚨 Critical Crash Fix
- Fixed crash in Log Export (WhatapLogHttpExporter)
- Fixed crash in Span Export (WhatapSpanHttpExporter)
- Enhanced error handling for production stability

[View Release Notes](https://github.com/whatap/WhatapIOSAgent-Release/releases/tag/v2.3.0)

---

## 🔧 Installation

### 📦 Swift Package Manager (SPM)

You can install it in Xcode by following these steps:

1. `File` → `Add Packages...`
2. Enter the following URL:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. Select version `2.3.0` (recommended) or `main` branch
4. Add the `WhatapAgent` library to your project

### 📥 Direct Download Installation

You can also download and install the framework directly instead of using SPM:

```bash
curl -L -o WhatapAgent.xcframework.zip https://repo.whatap-mobile-agent.io/uploads/2.3.0/WhatapAgent.xcframework.zip
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
- `Package.swift` for SwiftPM
- iOS 13+ support
- Crash reporting and error handling
- Performance monitoring

---

## 📋 Version History

| Version | Release Date | Download URL |
|---------|--------------|--------------|
| 2.3.0 | 2025-12-01 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.3.0/WhatapAgent.xcframework.zip) |
| 2.1.0 | 2025-08-27 | [Download](https://repo.whatap-mobile-agent.io/uploads/2.1.0/WhatapAgent.xcframework.zip) |

---

## 📌 Notes

- Both SwiftPM and direct installation methods provide the same SDK functionality.
- The framework includes necessary modules, headers, simulator and device binaries.
- **Recommended**: Use version 2.3.0 or later for critical crash fixes.

---

## 📬 Contact

For SDK and integration inquiries, please contact [support@whatap.io](mailto:support@whatap.io) or visit our official website.
