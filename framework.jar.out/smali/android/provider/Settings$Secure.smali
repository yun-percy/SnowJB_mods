.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_COLOR_CONFIG_MODE:Ljava/lang/String; = "accessibility_color_config_mode"

.field public static final ACCESSIBILITY_COLOR_CONTRAST:Ljava/lang/String; = "accessibility_color_contrast"

.field public static final ACCESSIBILITY_COLOR_HUE:Ljava/lang/String; = "accessibility_color_hue"

.field public static final ACCESSIBILITY_COLOR_INTENSITY:Ljava/lang/String; = "accessibility_color_intensity"

.field public static final ACCESSIBILITY_COLOR_INVERT_ENABLED:Ljava/lang/String; = "accessibility_color_invert_enabled"

.field public static final ACCESSIBILITY_COLOR_SAT:Ljava/lang/String; = "accessibility_color_sat"

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "accessibility_script_injection_url"

.field public static final ACCESSIBILITY_SCRIPT_INJECTION:Ljava/lang/String; = "accessibility_script_injection"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field public static final ACCESSIBILITY_WEB_CONTENT_KEY_BINDINGS:Ljava/lang/String; = "accessibility_web_content_key_bindings"

.field public static final ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"

.field public static final ADMIN_LOCKED:Ljava/lang/String; = "admin_locked"

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final APN_LOCKED:Ljava/lang/String; = "apn_locked"

.field public static final APN_ONOFF_SETTING:Ljava/lang/String; = "apn_onoff_setting"

.field public static final ASSISTED_GPS_ENABLED:Ljava/lang/String; = "assisted_gps_enabled"

.field public static final AUTO_TETHER_ENABLE:Ljava/lang/String; = "auto_tether_enable"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BATTERY_DISCHARGE_DURATION_THRESHOLD:Ljava/lang/String; = "battery_discharge_duration_threshold"

.field public static final BATTERY_DISCHARGE_THRESHOLD:Ljava/lang/String; = "battery_discharge_threshold"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"

.field public static final BOOT_LOCK:Ljava/lang/String; = "boot_lock"

.field public static final CDMA_CELL_BROADCAST_SMS:Ljava/lang/String; = "cdma_cell_broadcast_sms"

.field public static final CDMA_ROAMING_MODE:Ljava/lang/String; = "roaming_settings"

.field public static final CDMA_SUBSCRIPTION_MODE:Ljava/lang/String; = "subscription_mode"

.field public static final CONNECTIVITY_CHANGE_DELAY:Ljava/lang/String; = "connectivity_change_delay"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0xbb8

.field public static final CONTACTS_PREAUTH_URI_EXPIRATION:Ljava/lang/String; = "contacts_preauth_uri_expiration"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ENCRYPTION:Ljava/lang/String; = "data_encryption"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS:Ljava/lang/String; = "data_stall_alarm_aggressive_delay_in_ms"

.field public static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS:Ljava/lang/String; = "data_stall_alarm_non_aggressive_delay_in_ms"

.field public static final DEFAULT_DNS_SERVER:Ljava/lang/String; = "default_dns_server"

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEFAULT_INSTALL_LOCATION:Ljava/lang/String; = "default_install_location"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DISK_FREE_CHANGE_REPORTING_THRESHOLD:Ljava/lang/String; = "disk_free_change_reporting_threshold"

.field public static final DISPLAY_SIZE_FORCED:Ljava/lang/String; = "display_size_forced"

.field public static final DOWNLOAD_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_max_bytes_over_mobile"

.field public static final DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_recommended_max_bytes_over_mobile"

.field public static final DROPBOX_AGE_SECONDS:Ljava/lang/String; = "dropbox_age_seconds"

.field public static final DROPBOX_MAX_FILES:Ljava/lang/String; = "dropbox_max_files"

.field public static final DROPBOX_QUOTA_KB:Ljava/lang/String; = "dropbox_quota_kb"

.field public static final DROPBOX_QUOTA_PERCENT:Ljava/lang/String; = "dropbox_quota_percent"

.field public static final DROPBOX_RESERVE_PERCENT:Ljava/lang/String; = "dropbox_reserve_percent"

.field public static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field public static final EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLE_MENU_WITHOUT_USIM:Ljava/lang/String; = "enable_menu_without_usim"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final ERROR_LOGCAT_PREFIX:Ljava/lang/String; = "logcat_for_"

