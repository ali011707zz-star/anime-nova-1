.class public final Lcom/facebook/ads/redexgen/X/SY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public A00:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SY;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 3

    .line 63997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63998
    const/16 v2, 0x21

    const/16 v1, 0x15

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    .line 63999
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

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

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SY;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2ct
        0x3et
        0x2dt
        0x3at
        0x3ct
        0x21t
        0x3bt
        0x21t
        0x26t
        0x2ft
        0x1t
        0x2ct
        0x50t
        0x45t
        0x45t
        0x43t
        0x58t
        0x53t
        0x44t
        0x45t
        0x58t
        0x5et
        0x5ft
        0x78t
        0x55t
        0x5dt
        0x5ft
        0x5dt
        0x56t
        0x5bt
        0x6at
        0x6dt
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
        0x1ft
        0x1dt
        0x1at
        0x73t
        0x76t
        0x72t
        0x76t
        0x6bt
        0x5et
        0x7bt
        0x4bt
        0x6dt
        0x7et
        0x7ct
        0x74t
        0x76t
        0x71t
        0x78t
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/SX;
    .locals 9

    .line 64000
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64001
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64002
    .local v0, "advertiserId":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    const/16 v2, 0x36

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 64003
    .local v1, "limitAdTracking":Z
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    const/16 v2, 0x1a

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 64004
    .local p0, "cacheTS":J
    new-instance v3, Lcom/facebook/ads/redexgen/X/SX;

    sget-object v6, Lcom/facebook/ads/redexgen/X/SW;->A08:Lcom/facebook/ads/redexgen/X/SW;

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;J)V

    return-object v3

    .line 64005
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v1    # "limitAdTracking":Z
    .end local p0    # "cacheTS":J
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SX;->A00()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 5

    .line 64006
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/SX;)V
    .locals 4

    .line 64007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 64008
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64009
    const/16 v2, 0x36

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A04()Z

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64010
    const/16 v2, 0x1a

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A01()J

    move-result-wide v0

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64011
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64012
    return-void
.end method

.method public final A05(Ljava/lang/String;)V
    .locals 4

    .line 64013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 64014
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64015
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64016
    return-void
.end method
