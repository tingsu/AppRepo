.class Linfo/bpace/munchlife/MunchLifeActivity$1;
.super Ljava/lang/Object;
.source "MunchLifeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/bpace/munchlife/MunchLifeActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 260
    iput-object p1, p0, Linfo/bpace/munchlife/MunchLifeActivity$1;->this$0:Linfo/bpace/munchlife/MunchLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    return-void
.end method
