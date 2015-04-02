.class public Lcom/brocktice/JustSit/JustSit;
.super Landroid/app/Activity;
.source "JustSit.java"


# static fields
.field private static final ACTIVITY_MEDITATE:I = 0x1

.field private static final ACTIVITY_PREP:I = 0x0

.field public static final AIRPLANE_MODE:Ljava/lang/String; = "airplaneMode"

.field public static final CURRENT_PREFS_VERSION:I = 0x2

.field public static final DEBUGLOGGING:Ljava/lang/Boolean;

.field public static final FALSE:I = 0x0

.field public static final MAXIMIZE_VOLUME:Ljava/lang/String; = "maximizeVolume"

.field public static final MEDITATION_MINUTES:Ljava/lang/String; = "meditationMinutes"

.field public static final ORIG_AIRPLANE_MODE:Ljava/lang/String; = "originalAirplaneMode"

.field public static final ORIG_MEDIA_VOLUME:Ljava/lang/String; = "originalMediaVolume"

.field public static final ORIG_RINGER_MODE:Ljava/lang/String; = "originalRingerMode"

.field public static final PREFS_NAME:Ljava/lang/String; = "JustSitPreferences"

.field public static final PREFS_VERSION:Ljava/lang/String; = "prefsVersion"

.field public static final PREP_SECONDS:Ljava/lang/String; = "prepSeconds"

.field public static final SCREEN_ON:Ljava/lang/String; = "screenOn"

.field public static final SILENT_MODE:Ljava/lang/String; = "silentMode"

.field private static final TAG:Ljava/lang/String; = "JustSit"

.field public static final TIMER_COMPLETE:I = 0x1

.field public static final TIMER_DURATION:Ljava/lang/String; = "timer_duration"

.field public static final TIMER_LABEL:Ljava/lang/String; = "timer_label"

.field public static final TRUE:I = 0x1


# instance fields
.field private launchRunTimer:Landroid/view/View$OnClickListener;

.field private mAirplaneMode:Ljava/lang/Boolean;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMaximizeVolume:Ljava/lang/Boolean;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMeditateDown:Landroid/widget/ImageView;

.field private mMeditateText:Landroid/widget/EditText;

.field private mMeditateUp:Landroid/widget/ImageView;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPrepDown:Landroid/widget/ImageView;

.field private mPrepText:Landroid/widget/EditText;

.field private mPrepUp:Landroid/widget/ImageView;

.field private mScreenOn:Ljava/lang/Boolean;

.field private mSilentMode:Ljava/lang/Boolean;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/brocktice/JustSit/JustSit;->DEBUGLOGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 234
    new-instance v0, Lcom/brocktice/JustSit/JustSit$5;

    invoke-direct {v0, p0}, Lcom/brocktice/JustSit/JustSit$5;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    iput-object v0, p0, Lcom/brocktice/JustSit/JustSit;->launchRunTimer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/brocktice/JustSit/JustSit;)V
    .locals 0
    .param p0, "x0"    # Lcom/brocktice/JustSit/JustSit;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->incrementPrepTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/brocktice/JustSit/JustSit;)V
    .locals 0
    .param p0, "x0"    # Lcom/brocktice/JustSit/JustSit;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->decrementPrepTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/brocktice/JustSit/JustSit;)V
    .locals 0
    .param p0, "x0"    # Lcom/brocktice/JustSit/JustSit;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->incrementMeditateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/brocktice/JustSit/JustSit;)V
    .locals 0
    .param p0, "x0"    # Lcom/brocktice/JustSit/JustSit;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->decrementMeditateTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/brocktice/JustSit/JustSit;)J
    .locals 2
    .param p0, "x0"    # Lcom/brocktice/JustSit/JustSit;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getPrepTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private decrementMeditateTime()V
    .locals 2

    .prologue
    .line 231
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->modifyMeditateTime(J)V

    .line 232
    return-void
.end method

.method private decrementPrepTime()V
    .locals 2

    .prologue
    .line 223
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->modifyPrepTime(J)V

    .line 224
    return-void
.end method