.field public static final GLOBAL_HTTP_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global_http_proxy_exclusion_list"

.field public static final GLOBAL_HTTP_PROXY_HOST:Ljava/lang/String; = "global_http_proxy_host"

.field public static final GLOBAL_HTTP_PROXY_PORT:Ljava/lang/String; = "global_http_proxy_port"

.field public static final GPRS_REGISTER_CHECK_PERIOD_MS:Ljava/lang/String; = "gprs_register_check_period_ms"

.field public static final GUARD_DOM_DATA:Ljava/lang/String; = "rguard_domestic_data"

.field public static final GUARD_DOM_DATA_FORCED:Ljava/lang/String; = "rguard_domestic_data_forced"

.field public static final GUARD_DOM_VOICE:Ljava/lang/String; = "rguard_domestic_voice"

.field public static final GUARD_DOM_VOICE_FORCED:Ljava/lang/String; = "rguard_domestic_voice_forced"

.field public static final GUARD_INTL_DATA:Ljava/lang/String; = "rguard_international_data"

.field public static final GUARD_INTL_DATA_FORCED:Ljava/lang/String; = "rguard_international_data_forced"

.field public static final GUARD_INTL_OUTGOING_SMS:Ljava/lang/String; = "cbox_international_sms"

.field public static final GUARD_INTL_OUTGOING_SMS_FORCED:Ljava/lang/String; = "cbox_international_sms_forced"

.field public static final GUARD_INTL_VOICE:Ljava/lang/String; = "rguard_international_voice"

.field public static final GUARD_INTL_VOICE_FORCED:Ljava/lang/String; = "rguard_international_voice_forced"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INET_CONDITION_DEBOUNCE_DOWN_DELAY:Ljava/lang/String; = "inet_condition_debounce_down_delay"

.field public static final INET_CONDITION_DEBOUNCE_UP_DELAY:Ljava/lang/String; = "inet_condition_debounce_up_delay"

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final KT_SHOW_ROAMING_INDEX:Ljava/lang/String; = "kt_roaming_index"

.field public static final KT_SHOW_ROAMING_PREFIX:Ljava/lang/String; = "show_roaming_prefix"

.field public static final KT_SHOW_ROAMING_USER:Ljava/lang/String; = "kt_roaming_user"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final MEMCHECK_EXEC_END_TIME:Ljava/lang/String; = "memcheck_exec_end_time"

.field public static final MEMCHECK_EXEC_START_TIME:Ljava/lang/String; = "memcheck_exec_start_time"

.field public static final MEMCHECK_INTERVAL:Ljava/lang/String; = "memcheck_interval"

.field public static final MEMCHECK_LOG_REALTIME_INTERVAL:Ljava/lang/String; = "memcheck_log_realtime_interval"

.field public static final MEMCHECK_MIN_ALARM:Ljava/lang/String; = "memcheck_min_alarm"

.field public static final MEMCHECK_MIN_SCREEN_OFF:Ljava/lang/String; = "memcheck_min_screen_off"

.field public static final MEMCHECK_PHONE_ENABLED:Ljava/lang/String; = "memcheck_phone_enabled"

.field public static final MEMCHECK_PHONE_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_phone_hard"

.field public static final MEMCHECK_PHONE_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_phone_soft"

.field public static final MEMCHECK_RECHECK_INTERVAL:Ljava/lang/String; = "memcheck_recheck_interval"

.field public static final MEMCHECK_SYSTEM_ENABLED:Ljava/lang/String; = "memcheck_system_enabled"

.field public static final MEMCHECK_SYSTEM_HARD_THRESHOLD:Ljava/lang/String; = "memcheck_system_hard"

.field public static final MEMCHECK_SYSTEM_SOFT_THRESHOLD:Ljava/lang/String; = "memcheck_system_soft"

.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTIRAB_ONOFF_SETTING:Ljava/lang/String; = "multi_rab_setting"

.field public static final NETSTATS_DEV_BUCKET_DURATION:Ljava/lang/String; = "netstats_dev_bucket_duration"

.field public static final NETSTATS_DEV_DELETE_AGE:Ljava/lang/String; = "netstats_dev_delete_age"

.field public static final NETSTATS_DEV_PERSIST_BYTES:Ljava/lang/String; = "netstats_dev_persist_bytes"

