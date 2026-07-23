.class public final Lcom/facebook/ads/redexgen/X/ME;
.super Lcom/facebook/ads/redexgen/X/Zd;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/Og;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1382
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ps9u6Kn8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dgwj6SSLqT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Yi;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 3

    .line 51327
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Yi;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 51328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 51329
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ME;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    .line 51331
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/ME;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51332
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51333
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A2b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zi;-><init>(Lcom/facebook/ads/redexgen/X/ME;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51335
    :cond_0
    return-void
.end method

.method public static A00(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 51336
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51337
    .local v0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51338
    return-object v1

    .line 51339
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A01()V
    .locals 2

    .line 51340
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 51341
    .local v0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 51342
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 51343
    .end local v0    # "transition":Landroid/transition/TransitionSet;
    return-void
.end method


# virtual methods
.method public final A0O()V
    .locals 12

    .line 51344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0A()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v11

    .line 51345
    .local v0, "hidingReason":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51346
    .local v1, "hideAdView":Lcom/facebook/ads/redexgen/X/Zs;
    sget-object v2, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0H()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51348
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0G()Ljava/lang/String;

    move-result-object v0

    .line 51349
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setInfo(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;Ljava/lang/String;)V

    .line 51350
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zj;-><init>(Lcom/facebook/ads/redexgen/X/ME;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v10

    .line 51352
    .local v2, "reportingReason":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51353
    .local v3, "reportAdView":Lcom/facebook/ads/redexgen/X/Zs;
    sget-object v2, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51354
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0K()Ljava/lang/String;

    move-result-object v0

    .line 51356
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setInfo(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;Ljava/lang/String;)V

    .line 51357
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zk;-><init>(Lcom/facebook/ads/redexgen/X/ME;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 51359
    .local v4, "adChoicesView":Lcom/facebook/ads/redexgen/X/Zs;
    sget-object v2, Lcom/facebook/ads/redexgen/X/YM;->A06:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51360
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0M()Ljava/lang/String;

    move-result-object v1

    .line 51361
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setInfo(Lcom/facebook/ads/redexgen/X/YM;Ljava/lang/String;Ljava/lang/String;)V

    .line 51362
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/ME;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Zs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51363
    const/4 v0, -0x2

    const/4 v9, -0x1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51364
    .local v5, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ME;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51365
    .local v6, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 51366
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51367
    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    mul-int/lit8 v3, v0, 0x2

    sget v2, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51368
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51369
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Ok;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51370
    invoke-virtual {v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51371
    :cond_0
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Ok;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51372
    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51373
    :cond_1
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51374
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ME;->A01()V

    .line 51375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51377
    return-void
.end method

.method public final A0P()V
    .locals 1

    .line 51378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51379
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 51380
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 7

    .line 51381
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A05:Lcom/facebook/ads/redexgen/X/Oi;

    if-ne p2, v0, :cond_0

    .line 51382
    return-void

    .line 51383
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A06:Lcom/facebook/ads/redexgen/X/Oi;

    const/4 v6, 0x1

    if-ne p2, v0, :cond_1

    const/4 v5, 0x1

    .line 51384
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Za;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Zf;)V

    .line 51385
    if-eqz v5, :cond_2

    .line 51386
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51387
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 51388
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0E()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51389
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const-string v1, "KfE81dulHFmzGO7NxqDM7oaE1pV2dKkX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Og;->A0F()Ljava/lang/String;

    move-result-object v0

    .line 51390
    :goto_1
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    .line 51391
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    .line 51392
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ok;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    .line 51393
    if-eqz v5, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0D(Lcom/facebook/ads/redexgen/X/YM;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v1

    .line 51394
    if-eqz v5, :cond_6

    .line 51395
    const v0, -0x86dc5

    .line 51396
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0C(I)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v4

    .line 51397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0C:Lcom/facebook/ads/redexgen/X/Nm;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0C:Lcom/facebook/ads/redexgen/X/Nm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Za;

    move-result-object v0

    .line 51398
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0L()Lcom/facebook/ads/redexgen/X/Zb;

    move-result-object v2

    .line 51399
    .local v2, "adHiddenView":Lcom/facebook/ads/redexgen/X/Zb;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51400
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 51401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/ME;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51403
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zd;->A0Q(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V

    .line 51404
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const-string v1, "vLdx3pZGf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 51405
    :cond_5
    const-string v0, ""

    goto :goto_4

    .line 51406
    :cond_6
    const v0, -0xca871b

    goto :goto_3

    .line 51407
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_2
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 11

    .line 51408
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oi;->A06:Lcom/facebook/ads/redexgen/X/Oi;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 51409
    .local v0, "isReportFlow":Z
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/Zv;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    .line 51410
    if-eqz v1, :cond_1

    .line 51411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0L()Ljava/lang/String;

    move-result-object v9

    .line 51412
    :goto_1
    if-eqz v1, :cond_0

    sget-object v10, Lcom/facebook/ads/redexgen/X/YM;->A12:Lcom/facebook/ads/redexgen/X/YM;

    :goto_2
    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Zf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 51413
    .local v3, "reasonPickerView":Lcom/facebook/ads/redexgen/X/Zv;
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Zv;->setClickable(Z)V

    .line 51414
    const/4 v0, -0x1

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51415
    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    mul-int/lit8 v3, v0, 0x2

    sget v2, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A04:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setPadding(IIII)V

    .line 51416
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ME;->A01()V

    .line 51417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 51418
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ME;->A03:[Ljava/lang/String;

    const-string v1, "OoQvJ70CiRWXlhIiWSDPNsGTFrOY4nX1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/ME;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51419
    return-void

    .line 51420
    :cond_0
    sget-object v10, Lcom/facebook/ads/redexgen/X/YM;->A0l:Lcom/facebook/ads/redexgen/X/YM;

    goto :goto_2

    .line 51421
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Og;->A0H()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 51422
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0S()Z
    .locals 1

    .line 51423
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic A0T(Landroid/view/View;)V
    .locals 1

    .line 51424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zd;->A0D:Lcom/facebook/ads/redexgen/X/Zf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zf;->A54()V

    return-void
.end method
