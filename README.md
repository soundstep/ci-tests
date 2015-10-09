# ci-tests
Different setups for browser acceptance tests (CI)

### ruby-selenium

**Installation**

```
ls ruby-selenium
bundle update
```

**Run tests**

```
cucumber features/find-store.feature
```

### ruby-selenium

**Installation**

```
ls ruby-selenium
bundle update
```

**Run tests**

```
cucumber features/find-store.feature
```

### nodejs-webdriverio

**Installation**

```
ls nodejs-webdriverio
curl -O http://selenium-release.storage.googleapis.com/2.48/selenium-server-standalone-2.48.1.jar
npm install
npm install -g webdriverio
npm install -g cucumber
```

**Run tests**

```
java -jar selenium-server-standalone-2.48.1.jar

```

```
wdio wdio.conf.js
```
