module.exports = function () {

    var targetLink;

    this.Given(/^I am on the Google homepage$/, function (callback) {
        browser.url('http://google.co.uk').call(callback);
    });

    this.Then(/^I will search for "(.*)"$/, function (searchText, callback) {
        browser
            .setValue('#lst-ib', searchText)
            .keys('Enter')
            .pause(1000)
            .waitForExist('body')
            .call(callback);
    });

    this.Then(/^I should see "(.*)"$/, function (expectedText, callback) {
        targetLink = expectedText;
        browser
            .waitForText('//h3/a[text() = "' + targetLink + '"]')
            .call(callback);
    });

    this.Then(/^I will click the (.*) link$/, function (linkName, callback) {
        browser
            .click('//h3/a[text() = "' + targetLink + '"]/../../..//h3/a[text() = "' + linkName + '"]')
            .call(callback);
    });

};
