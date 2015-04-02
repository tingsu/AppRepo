.class public Linfo/bpace/munchlife/MunchLifeActivity;
.super Landroid/app/Activity;
.source "MunchLifeActivity.java"


# static fields
.field public static final DIALOG_DICEROLLER:I = 0x1

.field public static final DIALOG_GAMEWIN:I = 0x0

.field public static final KEY_GEAR_LEVEL:Ljava/lang/String; = "savedGearLevel"

.field public static final KEY_GENDER_FEMALE:Ljava/lang/String; = "savedGenderFemale"

.field public static final KEY_LEVEL:Ljava/lang/String; = "savedLevel"

.field public static final TAG:Ljava/lang/String; = "MunchLife"


# instance fields
.field public current_gear_level:Landroid/widget/TextView;

.field public current_level:Landroid/widget/TextView;

.field public devDisplay:Landroid/view/Display;

.field private gearDownClickListener:Landroid/view/View$OnClickListener;

.field private gearUpClickListener:Landroid/view/View$OnClickListener;

.field public gear_level:I

.field public gender:Landroid/widget/ImageView;

.field private genderClickListener:Landroid/view/View$OnClickListener;

.field public gender_female:Z

.field public level:I

.field private levelDownClickListener:Landroid/view/View$OnClickListener;

.field private levelUpClickListener:Landroid/view/View$OnClickListener;

.field public max_level:I

.field public maxlevelPref:Ljava/lang/String;

.field pm:Landroid/os/PowerManager;

.field rollview:Landroid/widget/ImageView;

.field public sleepPref:Z

.field public total_level:Landroid/widget/TextView;

