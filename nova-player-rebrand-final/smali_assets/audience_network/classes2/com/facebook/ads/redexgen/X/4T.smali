.class public final Lcom/facebook/ads/redexgen/X/4T;
.super Lcom/facebook/ads/redexgen/X/PJ;
.source ""


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Lcom/facebook/ads/redexgen/X/jd;

.field public A04:Lcom/facebook/ads/redexgen/X/Sx;

.field public A05:Lcom/facebook/ads/redexgen/X/1J;

.field public A06:Lcom/facebook/ads/redexgen/X/bj;

.field public A07:Lcom/facebook/ads/redexgen/X/Fy;

.field public A08:Lcom/facebook/ads/redexgen/X/fo;

.field public A09:Lcom/facebook/ads/redexgen/X/fp;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Lcom/facebook/ads/redexgen/X/Y2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 326
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tW3Su6P8GZp1yTngpwFy2DF2GhDzXnf2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3HQabaXZCQWVf5CedpF1izNpaoU6B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XHPkWVuaRS230ZzCiYR7qtQACoZnYKM5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gQNAwnCobdMDtnebLpL2jf4350QwOymE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dRJ3n5TbirTJDeON6upQokchUTJmTtSu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "43KhzPf8qbqk0SZtfSmXLCVXJtKHuuuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kYCENHGiqRDWZvuV9M2TmYzxFqbu31T5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7NDfQDtGKt0HcNI2moZZTs031QkqKmSX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4T;->A0G()V

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0G:I

    .line 327
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0H:I

    .line 328
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0I:I

    .line 329
    const/high16 v1, 0x42600000    # 56.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0K:I

    .line 330
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0F:I

    .line 331
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4T;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 4

    .line 11489
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/PJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 11490
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0C:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11491
    instance-of v0, p5, Lcom/facebook/ads/redexgen/X/7l;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 11492
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    .line 11493
    new-instance v2, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 11494
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ea;

    invoke-direct {v0, p1, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/ea;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A08:Lcom/facebook/ads/redexgen/X/ea;

    .line 11495
    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4T;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    .line 11496
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_1

    .line 11497
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4T;->setFitsSystemWindows(Z)V

    .line 11498
    :cond_1
    return-void
.end method

.method private A00()I
    .locals 2

    .line 11499
    sget v1, Lcom/facebook/ads/redexgen/X/4T;->A0K:I

    sget v0, Lcom/facebook/ads/redexgen/X/4T;->A0G:I

    add-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/4T;->A0H:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 11500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/4T;->A0F:I

    :goto_0
    add-int/2addr v1, v0

    .line 11501
    return v1

    .line 11502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4T;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 0

    .line 11503
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object p0

    return-object p0
.end method

.method private A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 6

    .line 11504
    sget-object v5, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 11505
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    if-nez v0, :cond_0

    .line 11506
    return-object v5

    .line 11507
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    .line 11508
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const-string v1, "E32f1TaBN4dkj3FL0vDfikWnsbqL7SKY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hr;->A25()I

    move-result v0

    .line 11509
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1G(I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/FY;

    .line 11510
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/FY;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11511
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v5

    .line 11512
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const-string v1, "i7TFLIHedh0buU6tWLTqbZ60SXZT8zmg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "DCWE7AKb21kTTjPuFVubbU6pDlTglIBY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/bV;->A06()Lcom/facebook/ads/redexgen/X/Mr;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11513
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    .line 11514
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ff;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ff;-><init>(Lcom/facebook/ads/redexgen/X/4T;)V

    .line 11515
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A07(Lcom/facebook/ads/redexgen/X/Mr;)V

    .line 11516
    :cond_1
    return-object v5

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const-string v1, "dI26cUvsILIVYWhCptAOIe9hx0G02LwU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "KP2PoUq36ksxZ0HlOf60WIRRhVJwRZXP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/bV;->A06()Lcom/facebook/ads/redexgen/X/Mr;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 3

    .line 11517
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    if-eqz v0, :cond_0

    .line 11518
    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 11519
    return-object v0

    .line 11520
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jd;

    .line 11521
    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11523
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11524
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11525
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 11526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 11527
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 0

    .line 11528
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 11529
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0C:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/bj;
    .locals 0

    .line 11530
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 11531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static A0E(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4T;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4T;)Ljava/lang/String;
    .locals 0

    .line 11532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0A:Ljava/lang/String;

    return-object p0
.end method

.method public static A0G()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4T;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x47t
        0x7ct
        0x47t
        0x42t
        0x57t
        0x42t
        0x7ct
        0x41t
        0x56t
        0x4dt
        0x47t
        0x4ft
        0x46t
        0x12t
        0x5t
        0x17t
        0x1t
        0x12t
        0x4t
        0x5t
        0x4t
        0x36t
        0x9t
        0x4t
        0x5t
        0xft
        0x21t
        0x4t
        0x24t
        0x1t
        0x14t
        0x1t
        0x22t
        0x15t
        0xet
        0x4t
        0xct
        0x5t
        0x76t
        0x6et
        0x6ct
        0x75t
    .end array-data
.end method

.method private final A0H()V
    .locals 4

    .line 11533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 11534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11535
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4T;->A0E:[Ljava/lang/String;

    const-string v1, "3JPxSaqJUpKyt95G35P4gQJAerHutmpA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    .line 11536
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    if-eqz v0, :cond_2

    .line 11537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->removeAllViews()V

    .line 11538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1S()V

    .line 11539
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    .line 11540
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    if-eqz v0, :cond_3

    .line 11541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bj;->removeAllViews()V

    .line 11542
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    .line 11543
    :cond_3
    return-void
.end method

.method private final A0I(ILandroid/os/Bundle;)V
    .locals 24

    .line 11544
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4T;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    .line 11545
    const/4 v8, 0x1

    move/from16 v5, p1

    if-ne v5, v8, :cond_4

    .line 11546
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11547
    :goto_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11548
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11549
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11550
    .local v13, "width":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 11551
    .local v12, "height":I
    if-ne v5, v8, :cond_3

    .line 11552
    sget v1, Lcom/facebook/ads/redexgen/X/4T;->A0H:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v2, v3, v1

    div-int/lit8 v1, v4, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11553
    .local v1, "childWidth":I
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    .line 11554
    .local v2, "childSpacing":I
    mul-int/lit8 v20, v3, 0x4

    .line 11555
    .local v4, "extraSpacing":I
    .end local v1    # "childWidth":I
    .end local v2    # "childSpacing":I
    .local v17, "childWidth":I
    .local v18, "childSpacing":I
    .local v19, "extraSpacing":I
    :goto_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(Lcom/facebook/ads/redexgen/X/4T;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A08:Lcom/facebook/ads/redexgen/X/fo;

    .line 11556
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A08:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v1, v0, v8, v6, v2}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    .line 11557
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A00:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 11558
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A01:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 11559
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/1J;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/1J;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    .line 11560
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/1J;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11561
    new-instance v7, Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    move-object v7, v7

    move-object v8, v6

    move v9, v5

    move-object v10, v2

    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Fy;-><init>(Lcom/facebook/ads/redexgen/X/1J;ILjava/util/List;Lcom/facebook/ads/redexgen/X/fp;Landroid/os/Bundle;)V

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    .line 11562
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Fp;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/4T;->A04:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/4T;->A0C:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11563
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v16

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/4T;->A0A:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    move-object v6, v8

    .end local v12    # "height":I
    .local v20, "height":I
    .end local v13    # "width":I
    .local v22, "width":I
    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move/from16 v21, v5

    move/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v23}, Lcom/facebook/ads/redexgen/X/Fp;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/Fy;Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 11564
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 11565
    move-object/from16 v4, p0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/R7;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1h(Lcom/facebook/ads/redexgen/X/R7;)V

    .line 11566
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    .line 11567
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0K(Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 11568
    :cond_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11569
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    if-eqz v0, :cond_1

    .line 11570
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11571
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 11572
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    .line 11573
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v2

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 11574
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VM;->AKn(Landroid/view/View;Ljava/lang/String;Z)V

    .line 11575
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/PJ;->A0f(Landroid/view/View;ZI)V

    .line 11576
    return-void

    .line 11577
    .end local v1
    .end local v2
    .end local v4    # "extraSpacing":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4T;->A00()I

    move-result v1

    sub-int/2addr v4, v1

    .line 11578
    .restart local v1    # "childWidth":I
    sget v3, Lcom/facebook/ads/redexgen/X/4T;->A0H:I

    .line 11579
    .restart local v2    # "childSpacing":I
    mul-int/lit8 v20, v3, 0x2

    goto/16 :goto_1

    .line 11580
    :cond_4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4T;->A02:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 6

    .line 11581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 11582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0A:Ljava/lang/String;

    .line 11583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A00:I

    .line 11584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A01:I

    .line 11585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v5

    .line 11586
    .local v0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    .line 11587
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 11588
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/NR;

    .line 11589
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/e5;-><init>(IILcom/facebook/ads/redexgen/X/NR;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11590
    .end local v2    # "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11591
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 4

    .line 11592
    new-instance v1, Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/7N;-><init>()V

    .line 11593
    .local v0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/hU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hU;->A0G(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 11594
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fe;-><init>(Lcom/facebook/ads/redexgen/X/4T;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Y(Lcom/facebook/ads/redexgen/X/cp;)V

    .line 11595
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    .line 11596
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bj;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/bj;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    .line 11597
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/4T;->A0I:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11598
    .local v1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/4T;->A0J:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 11599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11600
    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/4T;Lcom/facebook/ads/redexgen/X/Y2;)V
    .locals 0

    .line 11601
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Y2;)V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/4T;)Z
    .locals 0

    .line 11602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0j()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/4T;)Z
    .locals 0

    .line 11603
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0k()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0b()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 8

    .line 11604
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    .line 11605
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0G:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 11606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A22()I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IIZ)V

    .line 11607
    return-object v1
.end method

.method public final A0d()V
    .locals 3

    .line 11608
    const/16 v2, 0x27

    const/4 v1, 0x4

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4T;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 11609
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2N()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    .line 11610
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4T;->A0m()V

    .line 11611
    :cond_0
    return-void
.end method

.method public final A0l()Z
    .locals 1

    .line 11612
    const/4 v0, 0x0

    return v0
.end method

.method public final A0m()V
    .locals 2

    .line 11613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 11614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 11615
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2K(Z)V

    .line 11616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0M(I)V

    .line 11617
    return-void
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 11618
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 11619
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/PJ;->A0g(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 11620
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4T;->A0J(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 11621
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 11622
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4T;->A0I(ILandroid/os/Bundle;)V

    .line 11623
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fd;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Fd;-><init>(Lcom/facebook/ads/redexgen/X/4T;Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 11624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v1

    .line 11625
    .local v1, "unskippableSec":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    if-eqz v0, :cond_0

    .line 11626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A03()I

    move-result v1

    .line 11627
    :cond_0
    if-lez v1, :cond_1

    .line 11628
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/PJ;->A0e(I)V

    .line 11629
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v0

    if-ltz v0, :cond_2

    .line 11630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 11631
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e9;-><init>(Lcom/facebook/ads/redexgen/X/4T;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11633
    :cond_3
    return-void
.end method

.method public final AFA(Z)V
    .locals 1

    .line 11634
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->AFA(Z)V

    .line 11635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    if-eqz v0, :cond_0

    .line 11636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Q()V

    .line 11637
    :cond_0
    return-void
.end method

.method public final AFi(Z)V
    .locals 1

    .line 11638
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->AFi(Z)V

    .line 11639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0R()V

    .line 11640
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 1

    .line 11641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    if-eqz v0, :cond_0

    .line 11642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0W(Landroid/os/Bundle;)V

    .line 11643
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 11644
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 11645
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11646
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4T;->AIv(Landroid/os/Bundle;)V

    .line 11647
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4T;->A0H()V

    .line 11648
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4T;->A0I(ILandroid/os/Bundle;)V

    .line 11649
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11650
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 11651
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4T;->setFitsSystemWindows(Z)V

    .line 11652
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 11653
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PJ;->onDestroy()V

    .line 11654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 11656
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11657
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4T;->A0A:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    .line 11658
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0C:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11659
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 11660
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 11661
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 11662
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4T;->A0H()V

    .line 11663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 11664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A09:Lcom/facebook/ads/redexgen/X/fp;

    .line 11665
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A08:Lcom/facebook/ads/redexgen/X/fo;

    .line 11666
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4T;->A0B:Ljava/util/List;

    .line 11667
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 11668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4T;->A0C:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Y2;->A06(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 11669
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