.method private getMeditateTime()J
    .locals 7

    .prologue
    const v6, 0x7f050007

    .line 191
    :try_start_0
    iget-object v4, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 199
    .local v2, "meditateTime":J
    :goto_0
    return-wide v2

    .line 192
    .end local v2    # "meditateTime":J
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/NumberFormatException;
    const v4, 0x7f050013

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 194
    .local v0, "badFormatToast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    invoke-virtual {p0, v6}, Lcom/brocktice/JustSit/JustSit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 196
    .restart local v2    # "meditateTime":J
    iget-object v4, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateText:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/brocktice/JustSit/JustSit;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const-string v4, "JustSit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Using default meditation time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPrepTime()J
    .locals 7

    .prologue
    const v6, 0x7f050006

    .line 177
    :try_start_0
    iget-object v4, p0, Lcom/brocktice/JustSit/JustSit;->mPrepText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 185
    .local v2, "prepTime":J
    :goto_0
    return-wide v2

    .line 178
    .end local v2    # "prepTime":J
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/NumberFormatException;
    const v4, 0x7f050012

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 180
    .local v0, "badFormatToast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0, v6}, Lcom/brocktice/JustSit/JustSit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 182
    .restart local v2    # "prepTime":J
    iget-object v4, p0, Lcom/brocktice/JustSit/JustSit;->mPrepText:Landroid/widget/EditText;

    invoke-virtual {p0, v6}, Lcom/brocktice/JustSit/JustSit;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const-string v4, "JustSit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Using default prep time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private incrementMeditateTime()V
    .locals 2

    .prologue
    .line 227
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->modifyMeditateTime(J)V

    .line 228
    return-void
.end method

.method private incrementPrepTime()V
    .locals 2

    .prologue
    .line 219
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->modifyPrepTime(J)V

    .line 220
    return-void
.end method

.method private launchAbout()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brocktice/JustSit/JsAbout;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/brocktice/JustSit/JustSit;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method private launchSettings()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brocktice/JustSit/JsSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/brocktice/JustSit/JustSit;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private modifyMeditateTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getMeditateTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->setMeditateTime(J)V

    .line 216
    return-void
.end method

.method private modifyPrepTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getPrepTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/brocktice/JustSit/JustSit;->setPrepTime(J)V

    .line 212
    return-void
.end method

.method private setMeditateTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 207
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method private setPrepTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 203
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit;->mPrepText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method


# virtual methods
.method public lockScreenOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    const-string v1, "JustSitPreferences"

    invoke-virtual {p0, v1, v2}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 437
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "screenOn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mScreenOn:Ljava/lang/Boolean;

    .line 438
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 441
    :cond_0
    return-void
.end method

