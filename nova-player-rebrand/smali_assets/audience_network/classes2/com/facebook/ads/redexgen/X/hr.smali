.class public Lcom/facebook/ads/redexgen/X/hr;
.super Lcom/facebook/ads/redexgen/X/R2;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/Qf;,
        Lcom/facebook/ads/redexgen/X/Qg;,
        Lcom/facebook/ads/redexgen/X/Qh;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/Qm;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/Qh;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Qf;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Qg;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2937
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZTDwmEtle1avZIcEXO6Ngzge8j05pfT9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s1YfUPq4amp3sGXTr0KOnMWCCCkrB2x5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RLSriKm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hA4l3MFFurEjuKvfb479JjwTp2cnC09n"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5GFF521rSn4TdhEStccPhauxYrt7NMVp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XQN2s9DMc1xKucEpv2CitIAcNHBR8E7y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8ubGCSX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EFysGv6XChRnXfWxG2n7d2ksHTdYT6om"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hr;->A0V()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85295
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;-><init>(Landroid/content/Context;IZ)V

    .line 85296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 85297
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R2;-><init>()V

    .line 85298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0A:Z

    .line 85299
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    .line 85300
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    .line 85301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    .line 85302
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85303
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    .line 85304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 85305
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Qf;-><init>(Lcom/facebook/ads/redexgen/X/hr;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    .line 85306
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qg;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0E:Lcom/facebook/ads/redexgen/X/Qg;

    .line 85307
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A06:I

    .line 85308
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/hr;->A2C(I)V

    .line 85309
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/hr;->A0h(Z)V

    .line 85310
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A1T(Z)V

    .line 85311
    return-void
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 5

    .line 85312
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 85313
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    return v4

    .line 85314
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A0B:Z

    .line 85315
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85316
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 85317
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 85318
    .local v3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/hr;->A0Y(IIZLcom/facebook/ads/redexgen/X/RH;)V

    .line 85319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    .line 85320
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 85321
    .local v2, "consumed":I
    if-gez v1, :cond_3

    .line 85322
    return v4

    .line 85323
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 85324
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 85325
    .local v1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0J(I)V

    .line 85326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Qh;->A04:I

    .line 85327
    return v3

    .line 85328
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A05(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I
    .locals 3

    .line 85329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 85330
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 85331
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A04(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    neg-int v2, v0

    .line 85332
    add-int/2addr p1, v2

    .line 85333
    if-eqz p4, :cond_0

    .line 85334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v1

    sub-int/2addr v1, p1

    .line 85335
    if-lez v1, :cond_0

    .line 85336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0J(I)V

    .line 85337
    add-int/2addr v1, v2

    return v1

    .line 85338
    :cond_0
    return v2

    .line 85339
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I
    .locals 3

    .line 85340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 85341
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 85342
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A04(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    neg-int v2, v0

    .line 85343
    add-int/2addr p1, v2

    .line 85344
    if-eqz p4, :cond_0

    .line 85345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 85346
    if-lez p1, :cond_0

    .line 85347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0J(I)V

    .line 85348
    sub-int/2addr v2, p1

    return v2

    .line 85349
    :cond_0
    return v2

    .line 85350
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I
    .locals 7

    .line 85351
    iget v5, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85352
    .local v0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 85353
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-gez v0, :cond_0

    .line 85354
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85355
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0e(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;)V

    .line 85356
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    add-int/2addr v3, v0

    .line 85357
    .local v1, "remainingSpace":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A0E:Lcom/facebook/ads/redexgen/X/Qg;

    .line 85358
    .local v3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A09:Z

    if-nez v0, :cond_3

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/Qh;->A05(Lcom/facebook/ads/redexgen/X/RH;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85359
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A00()V

    .line 85360
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/facebook/ads/redexgen/X/hr;->A2F(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 85361
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A01:Z

    if-eqz v0, :cond_5

    .line 85362
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    sub-int/2addr v5, v0

    return v5

    .line 85363
    :cond_5
    iget v6, p2, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v6, v1

    iput v6, p2, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85364
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 85365
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 85366
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85367
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    sub-int/2addr v3, v0

    .line 85368
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    if-eq v0, v4, :cond_9

    .line 85369
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85370
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-gez v0, :cond_8

    .line 85371
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85372
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0e(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;)V

    .line 85373
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Qg;->A02:Z

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 7

    .line 85374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 85375
    const/4 v0, 0x0

    return v0

    .line 85376
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85377
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 85378
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    xor-int/2addr v0, v1

    .line 85379
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    .line 85380
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RL;->A00(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qm;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/R2;Z)I

    move-result v0

    return v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 8

    .line 85381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-nez v0, :cond_1

    .line 85382
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "J9JFedtgHh7lzsKv2wGVe5URJzbGPRgH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 85383
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85384
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 85385
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    xor-int/2addr v0, v1

    .line 85386
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    .line 85387
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/RL;->A02(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qm;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/R2;ZZ)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 7

    .line 85388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 85389
    const/4 v0, 0x0

    return v0

    .line 85390
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85391
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 85392
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    xor-int/2addr v0, v1

    .line 85393
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/hr;->A0B:Z

    .line 85394
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RL;->A01(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qm;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/R2;Z)I

    move-result v0

    return v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85395
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RH;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0B()I

    move-result v0

    return v0

    .line 85397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0D()Landroid/view/View;
    .locals 2

    .line 85398
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0E()Landroid/view/View;
    .locals 2

    .line 85399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 85400
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0G()Landroid/view/View;
    .locals 1

    .line 85401
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0H(II)Landroid/view/View;
    .locals 3

    .line 85402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85403
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 85404
    .local v0, "next":I
    :goto_0
    if-nez v0, :cond_2

    .line 85405
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 85406
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85407
    .local v1, "preferredBoundsFlag":I
    .local v2, "acceptableBoundsFlag":I
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85408
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 85409
    const/16 v2, 0x4104

    .line 85410
    const/16 v1, 0x4004

    .line 85411
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-nez v0, :cond_3

    .line 85412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A04:Lcom/facebook/ads/redexgen/X/RP;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/RP;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 85413
    :goto_2
    return-object v0

    .line 85414
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A05:Lcom/facebook/ads/redexgen/X/RP;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/RP;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 85415
    :cond_4
    const/16 v2, 0x1041

    .line 85416
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0I(IIZZ)Landroid/view/View;
    .locals 6

    .line 85417
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85418
    .local v0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 85419
    .local v1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 85420
    const/16 v4, 0x6003

    .line 85421
    :goto_0
    if-eqz p4, :cond_0

    .line 85422
    const/16 v3, 0x140

    .line 85423
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 85424
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "CO2lCdhiUyNnJNyVLVKK7uQ85cne8EHP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 85425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A04:Lcom/facebook/ads/redexgen/X/RP;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/RP;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 85426
    :goto_1
    return-object v0

    .line 85427
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R2;->A05:Lcom/facebook/ads/redexgen/X/RP;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/RP;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 6

    .line 85428
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/hr;->A2A(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 6

    .line 85429
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/hr;->A2A(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 1

    .line 85430
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0D()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85431
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0E()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 1

    .line 85432
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0E()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85433
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0D()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 1

    .line 85434
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0J(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85435
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0L(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 1

    .line 85436
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0L(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 85437
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0J(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(ZZ)Landroid/view/View;
    .locals 2

    .line 85438
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    .line 85439
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 85440
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 85441
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_0

    .line 85442
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 85443
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0S()Lcom/facebook/ads/redexgen/X/Qh;
    .locals 1

    .line 85444
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qh;-><init>()V

    return-object v0
.end method

.method public static A0T(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0U()V
    .locals 2

    .line 85445
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85446
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    .line 85447
    :goto_0
    return-void

    .line 85448
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0A:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    goto :goto_0
.end method

.method public static A0V()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hr;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x56t
        0x19t
        0x4t
        0x1ft
        0x13t
        0x18t
        0x2t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x4ct
    .end array-data
.end method

.method private A0W(II)V
    .locals 3

    .line 85449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85450
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 85451
    :goto_0
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    .line 85452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    .line 85454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85455
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85456
    return-void

    .line 85457
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0X(II)V
    .locals 3

    .line 85458
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85460
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85461
    :goto_0
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    .line 85462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    .line 85463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85464
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85465
    return-void

    .line 85466
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0Y(IIZLcom/facebook/ads/redexgen/X/RH;)V
    .locals 5

    .line 85467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A09:Z

    .line 85468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/hr;->A0C(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    .line 85470
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 85471
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85472
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0F()Landroid/view/View;

    move-result-object v3

    .line 85473
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_1

    .line 85474
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    .line 85475
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85478
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 85479
    .end local v2    # "child":Landroid/view/View;
    .local v0, "scrollingOffset":I
    .end local v2
    .restart local v0    # "scrollingOffset":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85480
    if-eqz p3, :cond_0

    .line 85481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85482
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85483
    return-void

    .line 85484
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 85485
    .end local v0    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0G()Landroid/view/View;

    move-result-object v3

    .line 85486
    .restart local v2    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 85488
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    .line 85489
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/Qf;)V
    .locals 2

    .line 85493
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Qf;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0W(II)V

    .line 85494
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/Qf;)V
    .locals 2

    .line 85495
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Qf;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0X(II)V

    .line 85496
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/RA;I)V
    .locals 6

    .line 85497
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v5

    .line 85498
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 85499
    return-void

    .line 85500
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 85501
    .local v1, "limit":I
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "5eQap7viEGWOuRbzagNYDGjkAWEMIhVp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    .line 85502
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 85503
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 85504
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85505
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 85506
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "EiwXPaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4OvxlWI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/hr;->A0d(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 85507
    return-void

    .line 85508
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/hr;->A0d(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 85509
    return-void

    .line 85510
    :cond_5
    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 85511
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 85512
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85513
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 85514
    .restart local v3    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/hr;->A0d(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 85515
    return-void

    .line 85516
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 85517
    .end local v2    # "i":I
    .end local v3
    :cond_8
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/RA;I)V
    .locals 7

    .line 85518
    if-gez p2, :cond_0

    .line 85519
    return-void

    .line 85520
    .local v0, "limit":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v3

    .line 85521
    .local v1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_4

    .line 85522
    add-int/lit8 v4, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 85523
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v5

    .line 85524
    .local v3, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "CCkneFsBnjHsOQTiipl2DNgji2H70UcR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85525
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 85526
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/hr;->A0d(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 85527
    return-void

    .line 85528
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 85529
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 85530
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 85531
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85532
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 85533
    .restart local v3    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/hr;->A0d(Lcom/facebook/ads/redexgen/X/RA;II)V

    .line 85534
    return-void

    .line 85535
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85536
    .end local v2    # "i":I
    .end local v3
    :cond_7
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/RA;II)V
    .locals 1

    .line 85537
    if-ne p2, p3, :cond_0

    .line 85538
    return-void

    .line 85539
    :cond_0
    if-le p3, p2, :cond_1

    .line 85540
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 85541
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A16(ILcom/facebook/ads/redexgen/X/RA;)V

    .line 85542
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85543
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 85544
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/R2;->A16(ILcom/facebook/ads/redexgen/X/RA;)V

    .line 85545
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 85546
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;)V
    .locals 2

    .line 85547
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A09:Z

    if-eqz v0, :cond_1

    .line 85548
    :cond_0
    return-void

    .line 85549
    :cond_1
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 85550
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0b(Lcom/facebook/ads/redexgen/X/RA;I)V

    .line 85551
    :goto_0
    return-void

    .line 85552
    :cond_2
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0c(Lcom/facebook/ads/redexgen/X/RA;I)V

    goto :goto_0
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;II)V
    .locals 13

    .line 85553
    move-object v2, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85554
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A24()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85555
    :cond_0
    return-void

    .line 85556
    :cond_1
    const/4 v5, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v3, 0x0

    .line 85557
    .local v4, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->A0J()Ljava/util/List;

    move-result-object v8

    .line 85558
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 85559
    .local v6, "scrapSize":I
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v7

    .line 85560
    .local v8, "firstChildPos":I
    const/4 v6, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 85561
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/RK;

    .line 85562
    .local v10, "scrap":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85563
    .end local v10    # "scrap":Lcom/facebook/ads/redexgen/X/RK;
    .end local v11
    .end local v12
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85564
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    .line 85565
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v4, :cond_3

    .line 85566
    const/4 v12, -0x1

    .line 85567
    .local v12, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 85568
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 85569
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 85570
    :cond_5
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    .line 85571
    .end local v9    # "i":I
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    .line 85572
    if-lez v5, :cond_7

    .line 85573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0G()Landroid/view/View;

    move-result-object v0

    .line 85574
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p3

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/hr;->A0X(II)V

    .line 85575
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85576
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85577
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qh;->A04()V

    .line 85578
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85579
    :cond_7
    if-lez v3, :cond_8

    .line 85580
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0F()Landroid/view/View;

    move-result-object v0

    .line 85581
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p4

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/hr;->A0W(II)V

    .line 85582
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85583
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85584
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qh;->A04()V

    .line 85585
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85586
    :cond_8
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    .line 85587
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)V
    .locals 1

    .line 85588
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A0k(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85589
    return-void

    .line 85590
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A0j(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85591
    return-void

    .line 85592
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Qf;->A02()V

    .line 85593
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/Qf;->A01:I

    .line 85594
    return-void

    .line 85595
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0h(Z)V
    .locals 1

    .line 85596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A20(Ljava/lang/String;)V

    .line 85597
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 85598
    return-void

    .line 85599
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/hr;->A0A:Z

    .line 85600
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A10()V

    .line 85601
    return-void
.end method

.method private final A0i()Z
    .locals 1

    .line 85602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85604
    :goto_0
    return v0

    .line 85605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)Z
    .locals 5

    .line 85606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 85607
    return v4

    .line 85608
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0u()Landroid/view/View;

    move-result-object v1

    .line 85609
    .local v0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/Qf;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RH;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85610
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/Qf;->A05(Landroid/view/View;)V

    .line 85611
    return v3

    .line 85612
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 85613
    return v4

    .line 85614
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_7

    .line 85615
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0O(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v2

    .line 85616
    .local v3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 85617
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/Qf;->A04(Landroid/view/View;)V

    .line 85618
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A24()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85620
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85622
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 85624
    .local v1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 85625
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_6

    .line 85626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    .line 85627
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85628
    .end local v1    # "notVisible":Z
    :cond_5
    return v3

    .line 85629
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    goto :goto_1

    .line 85630
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0P(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 85631
    :cond_8
    return v4
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)Z
    .locals 8

    .line 85632
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 85633
    :cond_0
    return v4

    .line 85634
    :cond_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "TFIDoufW7PPC7ZEj7Y5tPHllsDSURNN1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/high16 v0, -0x80000000

    if-ltz v5, :cond_3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 85635
    :cond_3
    iput v3, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85636
    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    .line 85637
    return v4

    .line 85638
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A01:I

    .line 85639
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85641
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_5

    .line 85642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85643
    :goto_0
    return v3

    .line 85644
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    goto :goto_0

    .line 85645
    :cond_6
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    if-ne v1, v0, :cond_10

    .line 85646
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v5

    .line 85647
    .local v0, "child":Landroid/view/View;
    if-eqz v5, :cond_c

    .line 85648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0D(Landroid/view/View;)I

    move-result v1

    .line 85649
    .local v3, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0B()I

    move-result v0

    if-le v1, v0, :cond_7

    .line 85650
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qf;->A02()V

    .line 85651
    return v3

    .line 85652
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85653
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "BfWLqmz6tLXTBl9sOf8GvQUpsUyqil7O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v7, v6

    .line 85654
    .local v4, "startGap":I
    if-gez v7, :cond_9

    .line 85655
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85656
    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85657
    return v3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "F1yYn32nqotC7GL2fjmWFlYeH2UBHhCV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v7, v6

    .line 85658
    .local v4, "startGap":I
    if-gez v7, :cond_9

    goto :goto_1

    .line 85659
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85660
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 85661
    .local v1, "endGap":I
    if-gez v1, :cond_a

    .line 85662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85663
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85664
    return v3

    .line 85665
    :cond_a
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_b

    .line 85666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85667
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A05()I

    move-result v0

    add-int/2addr v1, v0

    .line 85668
    :goto_2
    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85669
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_4

    .line 85670
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v1

    goto :goto_2

    .line 85671
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-lez v0, :cond_e

    .line 85672
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v1

    .line 85673
    .local v3, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-ne v1, v0, :cond_d

    const/4 v4, 0x1

    :cond_d
    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85674
    .end local v3    # "pos":I
    :cond_e
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qf;->A02()V

    .line 85675
    :goto_4
    return v3

    .line 85676
    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    .line 85677
    .end local v0    # "child":Landroid/view/View;
    :cond_10
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "6FIelR57229tmCeHfVqBadRckpOvBeMr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85678
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_12

    .line 85679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    .line 85680
    :goto_5
    return v3

    .line 85681
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Qf;->A00:I

    goto :goto_5
.end method


# virtual methods
.method public A1f(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 2

    .line 85682
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 85683
    const/4 v0, 0x0

    return v0

    .line 85684
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A04(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public A1g(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-nez v0, :cond_0

    .line 85686
    const/4 v0, 0x0

    return v0

    .line 85687
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A04(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85688
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A08(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1i(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85689
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A0A(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1j(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85690
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A0B(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85691
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A08(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85692
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A0A(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/RH;)I
    .locals 1

    .line 85693
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hr;->A0B(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v0

    return v0
.end method

.method public final A1n()Landroid/os/Parcelable;
    .locals 4

    .line 85694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 85695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 85696
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 85697
    .local v0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-lez v0, :cond_2

    .line 85698
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85699
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    xor-int/2addr v1, v0

    .line 85700
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 85701
    if-eqz v1, :cond_1

    .line 85702
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0F()Landroid/view/View;

    move-result-object v2

    .line 85703
    .local v2, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85704
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 85705
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 85706
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 85707
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0G()Landroid/view/View;

    move-result-object v1

    .line 85708
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 85709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85710
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 85711
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1o(I)Landroid/view/View;
    .locals 2

    .line 85712
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v1

    .line 85713
    .local v0, "childCount":I
    if-nez v1, :cond_0

    .line 85714
    const/4 v0, 0x0

    return-object v0

    .line 85715
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    .line 85716
    .local v1, "firstChild":I
    sub-int v0, p1, v0

    .line 85717
    .local p0, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 85718
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 85719
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 85720
    return-object v1

    .line 85721
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1p(Landroid/view/View;ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;
    .locals 5

    .line 85722
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0U()V

    .line 85723
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 85724
    return-object v4

    .line 85725
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/hr;->A29(I)I

    move-result v3

    .line 85726
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 85727
    return-object v4

    .line 85728
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85729
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0B()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3eaaaaab

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 85731
    .local v3, "maxScroll":I
    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1, p4}, Lcom/facebook/ads/redexgen/X/hr;->A0Y(IIZLcom/facebook/ads/redexgen/X/RH;)V

    .line 85732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    .line 85733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A0B:Z

    .line 85734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85735
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 85736
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/hr;->A0N(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v2

    .line 85737
    .local v4, "nextCandidate":Landroid/view/View;
    .restart local v4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 85738
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0G()Landroid/view/View;

    move-result-object v1

    .line 85739
    .local v2, "nextFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85740
    if-nez v2, :cond_4

    .line 85741
    return-object v4

    .line 85742
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0F()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 85743
    .end local v4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/hr;->A0M(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 85744
    :cond_4
    return-object v1

    .line 85745
    :cond_5
    return-object v2
.end method

.method public A1q()Lcom/facebook/ads/redexgen/X/R3;
    .locals 2

    .line 85746
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/R3;-><init>(II)V

    return-object v0
.end method

.method public A1r(I)V
    .locals 1

    .line 85747
    iput p1, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85748
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    .line 85749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 85750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 85751
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A10()V

    .line 85752
    return-void
.end method

.method public final A1s(IILcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 3

    .line 85753
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-nez v0, :cond_1

    .line 85754
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 85755
    .end local v2
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/hr;
    :cond_0
    return-void

    .line 85756
    :cond_1
    move p1, p2

    goto :goto_0

    .line 85757
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85758
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 85759
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 85760
    .local p0, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/hr;->A0Y(IIZLcom/facebook/ads/redexgen/X/RH;)V

    .line 85761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/hr;->A2G(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 85762
    return-void

    .line 85763
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1t(ILcom/facebook/ads/redexgen/X/R0;)V
    .locals 5

    .line 85764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v1, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 85766
    .local v0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 85767
    .local v3, "anchorPos":I
    .restart local v3    # "anchorPos":I
    :goto_0
    if-eqz v1, :cond_0

    .line 85768
    .local v2, "direction":I
    .local v4, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A06:I

    if-ge v1, v0, :cond_4

    .line 85769
    if-ltz v2, :cond_4

    if-ge v2, p1, :cond_4

    .line 85770
    invoke-interface {p2, v2, v4}, Lcom/facebook/ads/redexgen/X/R0;->A42(II)V

    .line 85771
    add-int/2addr v2, v3

    .line 85772
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85773
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 85774
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0U()V

    .line 85775
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    .line 85776
    .restart local v0    # "fromEnd":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    if-ne v0, v3, :cond_3

    .line 85777
    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 85778
    .end local v3
    :cond_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    goto :goto_0

    .line 85779
    .end local p0    # "i":I
    :cond_4
    return-void
.end method

.method public final A1u(Landroid/os/Parcelable;)V
    .locals 2

    .line 85780
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 85781
    return-void

    .line 85782
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 85783
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 85784
    return-void

    .line 85785
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 85786
    .local v1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    .line 85787
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 85788
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A10()V

    .line 85789
    :cond_2
    return-void
.end method

.method public final A1v(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 85790
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1v(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 85791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-lez v0, :cond_0

    .line 85792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A26()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    .line 85793
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "JM0e54P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "62qYDCA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A27()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 85794
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1w(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 9

    .line 85795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    if-eq v0, v6, :cond_1

    .line 85796
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 85797
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1K(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 85798
    return-void

    .line 85799
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85801
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85802
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "TEU8GGg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "lg12FnG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/Qh;->A0B:Z

    .line 85803
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0U()V

    .line 85804
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0u()Landroid/view/View;

    move-result-object v5

    .line 85805
    .local v0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Qf;->A03:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_14

    .line 85806
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A03()V

    .line 85807
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    .line 85808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0g(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 85809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Qf;->A03:Z

    .line 85810
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/hr;->A0C(Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v7

    .line 85811
    .local v3, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A04:I

    if-ltz v0, :cond_13

    .line 85812
    .local v5, "extraForEnd":I
    const/4 v8, 0x0

    .line 85813
    .local v6, "extraForStart":I
    .restart local v5    # "extraForEnd":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    add-int/2addr v8, v0

    .line 85814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A08()I

    move-result v0

    add-int/2addr v7, v0

    .line 85815
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    if-eq v0, v6, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 85816
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A1o(I)Landroid/view/View;

    move-result-object v1

    .line 85817
    .local v7, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 85818
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_12

    .line 85819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85820
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 85821
    .local v8, "current":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    sub-int/2addr v2, v0

    .line 85822
    .local p0, "upcomingOffset":I
    .restart local p0    # "upcomingOffset":I
    :goto_2
    if-lez v2, :cond_11

    .line 85823
    add-int/2addr v8, v2

    .line 85824
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local p0    # "upcomingOffset":I
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_f

    .line 85825
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    .line 85826
    .restart local v1
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {p0, p1, p2, v0, v6}, Lcom/facebook/ads/redexgen/X/hr;->A2E(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;I)V

    .line 85827
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1J(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 85828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A09:Z

    .line 85829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Qh;->A0A:Z

    .line 85830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Qf;->A02:Z

    if-eqz v0, :cond_d

    .line 85831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0a(Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 85832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v8, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85835
    .local v7, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85836
    .local v8, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-lez v0, :cond_7

    .line 85837
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "MJWLhmn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Xdeja1C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    add-int/2addr v7, v0

    .line 85838
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0Z(Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 85839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85840
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85843
    .local p0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-lez v0, :cond_8

    .line 85844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85845
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/hr;->A0X(II)V

    .line 85846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85849
    .end local v8    # "firstElement":I
    .local v7, "startOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-lez v0, :cond_9

    .line 85850
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 85851
    invoke-direct {p0, v2, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/hr;->A05(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I

    move-result v0

    .line 85852
    .local v4, "fixOffset":I
    add-int/2addr v6, v0

    .line 85853
    add-int/2addr v2, v0

    .line 85854
    invoke-direct {p0, v6, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A06(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I

    move-result v0

    .line 85855
    .end local v4    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v6, v0

    .line 85856
    add-int/2addr v2, v0

    .line 85857
    .end local v2    # "fixOffset":I
    .end local v2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v6, v2}, Lcom/facebook/ads/redexgen/X/hr;->A0f(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;II)V

    .line 85858
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 85859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0I()V

    .line 85860
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A08:Z

    .line 85861
    return-void

    .line 85862
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A03()V

    goto :goto_8

    .line 85863
    :cond_b
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/hr;->A06(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I

    move-result v0

    .line 85864
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v0

    .line 85865
    add-int/2addr v2, v0

    .line 85866
    invoke-direct {p0, v2, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A05(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Z)I

    move-result v0

    .line 85867
    .end local v4    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v6, v0

    .line 85868
    add-int/2addr v2, v0

    goto :goto_7

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "HkWuM96xU0ciNRE25G4cwktgC29lbS6I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    add-int/2addr v7, v0

    goto :goto_5

    .line 85869
    .end local v7    # "startOffset":I
    .end local p0    # "endOffset":I
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0Z(Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 85870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85873
    .restart local p0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85874
    .local v7, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-lez v0, :cond_e

    .line 85875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    add-int/2addr v8, v0

    .line 85876
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0a(Lcom/facebook/ads/redexgen/X/Qf;)V

    .line 85877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v8, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85878
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A03:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 85879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 85881
    .local v8, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    if-lez v0, :cond_8

    .line 85882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A00:I

    .line 85883
    invoke-direct {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/hr;->A0W(II)V

    .line 85884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Qh;->A02:I

    .line 85885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/RH;Z)I

    .line 85886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    goto/16 :goto_6

    .line 85887
    .end local v1
    :cond_f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    if-eqz v0, :cond_10

    goto/16 :goto_4

    .line 85888
    :cond_10
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 85889
    :cond_11
    sub-int/2addr v7, v2

    goto/16 :goto_3

    .line 85890
    .end local v8    # "startOffset":I
    .end local p0    # "endOffset":I
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85891
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 85892
    .restart local v8    # "startOffset":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    sub-int/2addr v2, v1

    goto/16 :goto_2

    .line 85893
    .end local v5    # "extraForEnd":I
    .end local v6    # "extraForStart":I
    :cond_13
    move v8, v7

    .line 85894
    .restart local v6    # "extraForStart":I
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 85895
    :cond_14
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85896
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_16

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "cu8BBcv0k6hBgzqZsr0VN3sfifuVMQ62"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v8, v7, :cond_15

    :goto_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85897
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85898
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 85899
    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qf;->A05(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_16
    if-ge v8, v7, :cond_15

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1x(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 1

    .line 85900
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1x(Lcom/facebook/ads/redexgen/X/RH;)V

    .line 85901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 85902
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85903
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    .line 85904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0D:Lcom/facebook/ads/redexgen/X/Qf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qf;->A03()V

    .line 85905
    return-void
.end method

.method public final A1y(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 1

    .line 85906
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1y(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RA;)V

    .line 85907
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A09:Z

    if-eqz v0, :cond_0

    .line 85908
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/R2;->A1K(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 85909
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/RA;->A0P()V

    .line 85910
    :cond_0
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/RH;I)V
    .locals 2

    .line 85911
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/hq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/hq;-><init>(Landroid/content/Context;)V

    .line 85912
    .local v0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/hq;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/RF;->A0A(I)V

    .line 85913
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1N(Lcom/facebook/ads/redexgen/X/RF;)V

    .line 85914
    return-void
.end method

.method public final A20(Ljava/lang/String;)V
    .locals 1

    .line 85915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 85916
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A20(Ljava/lang/String;)V

    .line 85917
    :cond_0
    return-void
.end method

.method public final A21()Z
    .locals 2

    .line 85918
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0a()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 85919
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0k()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 85920
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A1U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85921
    :goto_0
    return v0

    .line 85922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A22()Z
    .locals 1

    .line 85923
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A23()Z
    .locals 2

    .line 85924
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A24()Z
    .locals 2

    .line 85925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A25()I
    .locals 3

    .line 85926
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 85927
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A26()I
    .locals 3

    .line 85928
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 85929
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A27()I
    .locals 4

    .line 85930
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/hr;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 85931
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A28()I
    .locals 1

    .line 85932
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    return v0
.end method

.method public final A29(I)I
    .locals 7

    .line 85933
    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 85934
    return v5

    .line 85935
    :sswitch_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne v0, v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 85936
    :sswitch_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne v0, v4, :cond_1

    :goto_0
    return v6

    .line 85937
    :cond_1
    const/high16 v6, -0x80000000

    goto :goto_0

    .line 85938
    :sswitch_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-nez v0, :cond_2

    :goto_1
    return v6

    .line 85939
    :cond_2
    const/high16 v6, -0x80000000

    goto :goto_1

    .line 85940
    :sswitch_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne v0, v4, :cond_3

    .line 85941
    return v4

    .line 85942
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85943
    return v6

    .line 85944
    :cond_4
    return v4

    .line 85945
    :sswitch_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne v0, v4, :cond_5

    .line 85946
    return v6

    .line 85947
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2H()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "JFBGAdvw0W46p1IiHd184rfjlhxsbjRk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 85948
    return v4

    .line 85949
    :cond_6
    return v6

    .line 85950
    :sswitch_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "A4gNOGqmCbgTlyYHXDAs3UqrHjABAhAn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_9

    const/4 v5, 0x1

    :cond_9
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x11 -> :sswitch_2
        0x21 -> :sswitch_1
        0x42 -> :sswitch_5
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public A2A(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;III)Landroid/view/View;
    .locals 7

    .line 85951
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2B()V

    .line 85952
    const/4 v6, 0x0

    .line 85953
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 85954
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A0A()I

    move-result v4

    .line 85955
    .local v2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A07()I

    move-result v3

    .line 85956
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 85957
    .local v5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 85958
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 85959
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    .line 85960
    .local p0, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 85961
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R3;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85962
    if-nez v6, :cond_0

    .line 85963
    move-object v6, v1

    .line 85964
    .end local v6    # "view":Landroid/view/View;
    .end local p0    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 85965
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85966
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qm;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 85967
    :cond_2
    if-nez v5, :cond_0

    .line 85968
    move-object v5, v1

    goto :goto_1

    .line 85969
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 85970
    :cond_4
    return-object v1

    .line 85971
    .end local v5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2B()V
    .locals 4

    .line 85972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    if-nez v0, :cond_1

    .line 85973
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hr;->A0S()Lcom/facebook/ads/redexgen/X/Qh;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "6FRvOBuqOIFmnj4QgnBJgNDOjl7oudHL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/hr;->A07:Lcom/facebook/ads/redexgen/X/Qh;

    .line 85974
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    if-nez v0, :cond_2

    .line 85975
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Qm;->A02(Lcom/facebook/ads/redexgen/X/R2;I)Lcom/facebook/ads/redexgen/X/Qm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85976
    :cond_2
    return-void
.end method

.method public final A2C(I)V
    .locals 4

    .line 85977
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 85978
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/hr;->A20(Ljava/lang/String;)V

    .line 85979
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne p1, v0, :cond_1

    .line 85980
    return-void

    .line 85981
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    .line 85982
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    .line 85983
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A10()V

    .line 85984
    return-void

    .line 85985
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0T(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2D(II)V
    .locals 1

    .line 85986
    iput p1, p0, Lcom/facebook/ads/redexgen/X/hr;->A01:I

    .line 85987
    iput p2, p0, Lcom/facebook/ads/redexgen/X/hr;->A02:I

    .line 85988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 85989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 85990
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A10()V

    .line 85991
    return-void
.end method

.method public A2E(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qf;I)V
    .locals 0

    .line 85992
    return-void
.end method

.method public A2F(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 14

    .line 85993
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/Qh;->A03(Lcom/facebook/ads/redexgen/X/RA;)Landroid/view/View;

    move-result-object v9

    .line 85994
    .local v10, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 85995
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Qg;->A01:Z

    .line 85996
    return-void

    .line 85997
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/R3;

    .line 85998
    .local v12, "params":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Qh;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 85999
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 86000
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/R2;->A19(Landroid/view/View;)V

    .line 86001
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/R2;->A1C(Landroid/view/View;II)V

    .line 86002
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Qm;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    .line 86003
    iget v0, v7, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    if-ne v0, v3, :cond_5

    .line 86004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hr;->A2H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86005
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0j()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0h()I

    move-result v0

    sub-int/2addr v12, v0

    .line 86006
    .local v0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Qm;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 86007
    .local v2, "left":I
    .restart local v0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    if-ne v0, v6, :cond_3

    .line 86008
    iget v13, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 86009
    .local v1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    sub-int/2addr v11, v0

    .line 86010
    .local v3, "top":I
    .end local v0    # "right":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v13, "right":I
    .local p0, "bottom":I
    .local p1, "left":I
    .local p2, "top":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/R2;->A1D(Landroid/view/View;IIII)V

    .line 86011
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R3;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R3;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86012
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Qg;->A03:Z

    .line 86013
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A02:Z

    .line 86014
    return-void

    .line 86015
    .end local v1    # "bottom":I
    .end local v3
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 86016
    .restart local v3    # "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    add-int/2addr v13, v0

    .restart local v1    # "bottom":I
    goto :goto_3

    .line 86017
    .end local v0
    .end local v2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0g()I

    move-result v10

    .line 86018
    .restart local v2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Qm;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 86019
    .end local v0
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0i()I

    move-result v11

    .line 86020
    .restart local v3    # "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/hr;->A04:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Qm;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 86021
    .local v0, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    if-ne v0, v6, :cond_6

    .line 86022
    iget v12, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 86023
    .local v1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    sub-int/2addr v10, v0

    .restart local v2    # "left":I
    goto :goto_3

    .line 86024
    .end local v1    # "right":I
    .end local v2    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    .line 86025
    .restart local v2    # "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/Qh;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Qg;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 86026
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/R2;->A1B(Landroid/view/View;I)V

    goto :goto_1

    .line 86027
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 86028
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Qh;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 86029
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/R2;->A18(Landroid/view/View;)V

    goto/16 :goto_1

    .line 86030
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 86031
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/R2;->A1A(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2G(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/Qh;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 3

    .line 86032
    iget v2, p2, Lcom/facebook/ads/redexgen/X/Qh;->A01:I

    .line 86033
    .local v0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 86034
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Qh;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/R0;->A42(II)V

    .line 86035
    :cond_0
    return-void
.end method

.method public final A2H()Z
    .locals 2

    .line 86036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0c()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A56(I)Landroid/graphics/PointF;
    .locals 6

    .line 86037
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 86038
    const/4 v0, 0x0

    return-object v0

    .line 86039
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/R2;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R2;->A0r(Landroid/view/View;)I

    move-result v0

    .line 86040
    .local v1, "firstChildPos":I
    const/4 v4, 0x1

    if-ge p1, v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/hr;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/hr;->A0G:[Ljava/lang/String;

    const-string v1, "FFnbbIQmxzlcCB5QJgqtb02Njm6aLfkX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_2

    const/4 v4, -0x1

    .line 86041
    .local v0, "direction":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hr;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 86042
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 86043
    :cond_3
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
