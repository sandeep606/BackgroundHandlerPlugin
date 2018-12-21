var exec = require("cordova/exec");

exports.startBGApp = function(arg0, success, error) {
  exec(success, error, "BGAppHandler", "startAppInBackground", [arg0]);
};
