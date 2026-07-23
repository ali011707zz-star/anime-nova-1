.class public abstract Lcom/facebook/ads/redexgen/X/PJ;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/XO;

.field public A02:Lcom/facebook/ads/redexgen/X/aJ;

.field public A03:Lcom/facebook/ads/redexgen/X/aN;

.field public A04:Lcom/facebook/ads/redexgen/X/dq;

.field public A05:Z

.field public A06:Z

.field public A07:Lcom/facebook/ads/redexgen/X/NN;

.field public A08:Lcom/facebook/ads/redexgen/X/ea;

.field public A09:Z

.field public final A0A:Landroid/os/Handler;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0E:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0F:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0G:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Yb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1532
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y2tLUsDODtMhR26nUTjgcf2Vsahx4NqH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jeJcN29vgPpMzSifPXWuZ7pAdZm9Wqf2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wmqo1ZnOkD5hT7Q2PTM2Rmfb8E0dvO0q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HRpfHPl8fLQTElVXg4xSXmMBPaXasYNs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iTsM9Wr3SkT3Gti7sj459w9nLERpcX3u"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RuGpU2jfWShvYQ0LG0oJmnDCVLSRyRSk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2xHjamT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xqcRJe7Fu2poXHQJNQ1kBRmSVDyUhFcS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PJ;->A0X()V

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/PJ;->A0K:I

    .line 1533
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/PJ;->A0L:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 3

    .line 57329
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    .line 57331
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A06:Z

    .line 57332
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A05:Z

    .line 57333
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0A:Landroid/os/Handler;

    .line 57334
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    .line 57335
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    .line 57336
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    .line 57337
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    .line 57338
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57340
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0G:Lcom/facebook/ads/redexgen/X/VI;

    .line 57341
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0b()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    .line 57342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0R()V

    .line 57344
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57345
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0S()V

    .line 57346
    :cond_1
    return-void
.end method

.method private A0O(I)Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 57347
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    return-object v0

    .line 57349
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/PJ;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 57350
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method public static A0Q(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0R()V
    .locals 8

    .line 57351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0G:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v6, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57352
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v7

    .line 57353
    const/4 v2, 0x1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    .line 57354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 57355
    return-void
.end method

.method private A0S()V
    .locals 3

    .line 57356
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57357
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    .line 57358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    const v0, -0x7fe3d4cd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aN;->setBackgroundColor(I)V

    .line 57359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 57360
    return-void
.end method

.method private A0T()V
    .locals 0

    .line 57361
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->removeAllViews()V

    .line 57362
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 57363
    return-void
.end method

.method private A0U()V
    .locals 5

    .line 57364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_0

    .line 57365
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57366
    .local v0, "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57367
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57368
    sget v3, Lcom/facebook/ads/redexgen/X/PJ;->A0K:I

    sget v2, Lcom/facebook/ads/redexgen/X/PJ;->A0L:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/PJ;->A0K:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/PJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57370
    .end local v0    # "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0V()V
    .locals 5

    .line 57371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 57372
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57373
    .local v0, "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57374
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57375
    sget v3, Lcom/facebook/ads/redexgen/X/PJ;->A0L:I

    sget v2, Lcom/facebook/ads/redexgen/X/PJ;->A0K:I

    sget v1, Lcom/facebook/ads/redexgen/X/PJ;->A0K:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/PJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57377
    .end local v0    # "creditLineParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0W()V
    .locals 7

    .line 57378
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57379
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0i()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/dq;

    if-nez v0, :cond_0

    .line 57380
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/PJ;->A06:Z

    .line 57381
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57383
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/do;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/do;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57384
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/do;->A0A(Lcom/facebook/ads/redexgen/X/Na;)Lcom/facebook/ads/redexgen/X/do;

    move-result-object v0

    .line 57385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/do;->A0F()Lcom/facebook/ads/redexgen/X/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/dq;

    .line 57386
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/dq;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0G:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0U:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VK;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 57387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 57388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/dq;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 57389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/dq;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PO;-><init>(Lcom/facebook/ads/redexgen/X/PJ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dq;->A04(Lcom/facebook/ads/redexgen/X/dp;)V

    .line 57390
    :goto_0
    return-void

    .line 57391
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Yh;->A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 57392
    goto :goto_0
.end method

.method public static A0X()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A0I:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x51t
        -0x53t
        0x6et
        -0x5at
        -0x5ft
        -0x5dt
        -0x5bt
        -0x5et
        -0x51t
        -0x51t
        -0x55t
        0x6et
        -0x5ft
        -0x5ct
        -0x4dt
        0x6et
        -0x57t
        -0x52t
        -0x4ct
        -0x5bt
        -0x4et
        -0x4dt
        -0x4ct
        -0x57t
        -0x4ct
        -0x57t
        -0x5ft
        -0x54t
        0x6et
        -0x57t
        -0x53t
        -0x50t
        -0x4et
        -0x5bt
        -0x4dt
        -0x4dt
        -0x57t
        -0x51t
        -0x52t
        0x6et
        -0x54t
        -0x51t
        -0x59t
        -0x59t
        -0x5bt
        -0x5ct
    .end array-data
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/Na;Z)V
    .locals 3

    .line 57393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 57394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57395
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57396
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0N:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57397
    :goto_0
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/PJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57399
    return-void

    .line 57400
    .end local v0    # "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v1

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57401
    .restart local v0    # "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V

    goto :goto_0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/PJ;Z)Z
    .locals 0

    .line 57402
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A06:Z

    return p1
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/PJ;Z)Z
    .locals 0

    .line 57403
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A05:Z

    return p1