.field public static final NETSTATS_DEV_ROTATE_AGE:Ljava/lang/String; = "netstats_dev_rotate_age"

.field public static final NETSTATS_ENABLED:Ljava/lang/String; = "netstats_enabled"

.field public static final NETSTATS_GLOBAL_ALERT_BYTES:Ljava/lang/String; = "netstats_global_alert_bytes"

.field public static final NETSTATS_POLL_INTERVAL:Ljava/lang/String; = "netstats_poll_interval"

.field public static final NETSTATS_REPORT_XT_OVER_DEV:Ljava/lang/String; = "netstats_report_xt_over_dev"

.field public static final NETSTATS_SAMPLE_ENABLED:Ljava/lang/String; = "netstats_sample_enabled"

.field public static final NETSTATS_TIME_CACHE_MAX_AGE:Ljava/lang/String; = "netstats_time_cache_max_age"

.field public static final NETSTATS_UID_BUCKET_DURATION:Ljava/lang/String; = "netstats_uid_bucket_duration"

.field public static final NETSTATS_UID_DELETE_AGE:Ljava/lang/String; = "netstats_uid_delete_age"

.field public static final NETSTATS_UID_PERSIST_BYTES:Ljava/lang/String; = "netstats_uid_persist_bytes"

.field public static final NETSTATS_UID_ROTATE_AGE:Ljava/lang/String; = "netstats_uid_rotate_age"

.field public static final NETSTATS_UID_TAG_BUCKET_DURATION:Ljava/lang/String; = "netstats_uid_tag_bucket_duration"

.field public static final NETSTATS_UID_TAG_DELETE_AGE:Ljava/lang/String; = "netstats_uid_tag_delete_age"

.field public static final NETSTATS_UID_TAG_PERSIST_BYTES:Ljava/lang/String; = "netstats_uid_tag_persist_bytes"

.field public static final NETSTATS_UID_TAG_ROTATE_AGE:Ljava/lang/String; = "netstats_uid_tag_rotate_age"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"

.field public static final NITZ_UPDATE_DIFF:Ljava/lang/String; = "nitz_update_diff"

.field public static final NITZ_UPDATE_SPACING:Ljava/lang/String; = "nitz_update_spacing"

.field public static final NSD_ON:Ljava/lang/String; = "nsd_on"

.field public static final NTP_SERVER:Ljava/lang/String; = "ntp_server"

.field public static final NTP_TIMEOUT:Ljava/lang/String; = "ntp_timeout"

.field public static final OEM_RAD_DIALER_POPUP:Ljava/lang/String; = "oem_rad_dialer_popup"

.field public static final OEM_RAD_SETTING:Ljava/lang/String; = "oem_rad_setting"

.field public static final OEM_RAD_TEST:Ljava/lang/String; = "oem_rad_test"

.field public static final OEM_RAD_TEST_RCV_PRFIX:Ljava/lang/String; = "oem_rad_test_rcv_prfix"

.field public static final OTA_DELAY:Ljava/lang/String; = "ota_delay"

.field public static final OTA_USIM_RUNNING:Ljava/lang/String; = "ota_usim_running"

.field public static final PACKAGE_VERIFIER_ENABLE:Ljava/lang/String; = "verifier_enable"

.field public static final PACKAGE_VERIFIER_TIMEOUT:Ljava/lang/String; = "verifier_timeout"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PDP_WATCHDOG_ERROR_POLL_COUNT:Ljava/lang/String; = "pdp_watchdog_error_poll_count"

.field public static final PDP_WATCHDOG_ERROR_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_error_poll_interval_ms"

.field public static final PDP_WATCHDOG_LONG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_long_poll_interval_ms"

.field public static final PDP_WATCHDOG_MAX_PDP_RESET_FAIL_COUNT:Ljava/lang/String; = "pdp_watchdog_max_pdp_reset_fail_count"

.field public static final PDP_WATCHDOG_POLL_INTERVAL_MS:Ljava/lang/String; = "pdp_watchdog_poll_interval_ms"

.field public static final PDP_WATCHDOG_TRIGGER_PACKET_COUNT:Ljava/lang/String; = "pdp_watchdog_trigger_packet_count"

.field public static final PORT_FORWARDING_ENABLE:Ljava/lang/String; = "port_forwarding_enable"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:Ljava/lang/String; = "preferred_cdma_subscription"

