var child_process = require('child_process');

function getStdout(cmd) {
  var stdout = child_process.execSync(cmd);
  return stdout.toString().trim();
}

exports.host = "imap.mail.me.com";
exports.port = 993;
exports.tls = true;
exports.username = "rickhoge";
exports.password = "taom-xclb-xefu-edhy";
exports.onNewMail = "mbsync -qq iCloud-inbox ; emacsclient  -e '(mu4e-update-index)'";
exports.boxes = [ "Inbox"];
