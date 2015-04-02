.class public Lcom/brocktice/JustSit/JsSettings;
.super Landroid/app/Activity;
.source "JsSettings.java"


# instance fields
.field private mAirplaneMode:Landroid/widget/CheckBox;

.field private mMaximizeVolume:Landroid/widget/CheckBox;

.field private mScreenOn:Landroid/widget/CheckBox;

.field private mSilentMode:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JsSettings;->setContentView(I)V

    .line 35
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mAirplaneMode:Landroid/widget/CheckBox;

    .line 36
    const v1, 0x7f07000f

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mScreenOn:Landroid/widget/CheckBox;

    .line 37
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mSilentMode:Landroid/widget/CheckBox;

    .line 38
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/brocktice/JustSit/JsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mMaximizeVolume:Landroid/widget/CheckBox;

    .line 40
    const-string v1, "JustSitPreferences"

    invoke-virtual {p0, v1, v3}, Lcom/brocktice/JustSit/JsSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "settings":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mAirplaneMode:Landroid/widget/CheckBox;

    const-string v2, "airplaneMode"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mScreenOn:Landroid/widget/CheckBox;

    const-string v2, "screenOn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mSilentMode:Landroid/widget/CheckBox;

    const-string v2, "silentMode"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object v1, p0, Lcom/brocktice/JustSit/JsSettings;->mMaximizeVolume:Landroid/widget/CheckBox;

    const-string v2, "maximizeVolume"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    const-string v2, "JustSitPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/brocktice/JustSit/JsSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "airplaneMode"

    iget-object v3, p0, Lcom/brocktice/JustSit/JsSettings;->mAirplaneMode:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    const-string v2, "screenOn"

    iget-object v3, p0, Lcom/brocktice/JustSit/JsSettings;->mScreenOn:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string v2, "silentMode"

    iget-object v3, p0, Lcom/brocktice/JustSit/JsSettings;->mSilentMode:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v2, "maximizeVolume"

    iget-object v3, p0, Lcom/brocktice/JustSit/JsSettings;->mMaximizeVolume:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method
