.class public Lcom/examples/tipcalc/TipsterActivity;
.super Landroid/app/Activity;
.source "TipsterActivity.java"


# static fields
.field static final DEFAULT_NUM_PEOPLE:I = 0x3

.field static final formatter:Ljava/text/NumberFormat;


# instance fields
.field private btnCalculate:Landroid/widget/Button;

.field private btnReset:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLogic:Lcom/darwinsys/android/NumberPickerLogic;

.field private radioCheckedId:I

.field private rdoGroupTips:Landroid/widget/RadioGroup;

.field private txtAmount:Landroid/widget/EditText;

.field private txtPeople:Landroid/widget/EditText;

.field private txtTipAmount:Landroid/widget/TextView;

.field private txtTipOther:Landroid/widget/EditText;

.field private txtTipPerPerson:Landroid/widget/TextView;

.field private txtTotalToPay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/examples/tipcalc/TipsterActivity;->formatter:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    .line 142
    new-instance v0, Lcom/examples/tipcalc/TipsterActivity$2;

    invoke-direct {v0, p0}, Lcom/examples/tipcalc/TipsterActivity$2;-><init>(Lcom/examples/tipcalc/TipsterActivity;)V

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 168
    new-instance v0, Lcom/examples/tipcalc/TipsterActivity$3;

    invoke-direct {v0, p0}, Lcom/examples/tipcalc/TipsterActivity$3;-><init>(Lcom/examples/tipcalc/TipsterActivity;)V

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/examples/tipcalc/TipsterActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/examples/tipcalc/TipsterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    return p1
.end method

.method static synthetic access$500(Lcom/examples/tipcalc/TipsterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/examples/tipcalc/TipsterActivity;->calculate()V

    return-void
.end method

.method static synthetic access$600(Lcom/examples/tipcalc/TipsterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/examples/tipcalc/TipsterActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/examples/tipcalc/TipsterActivity;->reset()V

    return-void
.end method

.method private calculate()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L

    .line 210
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 212
    .local v0, "billAmount":Ljava/lang/Double;
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 214
    .local v7, "totalPeople":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 215
    .local v4, "percentage":Ljava/lang/Double;
    const/4 v1, 0x0

    .line 216
    .local v1, "isError":Z
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 217
    const-string v10, "Enter a valid Total Amount."

    iget-object v11, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/examples/tipcalc/TipsterActivity;->showErrorAlert(Ljava/lang/String;I)V

    .line 219
    const/4 v1, 0x1

    .line 222
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 223
    const-string v10, "Enter a valid number of people."

    iget-object v11, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/examples/tipcalc/TipsterActivity;->showErrorAlert(Ljava/lang/String;I)V

    .line 225
    const/4 v1, 0x1

    .line 233
    :cond_1
    iget v10, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 234
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->rdoGroupTips:Landroid/widget/RadioGroup;

    invoke-virtual {v10}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v10

    iput v10, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    .line 236
    :cond_2
    iget v10, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    const v11, 0x7f050007

    if-ne v10, v11, :cond_5

    .line 237
    const-wide/high16 v10, 0x402e000000000000L

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 253
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 254
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L

    div-double v5, v10, v12

    .line 255
    .local v5, "tipAmount":D
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double v8, v10, v5

    .line 256
    .local v8, "totalToPay":D
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double v2, v8, v10

    .line 258
    .local v2, "perPersonPays":D
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipAmount:Landroid/widget/TextView;

    sget-object v11, Lcom/examples/tipcalc/TipsterActivity;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v11, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTotalToPay:Landroid/widget/TextView;

    sget-object v11, Lcom/examples/tipcalc/TipsterActivity;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v11, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipPerPerson:Landroid/widget/TextView;

    sget-object v11, Lcom/examples/tipcalc/TipsterActivity;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {v11, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .end local v2    # "perPersonPays":D
    .end local v5    # "tipAmount":D
    .end local v8    # "totalToPay":D
    :cond_4
    return-void

    .line 238
    :cond_5
    iget v10, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    const v11, 0x7f050008

    if-ne v10, v11, :cond_6

    .line 239
    const-wide/high16 v10, 0x4034000000000000L

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    .line 240
    :cond_6
    iget v10, p0, Lcom/examples/tipcalc/TipsterActivity;->radioCheckedId:I

    const v11, 0x7f050009

    if-ne v10, v11, :cond_3

    .line 241
    iget-object v10, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 244
    const-string v10, "Enter a valid Tip percentage"

    iget-object v11, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getId()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/examples/tipcalc/TipsterActivity;->showErrorAlert(Ljava/lang/String;I)V

    .line 246
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipAmount:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTotalToPay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipPerPerson:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->rdoGroupTips:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 193
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->rdoGroupTips:Landroid/widget/RadioGroup;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 195
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    return-void
.end method

.method private showErrorAlert(Ljava/lang/String;I)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .prologue
    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    new-instance v2, Lcom/examples/tipcalc/TipsterActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/examples/tipcalc/TipsterActivity$4;-><init>(Lcom/examples/tipcalc/TipsterActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 287
    return-void
.end method


# virtual methods
.method public decrement(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->mLogic:Lcom/darwinsys/android/NumberPickerLogic;

    invoke-virtual {v0}, Lcom/darwinsys/android/NumberPickerLogic;->decrement()V

    .line 200
    return-void
.end method

.method public increment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->mLogic:Lcom/darwinsys/android/NumberPickerLogic;

    invoke-virtual {v0}, Lcom/darwinsys/android/NumberPickerLogic;->increment()V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 55
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->rdoGroupTips:Landroid/widget/RadioGroup;

    .line 62
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnReset:Landroid/widget/Button;

    .line 68
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipAmount:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTotalToPay:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/examples/tipcalc/TipsterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipPerPerson:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->rdoGroupTips:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/examples/tipcalc/TipsterActivity$1;

    invoke-direct {v1, p0}, Lcom/examples/tipcalc/TipsterActivity$1;-><init>(Lcom/examples/tipcalc/TipsterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtAmount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->txtTipOther:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnCalculate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->btnReset:Landroid/widget/Button;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v0, Lcom/darwinsys/android/NumberPickerLogic;

    iget-object v1, p0, Lcom/examples/tipcalc/TipsterActivity;->txtPeople:Landroid/widget/EditText;

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/darwinsys/android/NumberPickerLogic;-><init>(Landroid/widget/EditText;II)V

    iput-object v0, p0, Lcom/examples/tipcalc/TipsterActivity;->mLogic:Lcom/darwinsys/android/NumberPickerLogic;

    .line 127
    return-void
.end method
