#!/bin/sh

xcodebuild -project JNaturalKorean.xcodeproj -scheme JNaturalKorean -destination 'platform=iOS Simulator,name=iPhone 7' build-for-testing test | xcpretty
