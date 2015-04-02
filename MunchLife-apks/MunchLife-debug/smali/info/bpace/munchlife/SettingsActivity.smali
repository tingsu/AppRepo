.class public Linfo/bpace/munchlife/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field levelListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    new-instance v0, Linfo/bpace/munchlife/SettingsActivity$1;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/SettingsActivity$1;-><init>(Linfo/bpace/munchlife/SettingsActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/SettingsActivity;->levelListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Linfo/bpace/munchlife/SettingsActivity;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Linfo/bpace/munchlife/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "maxlevelPref"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    .local v0, "levelPreference":Landroid/preference/Preference;
    iget-object v1, p0, Linfo/bpace/munchlife/SettingsActivity;->levelListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    return-void
.end method
