.class Linfo/bpace/munchlife/MunchLifeActivity$3;
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
    .line 337
    iput-object p1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v0, v0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    .line 344
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v0, v0, Linfo/bpace/munchlife/MunchLifeActivity;->current_level:Landroid/widget/TextView;

    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-object v0, v0, Linfo/bpace/munchlife/MunchLifeActivity;->total_level:Landroid/widget/TextView;

    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget-object v2, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v2, v2, Linfo/bpace/munchlife/MunchLifeActivity;->gear_level:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v0, v0, Linfo/bpace/munchlife/MunchLifeActivity;->level:I

    iget-object v1, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget v1, v1, Linfo/bpace/munchlife/MunchLifeActivity;->max_level:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    iget-boolean v0, v0, Linfo/bpace/munchlife/MunchLifeActivity;->victoryPref:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Linfo/bpace/munchlife/MunchLifeActivity$3;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/bpace/munchlife/MunchLifeActivity;->showDialog(I)V

    .line 352
    :cond_0
    return-void
.end method
