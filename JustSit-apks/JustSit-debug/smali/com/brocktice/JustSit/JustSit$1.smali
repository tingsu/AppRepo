.class Lcom/brocktice/JustSit/JustSit$1;
.super Ljava/lang/Object;
.source "JustSit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brocktice/JustSit/JustSit;->onCreate(Landroid/os/Bundle;)V
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
    .line 117
    iput-object p1, p0, Lcom/brocktice/JustSit/JustSit$1;->this$0:Lcom/brocktice/JustSit/JustSit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit$1;->this$0:Lcom/brocktice/JustSit/JustSit;

    # invokes: Lcom/brocktice/JustSit/JustSit;->incrementPrepTime()V
    invoke-static {v0}, Lcom/brocktice/JustSit/JustSit;->access$000(Lcom/brocktice/JustSit/JustSit;)V

    .line 120
    return-void
.end method
