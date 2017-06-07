## Tap

Nothing to see here. Just playing with CoreNFC.

### Code Signing

You'll need code signing to run with entitlements on your device.

If you have access to the code signing repo and the fastlane match password, just:

```shell
$ bundle install # install fastlane
$ bundle exec fastlane download_all_profiles

$ # enter repo encryption password when it's requested
```
