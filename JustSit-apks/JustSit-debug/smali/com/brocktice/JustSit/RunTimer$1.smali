.class Lcom/brocktice/JustSit/RunTimer$1;
.super Landroid/os/CountDownTimer;
.source "RunTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brocktice/JustSit/RunTimer;->runCountdown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brocktice/JustSit/RunTimer;


# direct methods
.method constructor <init>(Lcom/brocktice/JustSit/RunTimer;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 68
    iput-object p1, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brocktice/JustSit/RunTimer;->setResult(I)V

    .line 82
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    invoke-virtual {v0}, Lcom/brocktice/JustSit/RunTimer;->finish()V

    .line 83
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 72
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    # getter for: Lcom/brocktice/JustSit/RunTimer;->mTimerView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/brocktice/JustSit/RunTimer;->access$000(Lcom/brocktice/JustSit/RunTimer;)Landroid/widget/TextView;

    move-result-object v0

    div-long v1, p1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    # setter for: Lcom/brocktice/JustSit/RunTimer;->mMillisLeft:J
    invoke-static {v0, p1, p2}, Lcom/brocktice/JustSit/RunTimer;->access$102(Lcom/brocktice/JustSit/RunTimer;J)J

    .line 74
    sget-object v0, Lcom/brocktice/JustSit/JustSit;->DEBUGLOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "JustSit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tick with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brocktice/JustSit/RunTimer$1;->this$0:Lcom/brocktice/JustSit/RunTimer;

    # getter for: Lcom/brocktice/JustSit/RunTimer;->mMillisLeft:J
    invoke-static {v2}, Lcom/brocktice/JustSit/RunTimer;->access$100(Lcom/brocktice/JustSit/RunTimer;)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s remaining"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method
