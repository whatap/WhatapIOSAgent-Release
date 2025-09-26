# WhatapAgent (iOS SDK)

WhaTap iOS SDK is a framework that can be easily installed via Swift Package Manager (SPM) or directly downloaded and integrated into your project.
Supports iOS 13 and above.

---

## 🔧 Installation

### 📦 Swift Package Manager (SPM)

You can install it in Xcode by following these steps:

1. `File` → `Add Packages...`
2. Enter the following URL:

```
https://github.com/whatap/WhatapIOSAgent-Release.git
```

3. Select the desired version or branch (e.g., `main`, `1.0.0`)
4. Add the `WhatapAgent` library to your project

### 📥 Direct Download Installation

You can also download and install the framework directly instead of using SPM:

```bash
curl -O https://repo.whatap-mobile-agent.io/uploads/debug/WhatapAgent.xcframework.zip
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

---

## 📌 Notes

- Both SwiftPM and direct installation methods provide the same SDK functionality.
- The framework includes necessary modules, headers, simulator and device binaries.

---

## 📬 Contact

For SDK and integration inquiries, please contact [support@whatap.io](mailto:support@whatap.io) or visit our official website.