.field public static final PREFERRED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final READ_EXTERNAL_STORAGE_ENFORCED_DEFAULT:Ljava/lang/String; = "read_external_storage_enforced_default"

.field public static final REBOOT_INTERVAL:Ljava/lang/String; = "reboot_interval"

.field public static final REBOOT_START_TIME:Ljava/lang/String; = "reboot_start_time"

.field public static final REBOOT_WINDOW:Ljava/lang/String; = "reboot_window"

.field public static final REVSETTING_HIDDEN:Ljava/lang/String; = "revsetting_hidden"

.field public static final RMODE_DOM_DATA:Ljava/lang/String; = "roaming_mode_domestic_data"

.field public static final RMODE_DOM_DATA_FORCED:Ljava/lang/String; = "roaming_mode_domestic_data_forced"

.field public static final RMODE_DOM_VOICE:Ljava/lang/String; = "roaming_mode_domestic_voice"

.field public static final RMODE_DOM_VOICE_FORCED:Ljava/lang/String; = "roaming_mode_domestic_voice_forced"

.field public static final RMODE_INTL_DATA:Ljava/lang/String; = "roaming_mode_international_data"

.field public static final RMODE_INTL_DATA_FORCED:Ljava/lang/String; = "roaming_mode_international_data_forced"

.field public static final RMODE_INTL_VOICE:Ljava/lang/String; = "roaming_mode_international_voice"

.field public static final RMODE_INTL_VOICE_FORCED:Ljava/lang/String; = "roaming_mode_international_voice_forced"

.field public static final RMODE_SEL_SYSTEM:Ljava/lang/String; = "roaming_mode_selected_system"

.field public static final ROAMING_DUALCLOCK:Ljava/lang/String; = "roaming_dualclock"

.field public static final SAMPLING_PROFILER_MS:Ljava/lang/String; = "sampling_profiler_ms"

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field public static final SCREENSAVER_COMPONENT:Ljava/lang/String; = "screensaver_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field public static final SCREENSHOT_BLOCKED:Ljava/lang/String; = "screenshot_blocked"

.field public static final SD_ENCRYPTION:Ljava/lang/String; = "sd_encryption"

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field public static final SENDPDNTABLE_ENABLE_SAVE:Ljava/lang/String; = "SENDPDNTABLE_ENABLE_SAVE"

.field public static final SEND_ACTION_APP_ERROR:Ljava/lang/String; = "send_action_app_error"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SETUP_PREPAID_DATA_SERVICE_URL:Ljava/lang/String; = "setup_prepaid_data_service_url"

.field public static final SETUP_PREPAID_DETECTION_REDIR_HOST:Ljava/lang/String; = "setup_prepaid_detection_redir_host"

.field public static final SETUP_PREPAID_DETECTION_TARGET_URL:Ljava/lang/String; = "setup_prepaid_detection_target_url"

.field public static final SET_GLOBAL_HTTP_PROXY:Ljava/lang/String; = "set_global_http_proxy"

.field public static final SET_INSTALL_LOCATION:Ljava/lang/String; = "set_install_location"

.field public static final SHORT_KEYLIGHT_DELAY_MS:Ljava/lang/String; = "short_keylight_delay_ms"

.field public static final SIM_ERR_POPUP_MSG:Ljava/lang/String; = "sim_err_popup_msg"

.field public static final SKT_AUTO_APPTEST_ONOFF:Ljava/lang/String; = "skt_autoapptest_onoff"

.field public static final SKT_OTA_USIM_DOWNLOAD:Ljava/lang/String; = "skt_ota_usim_download"

.field public static final SKT_ROAMING_DUALCLOCK:Ljava/lang/String; = "skt_roaming_dualclock"

.field public static final SMS_OUTGOING_CHECK_INTERVAL_MS:Ljava/lang/String; = "sms_outgoing_check_interval_ms"

.field public static final SMS_OUTGOING_CHECK_MAX_COUNT:Ljava/lang/String; = "sms_outgoing_check_max_count"

.field public static final SMS_SHORT_CODES_PREFIX:Ljava/lang/String; = "sms_short_codes_"

.field public static final SOUND_GPS_ENABLED:Ljava/lang/String; = "sound_gps_enabled"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SYNC_MAX_RETRY_DELAY_IN_SECONDS:Ljava/lang/String; = "sync_max_retry_delay_in_seconds"

