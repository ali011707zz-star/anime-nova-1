.class public abstract Lcom/facebook/ads/redexgen/X/OS;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1481
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eCm2h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nf7MRRwZDvE8y93FmZbCxZ1qYSmL5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hLhdl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QFLrF4Ks"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BOssa91vTI1SLJXUpFqc70oF1BItrBHL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FqkYvgsNMANULI15i6yaohJxBf4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "miT1Gr55rzSuK5J6MchCspbbNM8vv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VeGA9hanV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OS;->A03()V

    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/AdExperienceType;
    .locals 3

    .line 55720
    if-nez p0, :cond_0

    .line 55721
    const/4 v0, 0x0

    return-object v0

    .line 55722
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55723
    sget-object p0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const-string v1, "tWHbMLY0jEAGlYHbcSqJBIrBc18go"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4H5Z0LJ7wdDYVvSZnKKEqH9oXzt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object p0

    .line 55724
    :cond_2
    const/16 v2, 0x21

    const/16 v1, 0x2a

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55725
    sget-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    return-object v0

    .line 55726
    :cond_3
    sget-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED:Lcom/facebook/ads/AdExperienceType;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const-string v1, "4uOWgwLt9zl0NDLT0ztu7wfG2sM7UGLh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/AdExperienceType;)Ljava/lang/String;
    .locals 0

    .line 55727
    invoke-virtual {p0}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x4b

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A01:[Ljava/lang/String;

    const-string v1, "XJhKJAm65tduHMV7V8mUfKCv645Q9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xNMnL7L41pq7X174jFC3Kxd5REO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/OS;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x66t
        0x5dt
        0x67t
        0x7at
        0x72t
        0x67t
        0x70t
        0x6bt
        0x67t
        0x6ct
        0x61t
        0x67t
        0x5dt
        0x61t
        0x6dt
        0x6ct
        0x64t
        0x6bt
        0x65t
        0x5dt
        0x6bt
        0x6ct
        0x76t
        0x67t
        0x70t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x6bt
        0x63t
        0x6et
        0x20t
        0x25t
        0x1et
        0x24t
        0x39t
        0x31t
        0x24t
        0x33t
        0x28t
        0x24t
        0x2ft
        0x22t
        0x24t
        0x1et
        0x22t
        0x2et
        0x2ft
        0x27t
        0x28t
        0x26t
        0x1et
        0x33t
        0x24t
        0x36t
        0x20t
        0x33t
        0x25t
        0x24t
        0x25t
        0x1et
        0x28t
        0x2ft
        0x35t
        0x24t
        0x33t
        0x32t
        0x35t
        0x28t
        0x35t
        0x28t
        0x20t
        0x2dt
    .end array-data
.end method
