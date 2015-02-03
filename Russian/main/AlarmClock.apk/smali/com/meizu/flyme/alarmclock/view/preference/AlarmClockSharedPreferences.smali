.class public Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;
.super Ljava/lang/Object;
.source "AlarmClockSharedPreferences.java"


# static fields
.field public static final KEY_TIMER_SINGLE_STEP_ID:Ljava/lang/String; = "timer_single_step_id"

.field public static final KEY_TIMER_SINGLE_STEP_LABEL:Ljava/lang/String; = "timer_single_step_label"

.field public static final KEY_TIMER_SINGLE_STEP_LENGTH:Ljava/lang/String; = "timer_quick_count"

.field public static final PREF_KEY_DEAULT_CITY_CODE:Ljava/lang/String; = "default_city_code"

.field public static final PREF_KEY_DEAULT_COUNTRY_CODE:Ljava/lang/String; = "default_country_code"

.field public static final PREF_KEY_DEAULT_TIMEZONE_ID:Ljava/lang/String; = "default_timezone_id"

.field public static final PREF_KEY_SET_ALARM_ALERT_FILENAME:Ljava/lang/String; = "set_alarm_alert_file_name"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.alarmclock_preferences"

.field static final TEMP_SHARED_PREFS_NAME:Ljava/lang/String; = "TempSharedPrefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmAlertFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v0, "set_alarm_alert_file_name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCityCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v0, "default_city_code"

    const-string v1, "Moscow"

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string v0, "default_country_code"

    const-string v1, "Russia"

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTimezoneId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string v0, "default_timezone_id"

    const-string v1, "108"

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 69
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 57
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "com.android.alarmclock_preferences"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTempSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getTempSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTempSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 98
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getTempSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getTempSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v0, "TempSharedPrefs"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static readSingleTimerStepFromSharedPref(Landroid/content/SharedPreferences;)Lcom/meizu/flyme/alarmclock/timer/StepContent;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 120
    new-instance v0, Lcom/meizu/flyme/alarmclock/timer/StepContent;

    invoke-direct {v0}, Lcom/meizu/flyme/alarmclock/timer/StepContent;-><init>()V

    .line 121
    .local v0, "stepContent":Lcom/meizu/flyme/alarmclock/timer/StepContent;
    const-string v1, "timer_single_step_id"

    const-wide/16 v2, -0x1

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/meizu/flyme/alarmclock/timer/StepContent;->id:J

    .line 122
    const-string v1, "timer_quick_count"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/meizu/flyme/alarmclock/timer/StepContent;->time:J

    .line 123
    const-string v1, "timer_single_step_label"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/alarmclock/timer/StepContent;->description:Ljava/lang/String;

    .line 124
    return-object v0
.end method

.method public static setAlarmAlertFileName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "set_alarm_alert_file_name"

    invoke-static {p0, v0, p1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static setDefaultCityCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "default_city_code"

    invoke-static {p0, v0, p1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static setDefaultCountryCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "default_country_code"

    invoke-static {p0, v0, p1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static setDefaultTimezoneId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "default_timezone_id"

    invoke-static {p0, v0, p1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v0, "com.android.alarmclock_preferences"

    const v1, 0x7f060003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 35
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    return-void
.end method

.method public static setSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 74
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public static setSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 62
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void
.end method

.method public static setTempSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getTempSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method

.method public static setTempSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 103
    invoke-static {p0}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getTempSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method public static setTimerAlarmPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v2, "timer_alarm"

    invoke-static {p0, v2, p1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "timer_alarm_version"

    const-wide/16 v3, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->getSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 52
    .local v0, "version":J
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 53
    const-string v2, "timer_alarm_version"

    invoke-static {p0, v2, v0, v1}, Lcom/meizu/flyme/alarmclock/view/preference/AlarmClockSharedPreferences;->setSharedPreferenceLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 54
    return-void
.end method

.method public static writeSingleTimerStepToSharedPref(Landroid/content/SharedPreferences;Lcom/meizu/flyme/alarmclock/timer/StepContent;)V
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "singleStep"    # Lcom/meizu/flyme/alarmclock/timer/StepContent;

    .prologue
    .line 110
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 111
    .local v1, "isNull":Z
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "timer_single_step_id"

    if-eqz v1, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v4, "timer_quick_count"

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    :goto_2
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v3, "timer_single_step_label"

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void

    .line 110
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isNull":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "isNull":Z
    :cond_1
    iget-wide v2, p1, Lcom/meizu/flyme/alarmclock/timer/StepContent;->id:J

    goto :goto_1

    .line 113
    :cond_2
    iget-wide v2, p1, Lcom/meizu/flyme/alarmclock/timer/StepContent;->time:J

    goto :goto_2

    .line 114
    :cond_3
    iget-object v2, p1, Lcom/meizu/flyme/alarmclock/timer/StepContent;->description:Ljava/lang/String;

    goto :goto_3
.end method