.field public static final SYS_FREE_STORAGE_LOG_INTERVAL:Ljava/lang/String; = "sys_free_storage_log_interval"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final SYS_STORAGE_FULL_THRESHOLD_BYTES:Ljava/lang/String; = "sys_storage_full_threshold_bytes"

.field public static final SYS_STORAGE_THRESHOLD_MAX_BYTES:Ljava/lang/String; = "sys_storage_threshold_max_bytes"

.field public static final SYS_STORAGE_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "sys_storage_threshold_percentage"

.field public static final TEST_SIM_MODE:Ljava/lang/String; = "test_sim_mode"

.field public static final TETHERING_BLOCKED:Ljava/lang/String; = "tethering_blocked"

.field public static final TETHERING_PDN_SET:Ljava/lang/String; = "tethering_pdn"

.field public static final TETHER_DUN_APN:Ljava/lang/String; = "tether_dun_apn"

.field public static final TETHER_DUN_REQUIRED:Ljava/lang/String; = "tether_dun_required"

.field public static final TETHER_MODE_SAVE:Ljava/lang/String; = "tether_mode_save"

.field public static final TETHER_PORTFORWARD:Ljava/lang/String; = "tether_pf"

.field public static final TETHER_SUPPORTED:Ljava/lang/String; = "tether_supported"

.field public static final THROTTLE_HELP_URI:Ljava/lang/String; = "throttle_help_uri"

.field public static final THROTTLE_MAX_NTP_CACHE_AGE_SEC:Ljava/lang/String; = "throttle_max_ntp_cache_age_sec"

.field public static final THROTTLE_NOTIFICATION_TYPE:Ljava/lang/String; = "throttle_notification_type"

.field public static final THROTTLE_POLLING_SEC:Ljava/lang/String; = "throttle_polling_sec"

.field public static final THROTTLE_RESET_DAY:Ljava/lang/String; = "throttle_reset_day"

.field public static final THROTTLE_THRESHOLD_BYTES:Ljava/lang/String; = "throttle_threshold_bytes"

.field public static final THROTTLE_VALUE_KBITSPS:Ljava/lang/String; = "throttle_value_kbitsps"

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final USB_BLOCKED:Ljava/lang/String; = "usb_blocked"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"

.field public static final USIM_PERSO_CONTROL_KEY:Ljava/lang/String; = "usim_perso_control_key"

.field public static final USIM_PERSO_IMSI:Ljava/lang/String; = "usim_perso_imsi"

.field public static final USIM_PERSO_LOCKED:Ljava/lang/String; = "usim_perso_locked"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final WEB_AUTOFILL_QUERY_URL:Ljava/lang/String; = "web_autofill_query_url"

.field public static final WIFI_AP_PASSWD:Ljava/lang/String; = "wifi_ap_passwd"

.field public static final WIFI_AP_SECURITY:Ljava/lang/String; = "wifi_ap_security"

.field public static final WIFI_AP_SSID:Ljava/lang/String; = "wifi_ap_ssid"

.field public static final WIFI_COUNTRY_CODE:Ljava/lang/String; = "wifi_country_code"

.field public static final WIFI_FRAMEWORK_SCAN_INTERVAL_MS:Ljava/lang/String; = "wifi_framework_scan_interval_ms"

.field public static final WIFI_FREQUENCY_BAND:Ljava/lang/String; = "wifi_frequency_band"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"

.field public static final WIFI_P2P_DEVICE_NAME:Ljava/lang/String; = "wifi_p2p_device_name"

.field public static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"

.field public static final WIFI_SUPPLICANT_SCAN_INTERVAL_MS:Ljava/lang/String; = "wifi_supplicant_scan_interval_ms"

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ARP_CHECK_INTERVAL_MS:Ljava/lang/String; = "wifi_watchdog_arp_interval_ms"

.field public static final WIFI_WATCHDOG_ARP_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_arp_ping_timeout_ms"

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MIN_ARP_RESPONSES:Ljava/lang/String; = "wifi_watchdog_min_arp_responses"

.field public static final WIFI_WATCHDOG_NUM_ARP_PINGS:Ljava/lang/String; = "wifi_watchdog_num_arp_pings"

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED:Ljava/lang/String; = "wifi_watchdog_poor_network_test_enabled"

.field public static final WIFI_WATCHDOG_RSSI_FETCH_INTERVAL_MS:Ljava/lang/String; = "wifi_watchdog_rssi_fetch_interval_ms"

