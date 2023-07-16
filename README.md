# Swift 開発メモ





SPM経由でフォーマッタを導入しようとする

-  [swift-format](https://github.com/apple/swift-format#command-line-usage)

- 手順どおりやってみるが、No such module 'PackageDescription'というエラーがおきる

- 以下を実行したが効果なし

  - ```
     sudo xcode-select -s /Applications/Xcode.app
     sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
    ```

  - swift package init をやっていなかった

    - 効果なし

- Reset Package Cache という技がある

- , you need to have two distinct builds - one with the package manager and one with Xcode

  - とのこと
  - 

package managerは SPMとする

- 大体今はどのライブラリもSPM対応してるのでcocoa podsは不要
- SPM対応してないのは保守性低いので避けたほうがよい

