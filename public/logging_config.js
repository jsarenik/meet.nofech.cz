var loggingConfig = {
defaultLogLevel: 'info',
disableLogCollector: true,
'modules/RTC/TraceablePeerConnection.js': 'info',
'modules/statistics/CallStats.js': 'info',
'modules/xmpp/strophe.util.js': 'log'
};
typeof module === 'object'
&& typeof exports === 'object'
&& (module.exports = loggingConfig);
