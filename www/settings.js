var exec = require("cordova/exec");

function NativeSettings() {
}

NativeSettings.prototype.open = function(onsucess, onfail) {
	exec(onsucess, onfail, "NativeSettings", "open", []);
};

NativeSettings.prototype.openSetting = function(settingName, onsucess, onfail) {
	exec(onsucess, onfail, "NativeSettings", settingName, []);
};

NativeSettings.prototype.openBluetoothSettings = function (onsucess, onfail) {
    exec(onsucess, onfail, "NativeSettings", "openBluetoothSettings", []);
};

var NativeSettings = new NativeSettings();
module.exports = NativeSettings;
