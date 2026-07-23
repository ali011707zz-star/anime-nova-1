.class public final Lcom/facebook/ads/redexgen/X/TZ;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WD;->A0Q(Lcom/facebook/ads/redexgen/X/WA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WA;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WD;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1714
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rr4pEtDer0K6hYSMypGI4SVA4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qv2m0fG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2OIR1Yv9Y7RzsB5MK8fjyIRTaeFBsJy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "02JyCSWW55zn1AQ6h7F4FoBumR9MK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PV14KCf6Ep37wllo1HHxqudNmgtveNCD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8xcTKK5W7UNHePnVaLckl2F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lGpL0wggi73mqN0I3cVtORcNpouSV80j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "84RqxglWV7M6OmuSAB1gnMVf4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TZ;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TZ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/WA;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 65529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TZ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TZ;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x73t
        0x61t
        0x7ct
        0x7ft
        0x70t
        0x70t
        0x7bt
        0x6ct
        0x61t
        0x75t
        0x7bt
        0x67t
        0x12t
        0x33t
        0x7ct
        0x32t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x7ct
        0x3ft
        0x33t
        0x32t
        0x32t
        0x39t
        0x3ft
        0x28t
        0x35t
        0x33t
        0x32t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 65530
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A01(Lcom/facebook/ads/redexgen/X/WD;J)J

    .line 65531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xz;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xy;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    if-ne v1, v0, :cond_0

    .line 65532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A0F(Lcom/facebook/ads/redexgen/X/WD;)V

    .line 65533
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 65534
    .local v0, "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/16 v3, 0xd

    const/16 v1, 0x15

    const/16 v0, 0x3e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v7

    .line 65535
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 65536
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65537
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v4

    .line 65538
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 65539
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 65540
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 65541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v2, v7}, Lcom/facebook/ads/redexgen/X/Vm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 65542
    return-void

    .line 65543
    .end local v0    # "networkError":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A08(Landroid/content/Context;)V

    .line 65544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SZ;->A07(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 65545
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UG;->A00()Lcom/facebook/ads/redexgen/X/UG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65546
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/UG;->A01(Lcom/facebook/ads/redexgen/X/T8;Z)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65547
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A05()Lcom/facebook/ads/redexgen/X/U3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A7y(Lcom/facebook/ads/redexgen/X/U3;)Ljava/util/Map;

    move-result-object v1

    .line 65548
    .local v0, "staticParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65549
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/WA;->A0A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 65550
    .local v1, "adRequestParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WD;->A09(Lcom/facebook/ads/redexgen/X/WD;Ljava/util/Map;)Ljava/util/Map;

    .line 65551
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 65552
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 65553
    const/4 v3, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65554
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x3b

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/TZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65555
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65556
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65557
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 65558
    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 65559
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65560
    :catch_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65561
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A04:Lcom/facebook/ads/redexgen/X/Vq;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65562
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A06:Lcom/facebook/ads/redexgen/X/Vq;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65563
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A05:Lcom/facebook/ads/redexgen/X/Vq;

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WA;->A07()Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v0

    if-nez v0, :cond_3

    .line 65565
    .local v2, "shouldCheckSystemHttpAgent":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65566
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 65567
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/gD;->A02(ZLcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65568
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A07(Lcom/facebook/ads/redexgen/X/WD;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/facebook/ads/redexgen/X/g9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/g9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65569
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A08(Lcom/facebook/ads/redexgen/X/WD;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/g9;->A08()[B

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65570
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y1;->A00()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/WA;

    .line 65571
    invoke-static {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/WD;->A05(Lcom/facebook/ads/redexgen/X/WD;JLcom/facebook/ads/redexgen/X/WA;)Lcom/facebook/ads/redexgen/X/fw;

    move-result-object v0

    .line 65572
    invoke-interface {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/fv;->AGy(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/fw;)V

    goto :goto_1

    .line 65573
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65574
    :catch_1
    move-exception v0

    .line 65575
    .local v2, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 65576
    .local v3, "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 65577
    .local p1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 65578
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    .line 65579
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v4

    .line 65580
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 65581
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 65582
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 65583
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TZ;->A01:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TZ;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/TZ;->A03:[Ljava/lang/String;

    const-string v1, "TysUXKeFt8WChM0CalDFmuBH7ELd8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 65584
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local p1
    :goto_1
    return-void
.end method
