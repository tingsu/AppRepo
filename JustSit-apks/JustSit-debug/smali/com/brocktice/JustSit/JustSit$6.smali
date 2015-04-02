.class Lcom/brocktice/JustSit/JustSit$6;
.super Ljava/lang/Object;
.source "JustSit.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brocktice/JustSit/JustSit;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private plays:I

.field final synthetic this$0:Lcom/brocktice/JustSit/JustSit;


# direct methods
.method constructor <init>(Lcom/brocktice/JustSit/JustSit;)V
    .locals 1

    .prologue
    .line 287
    iput-object p1, p0, Lcom/brocktice/JustSit/JustSit$6;->this$0:Lcom/brocktice/JustSit/JustSit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/brocktice/JustSit/JustSit$6;->plays:I

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mMp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 291
    iget v0, p0, Lcom/brocktice/JustSit/JustSit$6;->plays:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 293
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 294
    iget v0, p0, Lcom/brocktice/JustSit/JustSit$6;->plays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brocktice/JustSit/JustSit$6;->plays:I

    .line 298
    :cond_0
    return-void
.end method
