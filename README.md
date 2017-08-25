# Rindicator


[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


Rindicator is an hud library written in Swift.


- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- **Intro -** [Making a Request](#making-a-request), [Response Handling](#response-handling), [Response Validation](#response-validation), [Response Caching](#response-caching)
- **HTTP -** [HTTP Methods](#http-methods), [Parameter Encoding](#parameter-encoding), [HTTP Headers](#http-headers), [Authentication](#authentication)
- **Large Data -** [Downloading Data to a File](#downloading-data-to-a-file), [Uploading Data to a Server](#uploading-data-to-a-server)
- **Tools -** [Statistical Metrics](#statistical-metrics), [cURL Command Output](#curl-command-output)
- [Advanced Usage](#advanced-usage)
- **URL Session -** [Session Manager](#session-manager), [Session Delegate](#session-delegate), [Request](#request)
- **Routing -** [Routing Requests](#routing-requests), [Adapting and Retrying Requests](#adapting-and-retrying-requests)
- **Model Objects -** [Custom Response Serialization](#custom-response-serialization)
- **Connection -** [Security](#security), [Network Reachability](#network-reachability)
- [Open Radars](#open-radars)
- [FAQ](#faq)
- [Credits](#credits)
- [Donations](#donations)
- [License](#license)


## Features

- [x] Chainable Request / Response Methods

## Requirements

- iOS 9.0+
- Xcode 8.1, 8.2, 8.3, and 9.0
- Swift 3.0, 3.1, 3.2, and 4.0


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/Roible/Rindicator.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'Rindicator', '~> 0.0.2'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Alamofire into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Roible/Rindicator" ~> 4.4
```

Run `carthage update` to build the framework and drag the built `Alamofire.framework` into your Xcode project.
