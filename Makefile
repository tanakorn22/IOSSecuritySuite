.PHONY : swiftshield

swiftshield:
	cd ../ && make build && make package
	../.build/release/_PRODUCT/bin/swiftshield obfuscate -p ./IOSSecuritySuite.xcodeproj -s IOSSecuritySuite -v
	open ./IOSSecuritySuite.xcodeproj
	open ./swiftshield-output