.field public victoryPref:Z

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    .line 336
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$3;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$3;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->levelUpClickListener:Landroid/view/View$OnClickListener;

    .line 358
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$4;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$4;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->levelDownClickListener:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$5;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$5;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gearUpClickListener:Landroid/view/View$OnClickListener;

    .line 386
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$6;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$6;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gearDownClickListener:Landroid/view/View$OnClickListener;

    .line 400
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$7;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$7;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    iput-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->genderClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const/high16 v6, 0x7f030000

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->setContentView(I)V

    .line 118
    const v6, 0x7f090001

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 119
    .local v3, "up_button":Landroid/widget/Button;
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->levelUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v6, 0x7f090005

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    .local v0, "down_button":Landroid/widget/Button;
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->levelDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v6, 0x7f090002

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 125
    .local v4, "up_gear_button":Landroid/widget/Button;
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gearUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, "down_gear_button":Landroid/widget/Button;
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gearDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v6, 0x7f090003

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    .line 131
    const v6, 0x7f090004

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_gear_level:Landroid/widget/TextView;

    .line 132
    const v6, 0x7f090007

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    .line 134
    const v6, 0x7f090008

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    .line 135
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    iget-object v9, p0, Linfo/bpace/munchlife/MunchLifeActivity;->genderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Linfo/bpace/munchlife/MunchLifeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v9, "fonts/windlass.ttf"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 139
    .local v2, "tf":Landroid/graphics/Typeface;
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_gear_level:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    if-eqz p1, :cond_0

    const-string v6, "savedLevel"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_0
    iput v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    .line 146
    if-eqz p1, :cond_1

    const-string v6, "savedGearLevel"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    iput v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    .line 148
    if-eqz p1, :cond_2

    const-string v6, "savedGenderFemale"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    iput-boolean v7, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    .line 150
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    iget v7, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_gear_level:Landroid/widget/TextView;

    iget v7, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    iget v7, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget v8, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const-string v6, "window"

    invoke-virtual {p0, v6}, Linfo/bpace/munchlife/MunchLifeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 156
    .local v5, "winManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->devDisplay:Landroid/view/Display;

    .line 158
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->devDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-nez v6, :cond_4

    .line 159
    iget-boolean v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    if-eqz v6, :cond_3

    .line 160
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_3
    return-void

    .end local v5    # "winManager":Landroid/view/WindowManager;
    :cond_0
    move v6, v7

    .line 144
    goto :goto_0

    :cond_1
    move v6, v8

    .line 146
    goto :goto_1

    :cond_2
    move v7, v8

    .line 148
    goto :goto_2

    .line 162
    .restart local v5    # "winManager":Landroid/view/WindowManager;
    :cond_3
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v7, 0x7f020007

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 165
    :cond_4
    iget-boolean v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    if-eqz v6, :cond_5

    .line 166
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 168
    :cond_5
    iget-object v6, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v7, 0x7f020006

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v7, 0x7f070009

    const/16 v6, 0x100

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    .line 256
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, "gamewinbuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070008

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 259
    new-instance v0, Linfo/bpace/munchlife/MunchLifeActivity$1;

    invoke-direct {v0, p0}, Linfo/bpace/munchlife/MunchLifeActivity$1;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    .line 266
    .local v0, "gamewinClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 269
    .end local v0    # "gamewinClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "gamewinbuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v3, "rollerbuilder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Linfo/bpace/munchlife/MunchLifeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    .line 271
    iget-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 273
    iget-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 274
    iget-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 275
    iget-object v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v2, Linfo/bpace/munchlife/MunchLifeActivity$2;

    invoke-direct {v2, p0}, Linfo/bpace/munchlife/MunchLifeActivity$2;-><init>(Linfo/bpace/munchlife/MunchLifeActivity;)V

    .line 284
    .local v2, "rollerClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v3, v7, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 214
    invoke-virtual {p0}, Linfo/bpace/munchlife/MunchLifeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 215
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 228
    :pswitch_0
    iput v1, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    .line 229
    const/4 v2, 0x0

    iput v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    .line 230
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    iget v3, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_gear_level:Landroid/widget/TextView;

    iget v3, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0, v1}, Linfo/bpace/munchlife/MunchLifeActivity;->showDialog(I)V

    goto :goto_0

    .line 238
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Linfo/bpace/munchlife/MunchLifeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Linfo/bpace/munchlife/SettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Linfo/bpace/munchlife/MunchLifeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x7f090009
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    iget-boolean v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->sleepPref:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 328
    :goto_0
    :pswitch_0
    return-void

    .line 302
    :pswitch_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 303
    .local v0, "rand":Ljava/util/Random;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    .local v1, "roll":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f02000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 313
    :pswitch_4
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 316
    :pswitch_5
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 319
    :pswitch_6
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 322
    :pswitch_7
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->rollview:Landroid/widget/ImageView;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 304
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    iget-boolean v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->sleepPref:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v0, "savedLevel"

    iget v1, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v0, "savedGearLevel"

    iget v1, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v0, "savedGenderFemale"

    iget-boolean v1, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 83
    const-string v2, "power"

    invoke-virtual {p0, v2}, Linfo/bpace/munchlife/MunchLifeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->pm:Landroid/os/PowerManager;

    .line 84
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->pm:Landroid/os/PowerManager;

    const/4 v3, 0x6

    const-string v4, "MunchLife"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->wl:Landroid/os/PowerManager$WakeLock;

    .line 86
    invoke-virtual {p0}, Linfo/bpace/munchlife/MunchLifeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sleepPref"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->sleepPref:Z

    .line 88
    const-string v2, "victoryPref"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->victoryPref:Z

    .line 89
    const-string v2, "maxlevelPref"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->maxlevelPref:Ljava/lang/String;

    .line 93
    :try_start_0
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->maxlevelPref:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget v3, p0, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    if-le v2, v3, :cond_0

    .line 103
    iget v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    iput v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    .line 104
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    iget v3, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    iget v3, p0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget v4, p0, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "error":Ljava/lang/NumberFormatException;
    const-string v2, "MunchLife"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v2, 0xa

    iput v2, p0, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    goto :goto_0
.end method
