.class Lcom/examples/tipcalc/TipsterActivity$1;
.super Ljava/lang/Object;
.source "TipsterActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/examples/tipcalc/TipsterActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 79
    iput-object p1, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    const v0, 0x7f050007

    if-eq p2, v0, :cond_0

    const v0, 0x7f050008

    if-ne p2, v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$300(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$100(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$200(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    :cond_1
    const v0, 0x7f050009

    if-ne p2, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 105
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$300(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$100(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$200(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # getter for: Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/examples/tipcalc/TipsterActivity;->access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$1;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # setter for: Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I
    invoke-static {v0, p2}, Lcom/examples/tipcalc/TipsterActivity;->access$402(Lcom/examples/tipcalc/TipsterActivity;I)I

    .line 111
    return-void

    :cond_3
    move v0, v2

    .line 91
    goto :goto_0

    :cond_4
    move v1, v2

    .line 105
    goto :goto_1
.end method
