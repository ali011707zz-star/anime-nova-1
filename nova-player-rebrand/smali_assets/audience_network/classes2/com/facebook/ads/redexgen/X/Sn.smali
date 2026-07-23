.class public final Lcom/facebook/ads/redexgen/X/Sn;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1671
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OKQe8hXRO9IjIcE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fZKFXGCnlijKRnd4C4GIjN8U9jomZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zd2g3FUlSdy4niS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DQ1eYrU0vgUbRV2buV2T3UhVrDT8jNOj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q6rIf3Izbhrm2WD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9gkLXGbOvBYKsW5YBwzKkub2Nn3K8ZPa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2O7yMssiHcBFdM45gqp1TjJS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Fkq1E5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sn;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sn;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/SharedPreferences;
    .locals 3

    .line 64323
    const/16 v2, 0x9

    const/16 v1, 0x22

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 64324
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sn;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sn;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sn;->A01:[Ljava/lang/String;

    const-string v1, "GMwx2CjIRojg5Fd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kdR397QSXvrHcnb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x64

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sn;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x5ct
        0x77t
        0x4dt
        0x50t
        0x5ct
        0x5at
        0x49t
        0x5bt
        0x18t
        0x14t
        0x16t
        0x55t
        0x1dt
        0x1at
        0x18t
        0x1et
        0x19t
        0x14t
        0x14t
        0x10t
        0x55t
        0x1at
        0x1ft
        0x8t
        0x55t
        0x12t
        0x15t
        0xft
        0x1et
        0x9t
        0x15t
        0x1at
        0x17t
        0x55t
        0x19t
        0xft
        0x1et
        0x3t
        0xft
        0x9t
        0x1at
        0x8t
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
    .locals 4

    .line 64325
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Sn;->A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 4

    .line 64326
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Sn;->A00(Lcom/facebook/ads/redexgen/X/T8;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64327
    .local v0, "btSP":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64328
    return-void
.end method
