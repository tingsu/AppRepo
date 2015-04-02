.class Linfo/bpace/munchlife/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/bpace/munchlife/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/bpace/munchlife/SettingsActivity;


# direct methods
.method constructor <init>(Linfo/bpace/munchlife/SettingsActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Linfo/bpace/munchlife/SettingsActivity$1;->this$0:Linfo/bpace/munchlife/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    const/4 v1, 0x0

    .line 36
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    if-le v1, v2, :cond_0

    const/16 v4, 0x64

    if-gt v1, v4, :cond_0

    .line 53
    :goto_1
    return v2

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "error":Ljava/lang/NumberFormatException;
    const-string v4, "MunchLife"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0    # "error":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v2, p0, Linfo/bpace/munchlife/SettingsActivity$1;->this$0:Linfo/bpace/munchlife/SettingsActivity;

    invoke-virtual {v2}, Linfo/bpace/munchlife/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f070011

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v3

    .line 53
    goto :goto_1
.end method
