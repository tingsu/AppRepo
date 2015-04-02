.class public Lcom/brocktice/JustSit/RunTimer;
.super Landroid/app/Activity;
.source "RunTimer.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "JustSitPreferences"

.field private static final TAG:Ljava/lang/String; = "JustSit"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private mMillisLeft:J

.field private mScreenOn:Z

.field private mTimerLabel:Landroid/widget/TextView;

.field private mTimerView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brocktice/JustSit/RunTimer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/brocktice/JustSit/RunTimer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer;->mTimerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brocktice/JustSit/RunTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/brocktice/JustSit/RunTimer;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/brocktice/JustSit/RunTimer;->mMillisLeft:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/brocktice/JustSit/RunTimer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/brocktice/JustSit/RunTimer;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/brocktice/JustSit/RunTimer;->mMillisLeft:J

    return-wide p1
.end method


# virtual methods
.method protected calculateCountdownTime(II)I
    .locals 2
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 88
    mul-int/lit16 v0, p1, 0xe10

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public lockScreenOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v1, "JustSitPreferences"

    invoke-virtual {p0, v1, v2}, Lcom/brocktice/JustSit/RunTimer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "screenOn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brocktice/JustSit/RunTimer;->mScreenOn:Z

    .line 94
    iget-boolean v1, p0, Lcom/brocktice/JustSit/RunTimer;->mScreenOn:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/brocktice/JustSit/RunTimer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/RunTimer;->setContentView(I)V

    .line 43
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/RunTimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->mTimerView:Landroid/widget/TextView;

    .line 44
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/brocktice/JustSit/RunTimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->mTimerLabel:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/brocktice/JustSit/RunTimer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    .line 47
    iget-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/brocktice/JustSit/RunTimer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    const-string v4, "timer_label"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, "timer_label":I
    iget-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    const-string v4, "timer_duration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 53
    .local v0, "timer_duration":J
    iget-object v3, p0, Lcom/brocktice/JustSit/RunTimer;->mTimerLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/brocktice/JustSit/RunTimer;->runCountdown(J)V

    .line 57
    .end local v0    # "timer_duration":J
    .end local v2    # "timer_label":I
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    const-string v1, "timer_duration"

    iget-wide v2, p0, Lcom/brocktice/JustSit/RunTimer;->mMillisLeft:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method protected runCountdown(J)V
    .locals 6
    .param p1, "start_time"    # J

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/brocktice/JustSit/RunTimer;->lockScreenOn()V

    .line 68
    new-instance v0, Lcom/brocktice/JustSit/RunTimer$1;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/brocktice/JustSit/RunTimer$1;-><init>(Lcom/brocktice/JustSit/RunTimer;JJ)V

    invoke-virtual {v0}, Lcom/brocktice/JustSit/RunTimer$1;->start()Landroid/os/CountDownTimer;

    .line 85
    return-void
.end method
