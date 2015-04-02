.class Lcom/examples/tipcalc/TipsterActivity$4;
.super Ljava/lang/Object;
.source "TipsterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/examples/tipcalc/TipsterActivity;->showErrorAlert(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/examples/tipcalc/TipsterActivity;

.field final synthetic val$fieldId:I


# direct methods
.method constructor <init>(Lcom/examples/tipcalc/TipsterActivity;I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/examples/tipcalc/TipsterActivity$4;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    iput p2, p0, Lcom/examples/tipcalc/TipsterActivity$4;->val$fieldId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$4;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    iget v1, p0, Lcom/examples/tipcalc/TipsterActivity$4;->val$fieldId:I

    invoke-virtual {v0, v1}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 285
    return-void
.end method
