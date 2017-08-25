//
//  Rindicator.swift
//  Rindicator
//
//  Created by roy on 2017/8/25.
//  Copyright © 2017年 Royite. All rights reserved.
//

import UIKit

open class Rindicator: NSObject {
    open static func logWords(_ word: String) {
        print(word)
    }
}



//
//
//UNIVERSAL_OUTPUTFOLDER=${BUILD_DIR}/${CONFIGURATION}-universal
//
//# Make sure the output directory exists
//mkdir -p "${UNIVERSAL_OUTPUTFOLDER}"
//
//# Next, work out if we're in SIM or DEVICE
//xcodebuild -target "${PROJECT_NAME}" -configuration ${CONFIGURATION} -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
//xcodebuild -target "${PROJECT_NAME}" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos  BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
//
//
//# Step 2. Copy the framework structure (from iphoneos build) to the universal folder
//cp -R "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework" "${UNIVERSAL_OUTPUTFOLDER}/"
//
//
//
//# Step 3. Copy Swift modules from iphonesimulator build (if it exists) to the copied framework directory
//BUILD_PRODUCTS="${SYMROOT}/../../../../Products"
//cp -R "${BUILD_PRODUCTS}/Debug-iphonesimulator/${PROJECT_NAME}.framework/Modules/${PROJECT_NAME}.swiftmodule/." "${UNIVERSAL_OUTPUTFOLDER}/${PROJECT_NAME}.framework/Modules/${PROJECT_NAME}.swiftmodule"
//# Step 4. Create universal binary file using lipo and place the combined executable in the copied framework directory
//lipo -create -output "${UNIVERSAL_OUTPUTFOLDER}/${PROJECT_NAME}.framework/${PROJECT_NAME}" "${BUILD_PRODUCTS}/Debug-iphonesimulator/${PROJECT_NAME}.framework/${PROJECT_NAME}" "${BUILD_DIR}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework/${PROJECT_NAME}"
//# Step 5. Convenience step to copy the framework to the project's directory
//cp -R "${UNIVERSAL_OUTPUTFOLDER}/${PROJECT_NAME}.framework" "${PROJECT_DIR}"
//# Step 6. Convenience step to open the project's directory in Finder
//open "${PROJECT_DIR}"
//fi
//
//
//
//
//
//
//
//
//######################
//# Options
//######################
//
//REVEAL_ARCHIVE_IN_FINDER=false
//
//FRAMEWORK_NAME="${PROJECT_NAME}"
//
//SIMULATOR_LIBRARY_PATH="${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/${FRAMEWORK_NAME}.framework"
//
//DEVICE_LIBRARY_PATH="${BUILD_DIR}/${CONFIGURATION}-iphoneos/${FRAMEWORK_NAME}.framework"
//
//UNIVERSAL_LIBRARY_DIR="${BUILD_DIR}/${CONFIGURATION}-iphoneuniversal"
//
//FRAMEWORK="${UNIVERSAL_LIBRARY_DIR}/${FRAMEWORK_NAME}.framework"
//
//
//######################
//# Build Frameworks
//######################
//
//xcodebuild -workspace ${PROJECT_NAME}.xcworkspace -scheme ${PROJECT_NAME} -sdk iphonesimulator -configuration ${CONFIGURATION} clean build CONFIGURATION_BUILD_DIR=${BUILD_DIR}/${CONFIGURATION}-iphonesimulator 2>&1
//
//xcodebuild -workspace ${PROJECT_NAME}.xcworkspace -scheme ${PROJECT_NAME} -sdk iphoneos -configuration ${CONFIGURATION} clean build CONFIGURATION_BUILD_DIR=${BUILD_DIR}/${CONFIGURATION}-iphoneos 2>&1
//
//######################
//# Create directory for universal
//######################
//
//rm -rf "${UNIVERSAL_LIBRARY_DIR}"
//
//mkdir "${UNIVERSAL_LIBRARY_DIR}"
//
//mkdir "${FRAMEWORK}"
//
//
//######################
//# Copy files Framework
//######################
//
//cp -r "${DEVICE_LIBRARY_PATH}/." "${FRAMEWORK}"
//
//
//######################
//# Make an universal binary
//######################
//
//lipo "${SIMULATOR_LIBRARY_PATH}/${FRAMEWORK_NAME}" "${DEVICE_LIBRARY_PATH}/${FRAMEWORK_NAME}" -create -output "${FRAMEWORK}/${FRAMEWORK_NAME}" | echo
//
//# For Swift framework, Swiftmodule needs to be copied in the universal framework
//if [ -d "${SIMULATOR_LIBRARY_PATH}/Modules/${FRAMEWORK_NAME}.swiftmodule/" ]; then
//    cp -f ${SIMULATOR_LIBRARY_PATH}/Modules/${FRAMEWORK_NAME}.swiftmodule/* "${FRAMEWORK}/Modules/${FRAMEWORK_NAME}.swiftmodule/" | echo
//fi
//
//if [ -d "${DEVICE_LIBRARY_PATH}/Modules/${FRAMEWORK_NAME}.swiftmodule/" ]; then
//    cp -f ${DEVICE_LIBRARY_PATH}/Modules/${FRAMEWORK_NAME}.swiftmodule/* "${FRAMEWORK}/Modules/${FRAMEWORK_NAME}.swiftmodule/" | echo
//fi
//
//######################
//# On Release, copy the result to release directory
//######################
//OUTPUT_DIR="${PROJECT_DIR}/Output/${FRAMEWORK_NAME}-${CONFIGURATION}-iphoneuniversal/"
//
//rm -rf "$OUTPUT_DIR"
//mkdir -p "$OUTPUT_DIR"
//
//cp -r "${FRAMEWORK}" "$OUTPUT_DIR"
//
//if [ ${REVEAL_ARCHIVE_IN_FINDER} = true ]; then
//  open "${OUTPUT_DIR}/"
//fi
//
//
//
//
//
//
//
//#!/bin/sh
//UNIVERSAL_OUTPUTFOLDER=${BUILD_DIR}/${CONFIGURATION}-universal
//# make sure the output directory exists
//mkdir -p "${UNIVERSAL_OUTPUTFOLDER}"
//# Step 1. Build Device and Simulator versions
//xcodebuild -target "AlamoWater" ONLY_ACTIVE_ARCH=NO -configuration ${CONFIGURATION} -sdk iphoneos  BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
//xcodebuild -target "AlamoWater" -configuration ${CONFIGURATION} -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO BUILD_DIR="${BUILD_DIR}" BUILD_ROOT="${BUILD_ROOT}" clean build
//# Step 2. Copy the framework structure (from iphoneos build) to the universal folder
//cp -R "${BUILD_DIR}/${CONFIGURATION}-iphoneos/AlamoWater.framework" "${UNIVERSAL_OUTPUTFOLDER}/"
//# Step 3. Copy Swift modules from iphonesimulator build (if it exists) to the copied framework directory
//SIMULATOR_SWIFT_MODULES_DIR="${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/AlamoWater.framework/Modules/AlamoWater.swiftmodule/."
//if [ -d "${SIMULATOR_SWIFT_MODULES_DIR}" ]; then
//cp -R "${SIMULATOR_SWIFT_MODULES_DIR}" "${UNIVERSAL_OUTPUTFOLDER}/AlamoWater.framework/Modules/AlamoWater.swiftmodule"
//fi
//# Step 4. Create universal binary file using lipo and place the combined executable in the copied framework directory
//lipo -create -output "${UNIVERSAL_OUTPUTFOLDER}/AlamoWater.framework/AlamoWater" "${BUILD_DIR}/${CONFIGURATION}-iphonesimulator/AlamoWater.framework/AlamoWater" "${BUILD_DIR}/${CONFIGURATION}-iphoneos/AlamoWater.framework/AlamoWater"
//# Step 5. Convenience step to copy the framework to the project's directory
//cp -R "${UNIVERSAL_OUTPUTFOLDER}/AlamoWater.framework" "${PROJECT_DIR}"
//# Step 6. Convenience step to open the project's directory in Finder
//open "${PROJECT_DIR}"


 
 
 
 
 
















