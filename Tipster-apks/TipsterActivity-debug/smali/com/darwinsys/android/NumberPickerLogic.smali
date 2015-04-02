.class public Lcom/darwinsys/android/NumberPickerLogic;
.super Ljava/lang/Object;
.source "NumberPickerLogic.java"


# instance fields
.field maximum:I

.field minimum:I

.field number:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "number"    # Landroid/widget/EditText;

    .prologue
    .line 12
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, p1, v0, v1}, Lcom/darwinsys/android/NumberPickerLogic;-><init>(Landroid/widget/EditText;II)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;II)V
    .locals 1
    .param p1, "number"    # Landroid/widget/EditText;
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->minimum:I

    .line 8
    const v0, 0x7fffffff

    iput v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->maximum:I

    .line 17
    iput-object p1, p0, Lcom/darwinsys/android/NumberPickerLogic;->number:Landroid/widget/EditText;

    .line 18
    iput p2, p0, Lcom/darwinsys/android/NumberPickerLogic;->minimum:I

    .line 19
    iput p3, p0, Lcom/darwinsys/android/NumberPickerLogic;->maximum:I

    .line 20
    return-void
.end method


# virtual methods
.method clamp(I)I
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->minimum:I

    if-ge p1, v0, :cond_0

    .line 35
    iget p1, p0, Lcom/darwinsys/android/NumberPickerLogic;->minimum:I

    .line 37
    :cond_0
    iget v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->maximum:I

    if-le p1, v0, :cond_1

    .line 38
    iget p1, p0, Lcom/darwinsys/android/NumberPickerLogic;->maximum:I

    .line 40
    :cond_1
    return p1
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/darwinsys/android/NumberPickerLogic;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/darwinsys/android/NumberPickerLogic;->clamp(I)I

    move-result v0

    .line 29
    .local v0, "newValue":I
    invoke-virtual {p0, v0}, Lcom/darwinsys/android/NumberPickerLogic;->setValue(I)V

    .line 30
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->number:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/darwinsys/android/NumberPickerLogic;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/darwinsys/android/NumberPickerLogic;->clamp(I)I

    move-result v0

    .line 24
    .local v0, "newValue":I
    invoke-virtual {p0, v0}, Lcom/darwinsys/android/NumberPickerLogic;->setValue(I)V

    .line 25
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/darwinsys/android/NumberPickerLogic;->number:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
