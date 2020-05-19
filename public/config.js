var config = {
hosts: {
domain: 'meet.jitsi',
muc: 'muc.meet.jitsi'
},
bosh: '/http-bind',
clientNode: 'http://jitsi.org/jitsimeet',
focusUserJid: 'focus@auth.meet.jitsi',
testing: {
p2pTestMode: false
},
enableNoAudioDetection: true,
enableNoisyMicDetection: true,
desktopSharingChromeExtId: null,
desktopSharingChromeSources: [ 'screen', 'window', 'tab' ],
desktopSharingChromeMinExtVersion: '0.1',
channelLastN: -1,
useNicks: true,
requireDisplayName: false,
enableWelcomePage: true,
defaultLanguage: 'cs',
enableUserRolesBasedOnToken: false,
p2p: {
enabled: true,
stunServers: [
{ urls: "stun:stun.l.google.com:19302" },
{ urls: "stun:stun1.l.google.com:19302" },
{ urls: "stun:stun2.l.google.com:19302" }
],
preferH264: true
},
analytics: {
},
deploymentInfo: {
},
makeJsonParserHappy: 'even if last key had a trailing comma'
};
