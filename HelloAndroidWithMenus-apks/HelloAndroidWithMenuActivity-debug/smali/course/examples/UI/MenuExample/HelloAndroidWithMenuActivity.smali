.class public Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;
.super Landroid/app/Activity;
.source "HelloAndroidWithMenuActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ContextMenu Shown"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f060001
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->setContentView(I)V

    .line 19
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 58
    invoke-virtual {p0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 30
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f050001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 31
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 49
    :goto_0
    :pswitch_0
    return v0

    .line 39
    :pswitch_1
    invoke-virtual {p0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "you\'ve been helped"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p0}, Lcourse/examples/UI/MenuExample/HelloAndroidWithMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "you\'ve been helped more"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x7f060002
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
