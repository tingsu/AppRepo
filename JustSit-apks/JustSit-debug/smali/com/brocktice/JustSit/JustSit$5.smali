.class Lcom/brocktice/JustSit/JustSit$5;
.super Ljava/lang/Object;
.source "JustSit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brocktice/JustSit/JustSit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brocktice/JustSit/JustSit;


# direct methods
.method constructor <init>(Lcom/brocktice/JustSit/JustSit;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/brocktice/JustSit/JustSit$5;->this$0:Lcom/brocktice/JustSit/JustSit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit$5;->this$0:Lcom/brocktice/JustSit/JustSit;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/brocktice/JustSit/JustSit;->meditationSettings(Z)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit$5;->this$0:Lcom/brocktice/JustSit/JustSit;

    const-class v2, Lcom/brocktice/JustSit/RunTimer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "timer_label"

    const v2, 0x7f050004

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v1, "timer_duration"

    iget-object v2, p0, Lcom/brocktice/JustSit/JustSit$5;->this$0:Lcom/brocktice/JustSit/JustSit;

    # invokes: Lcom/brocktice/JustSit/JustSit;->getPrepTime()J
    invoke-static {v2}, Lcom/brocktice/JustSit/JustSit;->access$400(Lcom/brocktice/JustSit/JustSit;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/brocktice/JustSit/JustSit$5;->this$0:Lcom/brocktice/JustSit/JustSit;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/brocktice/JustSit/JustSit;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method
