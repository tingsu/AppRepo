.class Linfo/bpace/munchlife/MunchLifeActivity$7;
.super Ljava/lang/Object;
.source "MunchLifeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/bpace/munchlife/MunchLifeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linfo/bpace/munchlife/MunchLifeActivity;


# direct methods
.method constructor <init>(Linfo/bpace/munchlife/MunchLifeActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 403
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->devDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_2

    .line 404
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-boolean v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    if-nez v1, :cond_1

    .line 405
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :goto_0
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-boolean v2, v2, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    .line 417
    return-void

    .line 407
    :cond_1
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-boolean v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender_female:Z

    if-nez v1, :cond_3

    .line 411
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$7;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->gender:Landroid/widget/ImageView;

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
