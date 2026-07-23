.class public final Lcom/facebook/ads/redexgen/X/hM;
.super Lcom/facebook/ads/redexgen/X/N2;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/Rd;

.field public final A02:Lcom/facebook/ads/redexgen/X/76;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2915
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G2rh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fb5x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6CyVQJjLjUxkB4NOtEwwqOuY7kB2daf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v2svMG5ZVzKjVXyH1MXvdM9krQWCKsNq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oRWr7RpHwOoI3beQIRyDA09DO9LlUwST"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SjgxBMhR0kRV74MEQavsGpgIJGrbvWLl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8l9W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lapvzpZuNASF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hM;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hM;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 1

    .line 84442
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N2;-><init>()V

    .line 84443
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rd;->A09()Lcom/facebook/ads/redexgen/X/76;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    .line 84444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84445
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/hM;)Landroid/view/View;
    .locals 0

    .line 84446
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/hM;)Lcom/facebook/ads/redexgen/X/Rd;
    .locals 0

    .line 84447
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hM;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x1a

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/hM;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/hM;->A04:[Ljava/lang/String;

    const-string v1, "ScK1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/hM;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x45t
        0x67t
        0x68t
        0x68t
        0x69t
        0x72t
        0x26t
        0x76t
        0x74t
        0x63t
        0x75t
        0x63t
        0x68t
        0x72t
        0x26t
        0x68t
        0x73t
        0x6at
        0x6at
        0x26t
        0x67t
        0x62t
        0x50t
        0x6ft
        0x63t
        0x71t
    .end array-data
.end method


# virtual methods
.method public final A0C()V
    .locals 1

    .line 84448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4U()V

    .line 84449
    new-instance v0, Lcom/facebook/ads/redexgen/X/hO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hO;-><init>(Lcom/facebook/ads/redexgen/X/hM;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 84450
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 84451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4X()V

    .line 84452
    new-instance v0, Lcom/facebook/ads/redexgen/X/hN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hN;-><init>(Lcom/facebook/ads/redexgen/X/hM;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 84453
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 84454
    if-eqz p1, :cond_7

    .line 84455
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    sget-object v2, Lcom/facebook/ads/redexgen/X/hM;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hM;->A04:[Ljava/lang/String;

    const-string v1, "eqHc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/kf;->A4W()V

    .line 84456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    .line 84457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 84458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 84459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/LV;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Z2;

    if-eqz v0, :cond_2

    .line 84460
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84461
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0A()Lcom/facebook/ads/redexgen/X/Vp;

    move-result-object v0

    .line 84462
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vs;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Vp;)V

    .line 84463
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    .line 84464
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/7k;
    if-eqz v0, :cond_3

    .line 84465
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0L()V

    .line 84466
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/hP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hP;-><init>(Lcom/facebook/ads/redexgen/X/hM;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 84467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 84468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84469
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84470
    new-instance v2, Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/b6;-><init>()V

    .line 84471
    .local v1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/b6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Rd;->A0D(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 84472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0C(Ljava/lang/String;)V

    .line 84473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84474
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 84475
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0B(Ljava/lang/String;)V

    .line 84476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0J()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0J()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A0C()J

    move-result-wide v0

    .line 84480
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/b6;->A09(J)V

    .line 84481
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/LV;

    if-eqz v0, :cond_5

    .line 84482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/LV;

    .line 84483
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    .line 84484
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0A(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 84485
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rl;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Rl;-><init>(Lcom/facebook/ads/redexgen/X/hM;Lcom/facebook/ads/redexgen/X/b6;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 84487
    .end local v1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/b6;
    :cond_6
    return-void

    .line 84488
    .end local v0    # "controller":Lcom/facebook/ads/redexgen/X/7k;
    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hM;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 2

    .line 84489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kf;->A4V(Z)V

    .line 84490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A08()Lcom/facebook/ads/redexgen/X/7k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0M()V

    .line 84492
    :cond_0
    return-void

    .line 84493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 5

    .line 84494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A02:Lcom/facebook/ads/redexgen/X/76;

    .line 84495
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0R()Lcom/facebook/ads/redexgen/X/kf;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hM;->A01:Lcom/facebook/ads/redexgen/X/Rd;

    .line 84496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A04()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 84497
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 84498
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    .line 84499
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 84500
    new-instance v0, Lcom/facebook/ads/redexgen/X/hQ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hQ;-><init>(Lcom/facebook/ads/redexgen/X/hM;Lcom/facebook/ads/redexgen/X/Vm;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/WP;)V

    .line 84501
    return-void
.end method