.end method


# virtual methods
.method public abstract A0b()Lcom/facebook/ads/redexgen/X/Yb;
.end method

.method public final A0c()V
    .locals 1

    .line 57404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/c3;

    if-nez v0, :cond_1

    .line 57405
    :cond_0
    return-void

    .line 57406
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1G()V

    .line 57408
    :goto_0
    return-void

    .line 57409
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1F()V

    goto :goto_0
.end method

.method public abstract A0d()V
.end method

.method public final A0e(I)V
    .locals 2

    .line 57410
    new-instance v1, Lcom/facebook/ads/redexgen/X/PM;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/PM;-><init>(Lcom/facebook/ads/redexgen/X/PJ;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    .line 57411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A05:Z

    .line 57412
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0c()V

    .line 57413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 57414
    return-void
.end method

.method public final A0f(Landroid/view/View;ZI)V
    .locals 7

    .line 57415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Yb;->setFullscreen(Z)V

    .line 57416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A00:Landroid/view/View;

    .line 57417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 57418
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0T()V

    .line 57419
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/PJ;->A0O(I)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    .line 57420
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/Na;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/PJ;->A0Y(Lcom/facebook/ads/redexgen/X/Na;Z)V

    .line 57421
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Na;->A08(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 57422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57423
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57424
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 57425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 57426
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0V()V

    .line 57427
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0U()V

    .line 57428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A08()V

    .line 57429
    :cond_1
    const/4 v0, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57430
    .local v2, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_4

    .line 57431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getId()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57433
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getId()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57435
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/PJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    if-eqz v0, :cond_3

    .line 57437
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0W()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_8

    .line 57438
    sget-object v2, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const-string v1, "m39AQqqO1eeHQzy3cGs8gEkGcDq1cYC0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz p2, :cond_3

    .line 57439
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A03:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 57440
    :cond_3
    return-void

    .line 57441
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_5

    .line 57442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getId()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 57444
    :cond_5
    const/16 v6, 0xc

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const-string v1, "TscrWlY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57445
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0g(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 5

    .line 57446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A04(Landroid/view/Window;)V

    .line 57447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    .line 57448
    const/4 v1, 0x0

    .line 57449
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    .line 57451
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57452
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57453
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    .line 57454
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57455
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2D()Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    .line 57456
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ns;)V

    .line 57457
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/PT;-><init>(Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 57458
    return-void

    .line 57459
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 4

    .line 57460
    move-object v3, p0

    .line 57461
    .local v0, "interstitialView":Lcom/facebook/ads/redexgen/X/PJ;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 57462
    .local v1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57463
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yu;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Yu;-><init>(Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/PJ;Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57464
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/PJ;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57465
    return-void
.end method

.method public final A0i()Z
    .locals 1

    .line 57466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 57467
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57468
    :goto_0
    return v0

    .line 57469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0j()Z
    .locals 1

    .line 57470
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A05:Z

    return v0
.end method

.method public final A0k()Z
    .locals 1

    .line 57471
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A06:Z

    return v0
.end method

.method public abstract A0l()Z
.end method

.method public AFA(Z)V
    .locals 4

    .line 57472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    .line 57473
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 57475
    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/PJ;->A0J:[Ljava/lang/String;

    const-string v1, "yojvKCm4Uw77fUAiEEOH9Gl1ktXD1GAA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 57476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 57477
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public AFi(Z)V
    .locals 1

    .line 57478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    .line 57479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A01:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 57481
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;
    .locals 1

    .line 57482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;
    .locals 1

    .line 57483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 57484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 57485
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 57486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0B:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xx;->A03()V

    .line 57487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 57488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0A:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 57489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 57490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A02:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 57491
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0T()V

    .line 57492
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Y2;)V
    .locals 4

    .line 57493
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Y2;->A05()V

    .line 57494
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57495
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    if-eqz v0, :cond_1

    .line 57496
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    .line 57497
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MG;->A8G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 57498
    :cond_0
    :goto_0
    return-void

    .line 57499
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    .line 57500
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0Q(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 57501
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/ea;)V
    .locals 0

    .line 57502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A08:Lcom/facebook/ads/redexgen/X/ea;

    .line 57503
    return-void
.end method
