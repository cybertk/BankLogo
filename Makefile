project = BankLogo

test: test-unit test-archive

test-unit:
	xcodebuild test -scheme $(project) -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO OBJROOT=$(PWD)/build SYMROOT=$(PWD)/build | bundle exec xcpretty

test-archive:
	carthage build --no-skip-current

bootstrap:
	bundle install
	brew install carthage

release:
	zip -r -9 $(project).framework.zip Carthage/Build/iOS/*.framework

clean:
	git clean -xfd
	git submodule foreach git clean -xfd
	rm -rf  ~/Library/Developer/Xcode/DerivedData/$(project)-*

carthage-update:
	carthage update --use-submodules --no-build

carthage-build:
	carthage build --platform ios

.PHONY: all clean test test-unit test-archive release-alpha carthage-update carthage-build bootstrap
