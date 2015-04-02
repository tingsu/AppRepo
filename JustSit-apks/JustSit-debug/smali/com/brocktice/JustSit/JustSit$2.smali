.class Lcom/brocktice/JustSit/JustSit$2;
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
    .line 123
    iput-object p1, p0, Lcom/brocktice/JustSit/JustSit$2;->this$0:Lcom/brocktice/JustSit/JustSit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/brocktice/JustSit/JustSit$2;->this$0:Lcom/brocktice/JustSit/JustSit;

    # invokes: Lcom/brocktice/JustSit/JustSit;->decrementPrepTime()V
    invoke-static {v0}, Lcom/brocktice/JustSit/JustSit;->access$100(Lcom/brocktice/JustSit/JustSit;)V

    .line 126
    return-void
.end method