.field public static final WIFI_WATCHDOG_WALLED_GARDEN_INTERVAL_MS:Ljava/lang/String; = "wifi_watchdog_walled_garden_interval_ms"

.field public static final WIFI_WATCHDOG_WALLED_GARDEN_TEST_ENABLED:Ljava/lang/String; = "wifi_watchdog_walled_garden_test_enabled"

.field public static final WIFI_WATCHDOG_WALLED_GARDEN_URL:Ljava/lang/String; = "wifi_watchdog_walled_garden_url"

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIMAX_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wimax_networks_available_notification_on"

.field public static final WTF_IS_FATAL:Ljava/lang/String; = "wtf_is_fatal"

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 2990
    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 2992
    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 2997
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 2998
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2999
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3000
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3345
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 5470
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "parental_control_enabled"

    aput-object v2, v0, v1

    const-string/jumbo v1, "parental_control_redirect_url"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "usb_mass_storage_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "accessibility_script_injection"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "backup_auto_restore"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enabled_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "touch_exploration_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accessibility_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "speak_password"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tts_use_defaults"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "tts_default_pitch"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tts_default_synth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "tts_default_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "tts_default_country"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "tts_enabled_plugins"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tts_default_locale"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "wifi_num_open_networks_kept"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "mount_play_not_snd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "mount_ums_autostart"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "mount_ums_prompt"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "mount_ums_notify_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ui_night_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "skt_roaming_dualclock"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "show_roaming_prefix"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "kt_roaming_index"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "kt_roaming_user"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "roaming_dualclock"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "lock_screen_owner_info"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "lock_screen_owner_info_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "revsetting_hidden"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2986
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static final getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_sink_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 3385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_headset_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_input_device_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3314
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3315
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3316
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3319
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3320
    :catch_0
    move-exception v0

    .line 3321
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3286
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3288
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3290
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3289
    .restart local p2
    :catch_0
    move-exception v0

    .line 3290
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3097
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3099
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3100
    :catch_0
    move-exception v0

    .line 3101
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3069
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3071
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3073
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3072
    .restart local p2
    :catch_0
    move-exception v0

    .line 3073
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .parameter "cr"
    .parameter "name"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3127
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3128
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3129
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3130
    .local v2, valArray:[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 3132
    :try_start_0
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3133
    :catch_0
    move-exception v0

    .line 3134
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "Settings"

    const-string v4, "Exception while parsing Integer: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3138
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #valArray:[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v3, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3246
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3248
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 3249
    :catch_0
    move-exception v0

    .line 3250
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3217
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3220
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3224
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 3220
    goto :goto_0

    .line 3221
    :catch_0
    move-exception v0

    .line 3222
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 3010
    const-class v1, Landroid/provider/Settings$Secure;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 3011
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_secure_version"

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_secure"

    invoke-direct {v0, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3015
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_1

    .line 3016
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 3018
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    .line 3020
    :cond_1
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 3023
    :try_start_1
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v2, "0"

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 3029
    :goto_1
    monitor-exit v1

    return-object v0

    .line 3018
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3024
    :catch_0
    move-exception v0

    .line 3029
    :cond_3
    :try_start_2
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 3010
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 3051
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 5520
    const-string v1, "location_providers_allowed"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5521
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3339
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3155
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .parameter "cr"
    .parameter "name"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3174
    const-string v0, ""

    .line 3175
    .local v0, data:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3176
    .local v4, valArray:[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3178
    .local v3, v:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3179
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3183
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 3184
    const-string v2, ""

    .line 3185
    .local v2, str:Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 3186
    aget-object v2, v4, v1

    .line 3188
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3191
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3194
    if-eqz v4, :cond_3

    .line 3195
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 3196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3199
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3268
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3041
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 3
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 5537
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 5538
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    .line 5539
    .local v0, mdm:Lcom/lge/cappuccino/IMdm;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/lge/cappuccino/IMdm;->checkGpsPolicy(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5540
    const-string v1, "MDM"

    const-string v2, "Gps cannot be changed by Server Policy."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    .end local v0           #mdm:Lcom/lge/cappuccino/IMdm;
    :goto_0
    return-void

    .line 5546
    :cond_0
    if-eqz p2, :cond_1

    .line 5547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5551
    :goto_1
    const-string v1, "location_providers_allowed"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 5549
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
