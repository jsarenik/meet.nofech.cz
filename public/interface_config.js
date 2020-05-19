var interfaceConfig = {
DEFAULT_BACKGROUND: '#274727',
/**
* Whether or not the blurred video background for large video should be
* displayed on browsers that can support it.
*/
DISABLE_VIDEO_BACKGROUND: false,
INITIAL_TOOLBAR_TIMEOUT: 20000,
TOOLBAR_TIMEOUT: 4000,
TOOLBAR_ALWAYS_VISIBLE: false,
DEFAULT_REMOTE_DISPLAY_NAME: 'Fellow Jitster',
DEFAULT_LOCAL_DISPLAY_NAME: 'me',
SHOW_JITSI_WATERMARK: false,
JITSI_WATERMARK_LINK: 'https://jitsi.org',
SHOW_WATERMARK_FOR_GUESTS: true,
SHOW_BRAND_WATERMARK: false,
BRAND_WATERMARK_LINK: '',
SHOW_POWERED_BY: false,
SHOW_DEEP_LINKING_IMAGE: false,
GENERATE_ROOMNAMES_ON_WELCOME_PAGE: true,
DISPLAY_WELCOME_PAGE_CONTENT: true,
DISPLAY_WELCOME_PAGE_TOOLBAR_ADDITIONAL_CONTENT: false,
APP_NAME: 'Jitsi Meet',
NATIVE_APP_NAME: 'Jitsi Meet',
PROVIDER_NAME: 'Jitsi',
LANG_DETECTION: true, // Allow i18n to detect the system language
INVITATION_POWERED_BY: true,
/**
* If we should show authentication block in profile
*/
AUTHENTICATION_ENABLE: true,
/**
* The name of the toolbar buttons to display in the toolbar. If present,
* the button will display. Exceptions are "livestreaming" and "recording"
* which also require being a moderator and some values in config.js to be
* enabled. Also, the "profile" button will not display for user's with a
* jwt.
*/
TOOLBAR_BUTTONS: [
'microphone', 'camera', 'closedcaptions', 'desktop', 'fullscreen',
'fodeviceselection', 'hangup', 'profile', 'info', 'chat', 'recording',
'livestreaming', 'etherpad', 'sharedvideo', 'settings', 'raisehand',
'videoquality', 'filmstrip', 'invite', 'feedback', 'stats', 'shortcuts',
'tileview', 'videobackgroundblur', 'download', 'help', 'mute-everyone',
'e2ee'
],
SETTINGS_SECTIONS: [ 'devices', 'language', 'moderator', 'profile', 'calendar' ],
VIDEO_LAYOUT_FIT: 'both',
/**
* Whether to only show the filmstrip (and hide the toolbar).
*/
filmStripOnly: false,
/**
* Whether to show thumbnails in filmstrip as a column instead of as a row.
*/
VERTICAL_FILMSTRIP: true,
CLOSE_PAGE_GUEST_HINT: false,
SHOW_PROMOTIONAL_CLOSE_PAGE: false,
RANDOM_AVATAR_URL_PREFIX: false,
RANDOM_AVATAR_URL_SUFFIX: false,
FILM_STRIP_MAX_HEIGHT: 120,
ENABLE_FEEDBACK_ANIMATION: false,
DISABLE_FOCUS_INDICATOR: false,
DISABLE_DOMINANT_SPEAKER_INDICATOR: false,
/**
* Whether the speech to text transcription subtitles panel is disabled.
* If {@code undefined}, defaults to {@code false}.
*
* @type {boolean}
*/
DISABLE_TRANSCRIPTION_SUBTITLES: false,
/**
* Whether the ringing sound in the call/ring overlay is disabled. If
* {@code undefined}, defaults to {@code false}.
*
* @type {boolean}
*/
DISABLE_RINGING: false,
AUDIO_LEVEL_PRIMARY_COLOR: 'rgba(255,255,255,0.4)',
AUDIO_LEVEL_SECONDARY_COLOR: 'rgba(255,255,255,0.2)',
POLICY_LOGO: null,
LOCAL_THUMBNAIL_RATIO: 16 / 9, // 16:9
REMOTE_THUMBNAIL_RATIO: 1, // 1:1
LIVE_STREAMING_HELP_LINK: 'https://jitsi.org/live',
/**
* Whether the mobile app Jitsi Meet is to be promoted to participants
* attempting to join a conference in a mobile Web browser. If
* {@code undefined}, defaults to {@code true}.
*
* @type {boolean}
*/
MOBILE_APP_PROMO: true,
/**
* Maximum coeficient of the ratio of the large video to the visible area
* after the large video is scaled to fit the window.
*
* @type {number}
*/
MAXIMUM_ZOOMING_COEFFICIENT: 1.3,
/*
* If indicated some of the error dialogs may point to the support URL for
* help.
*/
SUPPORT_URL: 'https://community.jitsi.org/',
/**
* Whether the connection indicator icon should hide itself based on
* connection strength. If true, the connection indicator will remain
* displayed while the participant has a weak connection and will hide
* itself after the CONNECTION_INDICATOR_HIDE_TIMEOUT when the connection is
* strong.
*
* @type {boolean}
*/
CONNECTION_INDICATOR_AUTO_HIDE_ENABLED: true,
/**
* How long the connection indicator should remain displayed before hiding.
* Used in conjunction with CONNECTION_INDICATOR_AUTOHIDE_ENABLED.
*
* @type {number}
*/
CONNECTION_INDICATOR_AUTO_HIDE_TIMEOUT: 5000,
/**
* If true, hides the connection indicators completely.
*
* @type {boolean}
*/
CONNECTION_INDICATOR_DISABLED: false,
/**
* If true, hides the video quality label indicating the resolution status
* of the current large video.
*
* @type {boolean}
*/
VIDEO_QUALITY_LABEL_DISABLED: false,
/**
* If true, will display recent list
*
* @type {boolean}
*/
RECENT_LIST_ENABLED: true,
OPTIMAL_BROWSERS: [ 'chrome', 'chromium', 'firefox', 'nwjs', 'electron', 'safari' ],
UNSUPPORTED_BROWSERS: [],
/**
* A UX mode where the last screen share participant is automatically
* pinned. Valid values are the string "remote-only" so remote participants
* get pinned but not local, otherwise any truthy value for all participants,
* and any falsy value to disable the feature.
*
* Note: this mode is experimental and subject to breakage.
*/
AUTO_PIN_LATEST_SCREEN_SHARE: 'remote-only',
/**
* If true, presence status: busy, calling, connected etc. is not displayed.
*/
DISABLE_PRESENCE_STATUS: false,
/**
* If true, notifications regarding joining/leaving are no longer displayed.
*/
DISABLE_JOIN_LEAVE_NOTIFICATIONS: false,
/**
* Decides whether the chrome extension banner should be rendered on the landing page and during the meeting.
* If this is set to false, the banner will not be rendered at all. If set to true, the check for extension(s)
* being already installed is done before rendering.
*/
SHOW_CHROME_EXTENSION_BANNER: false,
/**
* When enabled, the kick participant button will not be presented for users without a JWT
*/
/**
* How many columns the tile view can expand to. The respected range is
* between 1 and 5.
*/
/**
* Specify custom URL for downloading android mobile app.
*/
/**
* Specify URL for downloading ios mobile app.
*/
/**
* Specify mobile app scheme for opening the app from the mobile browser.
*/
/**
* Specify the Android app package name.
*/
/**
* Override the behavior of some notifications to remain displayed until
* explicitly dismissed through a user action. The value is how long, in
* milliseconds, those notifications should remain displayed.
*/
/**
INDICATOR_FONT_SIZES
MOBILE_DYNAMIC_LINK
PHONE_NUMBER_REGEX
*/
makeJsonParserHappy: 'even if last key had a trailing comma'
};
