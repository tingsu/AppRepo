.class Lcom/examples/tipcalc/TipsterActivity$3;
.super Ljava/lang/Object;
.source "TipsterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 168
    iput-object p1, p0, Lcom/examples/tipcalc/TipsterActivity$3;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000c

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$3;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # invokes: Lcom/examples/tipcalc/TipsterActivity;->calculate()V
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$500(Lcom/examples/tipcalc/TipsterActivity;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity$3;->this$0:Lcom/examples/tipcalc/TipsterActivity;

    # invokes: Lcom/examples/tipcalc/TipsterActivity;->reset()V
    invoke-static {v0}, Lcom/examples/tipcalc/TipsterActivity;->access$600(Lcom/examples/tipcalc/TipsterActivity;)V

    goto :goto_0
.end method
