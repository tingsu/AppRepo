.class Lcom/examples/tipcalc/TipsterActivity$2;
.super Ljava/lang/Object;
.source "TipsterActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/examples/tipcalc/TipsterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/examples/tipcalc/TipsterActivity;


# direct methods
.method constructor <init>(Lcom/examples/tipcalc/TipsterActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 158
    :goto_0
    return v1

    .line 149
    :sswitch_0
    iget-object v2, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;
    invoke-static {v2}, Lcom/examples/tipcalc/TipsterActivity;->access$300(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$100(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$200(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 153
    :sswitch_1
    iget-object v2, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;
    invoke-static {v2}, Lcom/examples/tipcalc/TipsterActivity;->access$300(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$100(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$200(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$2;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x7f050002 -> :sswitch_0
        0x7f050004 -> :sswitch_0
        0x7f05000a -> :sswitch_1
    .end sparse-switch
.end method
