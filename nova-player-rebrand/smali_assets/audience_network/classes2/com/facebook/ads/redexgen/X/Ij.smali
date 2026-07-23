.class public abstract Lcom/facebook/ads/redexgen/X/Ij;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Z

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/fo;

.field public final A04:Z

.field public final A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/jd;

.field public final A07:Lcom/facebook/ads/redexgen/X/gi;

.field public final A08:Lcom/facebook/ads/redexgen/X/VA;

.field public final A09:Lcom/facebook/ads/redexgen/X/XS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0C:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0D:Lcom/facebook/ads/redexgen/X/fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 809
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uUMDphsbcltlMAasrXzhzXIIsD27sBrh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kD4ASPr1mkkPPQg7686pKphnCznMXNdE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3u4w9tHTXiQc09zCQQwrpogVyGpuea0B"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uLxjLzdSNqmjg5WlrsUTBNxe2IHJHDsH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sowIyJkgs7pChNHWV216bYY5IvqkL5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "woZqrf3JBfr8DagdWcXdOyEt75sBOiDm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mZPGIv6MosabarlDevuwzM4J02qRjqBR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rZe00TaCIEKWr55DYJNI366SEGcMY1oV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ij;->A1A()V

    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;IZZLcom/facebook/ads/redexgen/X/Yh;I)V
    .locals 3

    .line 40417
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40418
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 40419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:Z

    .line 40420
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A19(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:Ljava/lang/String;

    .line 40421
    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:Lcom/facebook/ads/redexgen/X/fo;

    .line 40422
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    .line 40423
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    .line 40424
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:Z

    .line 40425
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:Z

    .line 40426
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    .line 40427
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/ZU;

    .line 40428
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40429
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    .line 40430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    .line 40431
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    .line 40432
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v0

    .line 40433
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 40434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 40435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 40436
    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A09:Lcom/facebook/ads/redexgen/X/XS;

    .line 40437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40438
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    invoke-static {v0, p9}, Lcom/facebook/ads/redexgen/X/Ij;->A18(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:Ljava/lang/String;

    .line 40439
    :cond_0
    return-void
.end method

.method public static synthetic A17(Lcom/facebook/ads/redexgen/X/Ij;)I
    .locals 0

    .line 40440
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    return p0
.end method

.method public static A18(II)Ljava/lang/String;
    .locals 4

    .line 40441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A19(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A19(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A19(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A1A()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ij;->A0E:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0F:[Ljava/lang/String;

    const-string v1, "lGg0879wdsNhw7V1Qtd20OQ8gEXobd5O"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "a2lydBkKvgM6UKG9QoQR6B5cBx9Kev1F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x5ft
        0x10t
        0x19t
        0x5ft
        0x5t
        0x20t
        0x64t
    .end array-data
.end method

.method public static synthetic A1B(Lcom/facebook/ads/redexgen/X/Ij;)Z
    .locals 0

    .line 40442
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:Z

    return p0
.end method

.method public static synthetic A1C(Lcom/facebook/ads/redexgen/X/Ij;)Z
    .locals 0

    .line 40443
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:Z

    return p0
.end method


# virtual methods
.method public abstract A1D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
.end method

.method public A1E()V
    .locals 1

    .line 40444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A09:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XS;->A03()V

    .line 40445
    return-void
.end method

.method public final A1F()V
    .locals 1

    .line 40446
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:Z

    if-nez v0, :cond_0

    .line 40447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 40448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:Z

    .line 40449
    :cond_0
    return-void
.end method

.method public abstract A1G()V
.end method

.method public abstract A1H()V
.end method

.method public A1I(Z)V
    .locals 0

    .line 40450
    return-void
.end method

.method public abstract A1J(Z)V
.end method

.method public abstract A1K(Z)V
.end method

.method public abstract A1L()Z
.end method

.method public abstract A1M()Z
.end method

.method public abstract A1N()Z
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;
    .locals 1

    .line 40451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    return-object v0
.end method

.method public getAdViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;
    .locals 1

    .line 40452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    return-object v0
.end method

.method public abstract getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/dk;
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;
    .locals 1

    .line 40453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 40454
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40455
    return-void
.end method
