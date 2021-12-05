# RunnersHigh

## 環境構築

1. HomeBrewなければ入れる
2. BrewでRbEnvを入れる
```bash
brew install rbenv
```
3. rbenvでrubyのversion2.7.1をインストール
```bash
rbenv install 2.7.1
```
4. rbenvでrubyのversionを指定
```bash
rbenv local 2.7.1
```
4. まだGemfileがなければ初期化して記入
```bash
rbenv exec bundle init
```

```Gemfile
# frozen_string_literal: true

source "https://rubygems.org"
gem 'cocoapods' , '1.10.0'
gem 'fastlane'
```

5. bundle install
```bash
rbenv exec bundle install --path bundle
```

6. まだPodfileがなければ初期化して記入
```bash
rbenv exec bundle exec pod init
```

```Podfile
# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

# Comment the next line if you don't want to use dynamic frameworks
use_frameworks!

target 'RunnersHigh' do
  pod 'R.swift', '5.2.2'
  pod 'LicensePlist'

  # Pods for RunnersHigh

  target 'RunnersHighTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'RunnersHighUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end
end
```

7. podをinstall
```bash
rbenv exec bundle exec pod install
```