.method protected meditationSettings(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->updateMeditationSettings()V

    .line 415
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit;->mAirplaneMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/brocktice/JustSit/JustSit;->setAirplaneMode(Z)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit;->mSilentMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0, p1}, Lcom/brocktice/JustSit/JustSit;->setSilentMode(Z)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit;->mMaximizeVolume:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    invoke-virtual {p0, p1}, Lcom/brocktice/JustSit/JustSit;->setMediaVolume(Z)V

    .line 433
    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v9, 0x3e8

    const/high16 v6, 0x7f040000

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    if-ne p2, v8, :cond_3

    .line 260
    const-string v3, "JustSitPreferences"

    invoke-virtual {p0, v3, v5}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v3, "silentMode"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 263
    .local v2, "silent":Z
    packed-switch p1, :pswitch_data_0

    .line 315
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    .end local v2    # "silent":Z
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local v1    # "settings":Landroid/content/SharedPreferences;
    .restart local v2    # "silent":Z
    :pswitch_0
    if-eqz v2, :cond_1

    .line 266
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 273
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/brocktice/JustSit/RunTimer;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "timer_label"

    const v4, 0x7f050005

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v3, "timer_duration"

    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getMeditateTime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0, v8}, Lcom/brocktice/JustSit/JustSit;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 269
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    invoke-static {p0, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 270
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 271
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 279
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/brocktice/JustSit/JustSit;->meditationSettings(Z)V

    .line 280
    if-eqz v2, :cond_2

    .line 281
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 283
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 284
    invoke-static {p0, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 285
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 286
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/brocktice/JustSit/JustSit$6;

    invoke-direct {v4, p0}, Lcom/brocktice/JustSit/JustSit$6;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 301
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 305
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    .end local v2    # "silent":Z
    :cond_3
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 311
    :cond_4
    invoke-virtual {p0, v5}, Lcom/brocktice/JustSit/JustSit;->meditationSettings(Z)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x1e

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->setContentView(I)V

    .line 90
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mPrepText:Landroid/widget/EditText;

    .line 91
    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateText:Landroid/widget/EditText;

    .line 93
    const-string v3, "JustSitPreferences"

    invoke-virtual {p0, v3, v4}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "prefsVersion"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v3, "prefsVersion"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    :cond_0
    const-string v3, "prepSeconds"

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/brocktice/JustSit/JustSit;->setPrepTime(J)V

    .line 102
    const-string v3, "meditationMinutes"

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/brocktice/JustSit/JustSit;->setMeditateTime(J)V

    .line 104
    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->updateMeditationSettings()V

    .line 106
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mPrepUp:Landroid/widget/ImageView;

    .line 107
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mPrepDown:Landroid/widget/ImageView;

    .line 108
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateUp:Landroid/widget/ImageView;

    .line 109
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateDown:Landroid/widget/ImageView;

    .line 110
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mVibrator:Landroid/os/Vibrator;

    .line 114
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 115
    .local v2, "sitButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->launchRunTimer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mPrepUp:Landroid/widget/ImageView;

    new-instance v4, Lcom/brocktice/JustSit/JustSit$1;

    invoke-direct {v4, p0}, Lcom/brocktice/JustSit/JustSit$1;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mPrepDown:Landroid/widget/ImageView;

    new-instance v4, Lcom/brocktice/JustSit/JustSit$2;

    invoke-direct {v4, p0}, Lcom/brocktice/JustSit/JustSit$2;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateUp:Landroid/widget/ImageView;

    new-instance v4, Lcom/brocktice/JustSit/JustSit$3;

    invoke-direct {v4, p0}, Lcom/brocktice/JustSit/JustSit$3;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mMeditateDown:Landroid/widget/ImageView;

    new-instance v4, Lcom/brocktice/JustSit/JustSit$4;

    invoke-direct {v4, p0}, Lcom/brocktice/JustSit/JustSit$4;-><init>(Lcom/brocktice/JustSit/JustSit;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    const/4 v1, 0x1

    return v1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->launchSettings()V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->launchAbout()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x7f070013
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/brocktice/JustSit/JustSit;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 248
    const-string v2, "JustSitPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "prepSeconds"

    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getPrepTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v2, "meditationMinutes"

    invoke-direct {p0}, Lcom/brocktice/JustSit/JustSit;->getMeditateTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method protected setAirplaneMode(Z)V
    .locals 10
    .param p1, "on"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const-string v5, "JustSitPreferences"

    invoke-virtual {p0, v5, v8}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 319
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 320
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 323
    :try_start_0
    const-string v5, "originalAirplaneMode"

    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    :cond_0
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/JustSit;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void

    .line 327
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "JustSit"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/brocktice/JustSit/JustSit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const-string v7, "originalAirplaneMode"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v5, "originalAirplaneMode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 336
    const v5, 0x7f050011

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 337
    .local v0, "airplaneToast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected setMediaVolume(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 392
    const-string v2, "JustSitPreferences"

    invoke-virtual {p0, v2, v6}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 393
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 394
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 396
    const-string v2, "originalMediaVolume"

    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    iget-object v2, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "originalMediaVolume"

    iget-object v4, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method protected setPartialWakeLock(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 377
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 378
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JustSit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 379
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "JustSit"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 381
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    if-eqz p1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 387
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method protected setScreenLock(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 360
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 361
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JustSit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 362
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "JustSit"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    if-eqz p1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 371
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method protected setSilentMode(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 347
    const-string v2, "JustSitPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 351
    const-string v2, "originalRingerMode"

    iget-object v3, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    iget-object v2, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/brocktice/JustSit/JustSit;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "originalRingerMode"

    const/4 v4, 0x2

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method protected updateMeditationSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v1, "JustSitPreferences"

    invoke-virtual {p0, v1, v2}, Lcom/brocktice/JustSit/JustSit;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "airplaneMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mAirplaneMode:Ljava/lang/Boolean;

    .line 408
    const-string v1, "screenOn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mScreenOn:Ljava/lang/Boolean;

    .line 409
    const-string v1, "silentMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mSilentMode:Ljava/lang/Boolean;

    .line 410
    const-string v1, "maximizeVolume"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/brocktice/JustSit/JustSit;->mMaximizeVolume:Ljava/lang/Boolean;

    .line 411
    return-void
.end method
