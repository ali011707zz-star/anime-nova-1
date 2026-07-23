.class public final Lcom/facebook/ads/redexgen/X/Rc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdSettingsApi;


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;

.field public static final A03:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1616
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5g08JbOH8rkW6qlmlOL6A29nsZk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3r4qaOnTaYokldocBIi2hcDPsInD4tfb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t1tpXM0pz4jVDPHhq8DkXYPWitYDcWj1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "M2cS8KouRYddMtKm0nW0nVVXMs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pym3fLCD1Tj466B1DlzVQDM4sLBUPDKC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ku7CSS8RQpD6IDBrWEnqwcDf2zEQuZtv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vquYYtSubxB68XLpTdo3CiQszZtPPcit"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yyxMEkIlFEzZN5mv2HKHli04TbghSWGE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rc;->A01()V

    const-class v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rc;->A02:Ljava/lang/String;

    .line 1617
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    .line 1618
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    const/16 v2, 0x106

    const/4 v1, 0x3

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1619
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    const/16 v2, 0xfc

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1620
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    const/16 v2, 0x109

    const/4 v1, 0x7

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1621
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    const/16 v2, 0x110

    const/16 v1, 0x8

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Rc;->A04:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rc;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const-string v1, "ed4gaD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x118

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rc;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x5t
        0x17t
        0xft
        0x8t
        0xet
        0x3t
        0x18t
        0x19t
        0xat
        0x15t
        0x1ft
        0x19t
        0x3t
        0x15t
        0x18t
        0x3t
        0x14t
        0x1dt
        0xft
        0x14t
        0x3t
        0x17t
        0x19t
        0x5t
        0x5at
        0x6bt
        0x7dt
        0x7at
        0x2et
        0x63t
        0x61t
        0x6at
        0x6bt
        0x2et
        0x6at
        0x6bt
        0x78t
        0x67t
        0x6dt
        0x6bt
        0x2et
        0x66t
        0x6ft
        0x7dt
        0x66t
        0x34t
        0x2et
        0x47t
        0x78t
        0x75t
        0x7et
        0x30t
        0x64t
        0x75t
        0x63t
        0x64t
        0x79t
        0x7et
        0x77t
        0x30t
        0x69t
        0x7ft
        0x65t
        0x62t
        0x30t
        0x71t
        0x60t
        0x60t
        0x30t
        0x67t
        0x79t
        0x64t
        0x78t
        0x30t
        0x56t
        0x71t
        0x73t
        0x75t
        0x72t
        0x7ft
        0x7ft
        0x7bt
        0x37t
        0x63t
        0x30t
        0x71t
        0x74t
        0x30t
        0x65t
        0x7et
        0x79t
        0x64t
        0x63t
        0x30t
        0x69t
        0x7ft
        0x65t
        0x30t
        0x7dt
        0x65t
        0x63t
        0x64t
        0x30t
        0x63t
        0x60t
        0x75t
        0x73t
        0x79t
        0x76t
        0x69t
        0x30t
        0x64t
        0x78t
        0x75t
        0x30t
        0x74t
        0x75t
        0x66t
        0x79t
        0x73t
        0x75t
        0x30t
        0x78t
        0x71t
        0x63t
        0x78t
        0x75t
        0x74t
        0x30t
        0x59t
        0x54t
        0x30t
        0x64t
        0x7ft
        0x30t
        0x75t
        0x7et
        0x63t
        0x65t
        0x62t
        0x75t
        0x30t
        0x64t
        0x78t
        0x75t
        0x30t
        0x74t
        0x75t
        0x7ct
        0x79t
        0x66t
        0x75t
        0x62t
        0x69t
        0x30t
        0x7ft
        0x76t
        0x30t
        0x64t
        0x75t
        0x63t
        0x64t
        0x30t
        0x71t
        0x74t
        0x63t
        0x3ct
        0x30t
        0x71t
        0x74t
        0x74t
        0x30t
        0x64t
        0x78t
        0x75t
        0x30t
        0x76t
        0x7ft
        0x7ct
        0x7ct
        0x7ft
        0x67t
        0x79t
        0x7et
        0x77t
        0x30t
        0x73t
        0x7ft
        0x74t
        0x75t
        0x30t
        0x72t
        0x75t
        0x76t
        0x7ft
        0x62t
        0x75t
        0x30t
        0x7ct
        0x7ft
        0x71t
        0x74t
        0x79t
        0x7et
        0x77t
        0x30t
        0x71t
        0x7et
        0x30t
        0x71t
        0x74t
        0x2at
        0x30t
        0x51t
        0x74t
        0x43t
        0x75t
        0x64t
        0x64t
        0x79t
        0x7et
        0x77t
        0x63t
        0x3et
        0x71t
        0x74t
        0x74t
        0x44t
        0x75t
        0x63t
        0x64t
        0x54t
        0x75t
        0x66t
        0x79t
        0x73t
        0x75t
        0x38t
        0x32t
        0x7t
        0x6t
        0x15t
        0xat
        0x0t
        0x6t
        0x2at
        0x7t
        0x2bt
        0x2t
        0x10t
        0xbt
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x5ft
        0x73t
        0x64t
        0x6bt
        0x7et
        0x69t
        0x66t
        0x10t
        0x4t
        0x9t
        0x1et
        0x5et
        0x50t
        0x16t
        0x7ct
        0x68t
        0x65t
        0x72t
        0x32t
        0x3ct
        0x7et
        0x7at
    .end array-data
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 5

    .line 62409
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Rc;->A04:Z

    if-eqz v0, :cond_0

    .line 62410
    return-void

    .line 62411
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Rc;->A04:Z

    .line 62412
    sget-object v4, Lcom/facebook/ads/redexgen/X/Rc;->A02:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x19

    const/16 v1, 0x17

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62413
    sget-object v4, Lcom/facebook/ads/redexgen/X/Rc;->A02:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0xc0

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62414
    return-void
.end method


# virtual methods
.method public final isTestMode(Landroid/content/Context;)Z
    .locals 9

    .line 62415
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 62416
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isExplicitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Rc;->A03:Ljava/util/Collection;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 62417
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const-string v1, "T4gBNxEGe37wgzXKS7GC3py1fkLao5wI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pVb2nflAxo98tm2kzzD3dq5aQ79B8LIX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62418
    .end local v0
    :cond_0
    return v8

    .line 62419
    :cond_1
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    .line 62420
    const/4 v2, 0x3

    const/16 v1, 0x16

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62421
    .local v0, "deviceIdHash":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 62422
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 62423
    .local v4, "adPrefs":Landroid/content/SharedPreferences;
    const/16 v2, 0xf0

    const/16 v1, 0xc

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62424
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62425
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62426
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rc;->A01:[Ljava/lang/String;

    const-string v1, "RjRRqTdr5YFfB1Oiza3DhfcwhE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62427
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    invoke-virtual {v0, v4, v3}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62428
    .end local v4    # "adPrefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getTestDevicesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62429
    return v8

    :cond_4
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 62430
    :cond_5
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Rc;->A02(Ljava/lang/String;)V

    .line 62431
    const/4 v0, 0x0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final turnOnDebugger()V
    .locals 0

    .line 62432
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A02()V

    .line 62433
    return-void
.end method
