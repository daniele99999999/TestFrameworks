# TestFrameworks

For make it works, its needed to add the private podspecs repository locally:

```pod repo add Frameworks-repo https://github.com/daniele99999999/cocoapodsspecsinternal.git```


for make sure you synched with all podspecs:

```pod repo update```


Now your private podspecs repository is ready! Move to poject directory, and install all dependencies:

```pod install```


Open .worskspace and enjoy!

Tested with XCode 10.1, cocoapods 1.5.2
PS: the auto generated API services for test used here are hosted for free at http://echo.jsontest.com
It's not always available, so wait a little bit if doesnt work for you
