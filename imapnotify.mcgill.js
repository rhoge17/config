var child_process = require('child_process');

function getStdout(cmd) {
  var stdout = child_process.execSync(cmd);
  return stdout.toString().trim();
}

exports.host = "outlook.office365.com";
exports.port = 993;
exports.tls = true;
exports.username = "richard.hoge@mcgill.ca";
exports.password = "*zryjek1"
exports.onNewMail = "mbsync -a";
exports.onNewMailPost = "emacsclient  -e '(mu4e-update-index)'";
exports.boxes = [ "Inbox"];
