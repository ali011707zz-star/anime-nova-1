.class public abstract Lcom/facebook/ads/redexgen/X/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WC;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/N6;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/WD;

.field public static final A0H:Landroid/os/Handler;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/N1;

.field public A01:Lcom/facebook/ads/redexgen/X/N1;

.field public A02:Ljava/lang/String;

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Tw;

.field public A05:Lcom/facebook/ads/redexgen/X/WA;

.field public A06:Lcom/facebook/ads/redexgen/X/WD;

.field public A07:Lcom/facebook/ads/redexgen/X/N2;

.field public final A08:Lcom/facebook/ads/redexgen/X/O7;

.field public final A09:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/N6;

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2972
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mx9sJqsz4sgJcdPgoYbgRIW9VnwzqRx6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rFbyGWP2Ub8PQhtH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vlmOFoI5eqS6Nw0ENJhYNh6o4BRmenqE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JTMxf3amnDxIP84vbXSIdB2jgXN5bQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LkG9NIMCA2H26FKF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xLNm9V1ZNmyFYJ5qhdZubuzSePd6Iimu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SoM7bEoo8CKfR8pxc6QG8O9JCd0xBEh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/j0;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YD;->A02()V

    .line 2973
    const-class v0, Lcom/facebook/ads/redexgen/X/j0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0I:Ljava/lang/String;

    .line 2974
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 2

    .line 87757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87758
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A03:J

    .line 87759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A02:Ljava/lang/String;

    .line 87760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87761
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    .line 87762
    sget-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0G:Lcom/facebook/ads/redexgen/X/WD;

    if-eqz v0, :cond_1

    .line 87763
    sget-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0G:Lcom/facebook/ads/redexgen/X/WD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    .line 87764
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/WD;->A0R(Lcom/facebook/ads/redexgen/X/WC;)V

    .line 87765
    sget-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0F:Lcom/facebook/ads/redexgen/X/N6;

    if-eqz v0, :cond_0

    .line 87766
    sget-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0F:Lcom/facebook/ads/redexgen/X/N6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0A:Lcom/facebook/ads/redexgen/X/N6;

    .line 87767
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 87768
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 87769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5e()V

    .line 87770
    return-void

    .line 87771
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/N6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0A:Lcom/facebook/ads/redexgen/X/N6;

    goto :goto_1

    .line 87772
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    goto :goto_0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/j0;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x166

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x17t
        -0x1at
        -0xbt
        -0x7t
        -0x16t
        -0x9t
        -0x5bt
        -0x17t
        -0xct
        -0x16t
        -0x8t
        -0x5bt
        -0xdt
        -0xct
        -0x7t
        -0x5bt
        -0x16t
        -0x3t
        -0x12t
        -0x8t
        -0x7t
        -0xet
        0x15t
        0x12t
        0x21t
        0x25t
        0x16t
        0x23t
        -0x2ft
        0x1at
        0x24t
        -0x2ft
        0x1ft
        0x26t
        0x1dt
        0x1dt
        -0x2ft
        -0x27t
        0x14t
        0x19t
        0x12t
        0x1at
        0x1ft
        -0x2ft
        0x1ft
        0x20t
        0x25t
        -0x2ft
        0x1dt
        0x20t
        0x12t
        0x15t
        0x16t
        0x15t
        -0x26t
        -0x38t
        -0x15t
        -0x18t
        -0x9t
        -0x5t
        -0x14t
        -0x7t
        -0x59t
        -0x10t
        -0x6t
        -0x59t
        -0xbt
        -0x4t
        -0xdt
        -0xdt
        -0x59t
        -0x51t
        -0x16t
        -0x11t
        -0x18t
        -0x10t
        -0xbt
        -0x14t
        -0x15t
        -0x50t
        -0x5bt
        -0x38t
        -0x3bt
        -0x2ct
        -0x28t
        -0x37t
        -0x2at
        -0x7ct
        -0x33t
        -0x29t
        -0x7ct
        -0x2et
        -0x27t
        -0x30t
        -0x30t
        -0x7ct
        -0x74t
        -0x2et
        -0x2dt
        -0x7ct
        -0x39t
        -0x34t
        -0x3bt
        -0x33t
        -0x2et
        -0x73t
        0x6t
        0x29t
        0x26t
        0x35t
        0x39t
        0x2at
        0x37t
        -0x1bt
        0x2et
        0x38t
        -0x1bt
        0x33t
        0x3at
        0x31t
        0x31t
        -0x1bt
        0x34t
        0x33t
        -0x1bt
        0x38t
        0x39t
        0x26t
        0x37t
        0x39t
        0x6t
        0x29t
        -0x15t
        0xct
        -0x43t
        0xat
        0xct
        0xft
        0x2t
        -0x43t
        -0x2t
        0x1t
        -0x43t
        0x0t
        -0x2t
        0xbt
        0x1t
        0x6t
        0x1t
        -0x2t
        0x11t
        0x2t
        0x10t
        -0x35t
        -0x32t
        -0x17t
        -0x1at
        -0x1bt
        -0x22t
        -0x69t
        -0x28t
        -0x25t
        -0x28t
        -0x19t
        -0x15t
        -0x24t
        -0x17t
        -0x69t
        -0x15t
        -0x10t
        -0x19t
        -0x24t
        -0x5bt
        0x3ft
        0x42t
        -0x2t
        0x3ft
        0x4at
        0x50t
        0x43t
        0x3ft
        0x42t
        0x57t
        -0x2t
        0x51t
        0x52t
        0x3ft
        0x50t
        0x52t
        0x43t
        0x42t
        0x2ft
        0x32t
        0x41t
        -0x33t
        -0x24t
        -0x2bt
        0x3et
        0x43t
        0x3ct
        0x44t
        0x49t
        0x3at
        0x4bt
        0x3ct
        0x4dt
        0x3ct
        0x48t
        0x4et
        -0x32t
        -0x21t
        -0x1dt
        -0x20t
        -0xdt
        -0x20t
        -0x32t
        -0x1ft
        -0x17t
        -0x1ct
        -0x1et
        -0xdt
        -0x61t
        -0x18t
        -0xet
        -0x61t
        -0x13t
        -0xct
        -0x15t
        -0x15t
        0x13t
        0x1ct
        0x11t
        0x20t
        0x27t
        0x1et
        0x22t
        0x13t
        0x12t
        0xdt
        0x17t
        0x12t
        0x3ct
        0x45t
        0x4dt
        0x40t
        0x49t
        0x46t
        0x45t
        0x44t
        0x3ct
        0x45t
        0x4bt
        -0x9t
        0x40t
        0x4at
        -0x9t
        0x3ct
        0x44t
        0x47t
        0x4bt
        0x50t
        0x33t
        0x39t
        0x2et
        0x40t
        0x35t
        0x2ct
        0x30t
        0x3ct
        0x3bt
        0x33t
        0x36t
        0x34t
        0x15t
        0x21t
        0x14t
        0x20t
        0x24t
        0x14t
        0x1dt
        0x12t
        0x28t
        0xet
        0x12t
        0x10t
        0x1ft
        0x1ft
        0x18t
        0x1dt
        0x16t
        -0x3t
        0x2t
        0xat
        -0xbt
        0x0t
        -0x3t
        -0x8t
        -0x4ct
        0x4t
        0x0t
        -0xbt
        -0x9t
        -0x7t
        0x1t
        -0x7t
        0x2t
        0x8t
        -0x4ct
        -0x3t
        0x2t
        -0x4ct
        0x6t
        -0x7t
        0x7t
        0x4t
        0x3t
        0x2t
        0x7t
        -0x7t
        0x24t
        0x27t
        0x19t
        0x1ct
        0x17t
        0x2ct
        0x21t
        0x25t
        0x1dt
        0x17t
        0x25t
        0x2bt
        0x11t
        0x4t
        0x10t
        0x14t
        0x4t
        0x12t
        0x13t
        -0x2t
        0x8t
        0x3t
        0xat
        0x5t
        -0x7t
        -0xat
        0x9t
        -0x6t
        -0xct
        0x9t
        -0x2t
        0x2t
        -0x6t
        0x8t
        0x9t
        -0xat
        0x2t
        0x5t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 6

    .line 87773
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87774
    return-void

    .line 87775
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/FlashPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87776
    .local v0, "flashPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tw;->A0C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87777
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 87778
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tw;->A0C()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x106

    const/16 v1, 0xc

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 87779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x156

    const/16 v1, 0x10

    const/16 v0, 0x36

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87780
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87781
    :goto_0
    return-void

    .line 87782
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 2

    .line 87783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tw;->A0H()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJS(Z)V

    .line 87784
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 16

    .line 87785
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/RG;->A00()Lcom/facebook/ads/redexgen/X/Tw;

    move-result-object v2

    .line 87786
    .local v2, "placement":Lcom/facebook/ads/redexgen/X/Tw;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v1

    if-nez v1, :cond_2

    .line 87787
    .end local v3
    .end local v5
    .end local v6
    :cond_0
    const/16 v3, 0x123

    const/16 v2, 0x1d

    const/16 v1, 0x35

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v4

    .line 87788
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v3, v1, v4}, Lcom/facebook/ads/redexgen/X/Vm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 87789
    .local v3, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-interface {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87790
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v1, :cond_1

    .line 87791
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87792
    :cond_1
    return-void

    .line 87793
    :cond_2
    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    .line 87794
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87795
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    .line 87796
    .local v3, "currentPlacement":Lcom/facebook/ads/redexgen/X/Tw;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A0E()Lorg/json/JSONObject;

    move-result-object v6

    const/16 v5, 0xc3

    const/4 v4, 0x3

    const/16 v3, 0xd

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_5

    .line 87797
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A04()Lcom/facebook/ads/redexgen/X/Tu;

    move-result-object v4

    .line 87798
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/j0;->A0F(Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 87799
    return-void

    .line 87800
    :cond_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-nez v3, :cond_4

    .line 87801
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87802
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/Td;->A0a:I

    .line 87803
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tu;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x51

    const/16 v2, 0x1a

    const/4 v1, 0x5

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87804
    invoke-interface {v6, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87805
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87806
    return-void

    .line 87807
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/O8;

    .line 87808
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v6

    .line 87809
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v7

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    .line 87810
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tx;->A0C()J

    move-result-wide v9

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;Ljava/lang/String;J)V

    .line 87811
    .local v4, "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/j0;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V

    .line 87812
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    .end local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    goto/16 :goto_3

    .line 87813
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87814
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A04()Lcom/facebook/ads/redexgen/X/Tu;

    move-result-object v7

    .line 87815
    .restart local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 87816
    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/j0;->A0F(Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 87817
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87818
    :cond_7
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A04()Lcom/facebook/ads/redexgen/X/Tu;

    move-result-object v7

    .line 87819
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    .local v6, "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    if-nez v7, :cond_6

    .line 87820
    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    const/4 v6, 0x0

    sget-object v5, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v4, v5, v3

    const/4 v3, 0x6

    aget-object v5, v5, v3

    const/16 v3, 0x1a

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v4, v3, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87821
    :cond_8
    invoke-direct {v0, v7}, Lcom/facebook/ads/redexgen/X/j0;->A0E(Lcom/facebook/ads/redexgen/X/Tu;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87822
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    sget-object v5, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v4, "ioxWOihgwDfBac41kTr6w1CF9LpRHapv"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    if-nez v10, :cond_a

    .line 87823
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87824
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    sget v5, Lcom/facebook/ads/redexgen/X/Td;->A0a:I

    .line 87825
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tu;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x38

    const/16 v2, 0x19

    const/16 v1, 0x28

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87826
    invoke-interface {v7, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87827
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87828
    return-void

    .line 87829
    :cond_a
    const/4 v5, 0x0

    .line 87830
    .local v8, "loaded":Z
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x1

    if-le v4, v3, :cond_c

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87831
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/N1;->AKL()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 87832
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 87833
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 87834
    .local v15, "ads":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Tu;

    .line 87835
    .local v10, "candidate":Lcom/facebook/ads/redexgen/X/Tu;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 87836
    :cond_b
    const/16 v5, 0xc0

    const/4 v4, 0x3

    const/16 v3, 0x6f

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87837
    const/16 v5, 0xc6

    const/16 v4, 0xc

    const/16 v3, 0x7c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 87838
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A0E()Lorg/json/JSONObject;

    move-result-object v4

    .line 87839
    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87840
    new-instance v10, Lcom/facebook/ads/redexgen/X/O8;

    .line 87841
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v12

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    .line 87842
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tx;->A0C()J

    move-result-wide v14

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;Ljava/lang/String;J)V

    .line 87843
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {v0, v3, v1, v7, v10}, Lcom/facebook/ads/redexgen/X/j0;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V

    .line 87844
    const/4 v5, 0x1

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87845
    .local v0, "ex":Ljava/lang/Exception;
    :catch_0
    const/4 v5, 0x0

    .line 87846
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_c
    :goto_2
    if-nez v5, :cond_10

    .line 87847
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 87848
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x67

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v6

    .line 87849
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87850
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v5

    .line 87851
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v4

    const/16 v3, 0x85

    const/16 v2, 0x16

    const/16 v1, 0x3e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87852
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v1, :cond_d

    .line 87853
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87854
    :cond_d
    return-void

    .line 87855
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-nez v3, :cond_f

    .line 87856
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87857
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    sget v5, Lcom/facebook/ads/redexgen/X/Td;->A0a:I

    .line 87858
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tu;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x16

    const/16 v2, 0x22

    const/16 v1, 0x52

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87859
    invoke-interface {v7, v9, v5, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87860
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87861
    return-void

    .line 87862
    :cond_f
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Tu;

    .line 87863
    .end local v6    # "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    new-instance v5, Lcom/facebook/ads/redexgen/X/O8;

    .line 87864
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v6

    .line 87865
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v7

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    .line 87866
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tx;->A0C()J

    move-result-wide v9

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Tx;Ljava/lang/String;J)V

    .line 87867
    .restart local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/j0;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V

    .line 87868
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/Tu;
    .end local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/O8;
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    .end local v8    # "loaded":Z
    :cond_10
    :goto_3
    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/j0;->A09(Lcom/facebook/ads/redexgen/X/Tw;)V

    .line 87869
    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/j0;->A0A(Lcom/facebook/ads/redexgen/X/Tw;)V

    .line 87870
    return-void

    .line 87871
    :cond_11
    return-void
.end method

.method private final A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4

    .line 87872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5h(Z)V

    .line 87873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A03:J

    .line 87874
    goto :goto_1

    .line 87875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87876
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/O7;->A09:Lcom/facebook/ads/redexgen/X/Vq;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v0, v3, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Vn; {:try_start_0 .. :try_end_0} :catch_0

    .line 87877
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/Vu;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87878
    invoke-virtual {v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/O7;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Vu;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/WA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A05:Lcom/facebook/ads/redexgen/X/WA;

    .line 87879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    if-eqz v0, :cond_1

    .line 87880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A05:Lcom/facebook/ads/redexgen/X/WA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0Q(Lcom/facebook/ads/redexgen/X/WA;)V

    .line 87881
    :cond_1
    return-void

    .line 87882
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/Vu;
    :catch_0
    move-exception v0

    .line 87883
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Vn;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A02(Lcom/facebook/ads/redexgen/X/Vn;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87884
    return-void
.end method

.method private A0D(Lorg/json/JSONObject;)V
    .locals 3

    .line 87885
    if-eqz p1, :cond_0

    .line 87886
    const/16 v2, 0xe6

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A02:Ljava/lang/String;

    .line 87887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N8;->A0O(Lorg/json/JSONObject;)V

    .line 87888
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Tu;)Z
    .locals 1

    .line 87889
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;)Z
    .locals 8

    .line 87890
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-nez p2, :cond_1

    .line 87891
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v5

    .line 87892
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87893
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    .line 87894
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x85

    const/16 v1, 0x16

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_0

    .line 87896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87897
    :cond_0
    return v7

    .line 87898
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tu;->A02()Ljava/lang/String;

    move-result-object v6

    .line 87899
    .local v2, "adapterName":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/j0;->A0A:Lcom/facebook/ads/redexgen/X/N6;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87900
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N6;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/N1;

    move-result-object v2

    .line 87901
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/N1;
    if-nez v2, :cond_2

    .line 87902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87903
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0a:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87904
    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87905
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87906
    return v7

    .line 87907
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A08:Lcom/facebook/ads/redexgen/X/O7;

    .line 87908
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O7;->A01()Ljava/util/Set;

    move-result-object v1

    .line 87909
    .local v4, "expectedPlacementTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/protocol/AdPlacementType;>;"
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/N1;->A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 87910
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v4

    .line 87911
    .restart local v0    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87912
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v5

    .line 87913
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x9b

    const/16 v1, 0x13

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_4

    .line 87915
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v1, "XDVsCbJ3K5v8dlUMGtS0uKtjThdAM1fs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AXbWkB0jI9efrJtSTWvCCcVR8Wd1ee9G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87916
    :cond_4
    return v7

    .line 87917
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    :cond_5
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87918
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Tu;->A04()Lorg/json/JSONObject;

    move-result-object v3

    .line 87919
    .local v0, "dataObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_9

    .line 87920
    const/16 v2, 0x14c

    const/16 v1, 0xa

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87921
    .local v5, "requestId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->AJk(Ljava/lang/String;)V

    .line 87922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T8;->A0D(Ljava/lang/String;)V

    .line 87923
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A00()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    .line 87924
    .local v6, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    if-eqz v0, :cond_6

    .line 87925
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T8;->A0D(Ljava/lang/String;)V

    .line 87926
    :cond_6
    const/16 v2, 0x112

    const/16 v1, 0x11

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0D(Lorg/json/JSONObject;)V

    .line 87927
    .end local v5    # "requestId":Ljava/lang/String;
    .end local v6    # "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A05:Lcom/facebook/ads/redexgen/X/WA;

    if-nez v0, :cond_8

    .line 87928
    const/16 v2, 0xf2

    const/16 v1, 0x14

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 87929
    .local v5, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v2

    .line 87930
    .local v6, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_7

    .line 87932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87933
    :cond_7
    return v7

    .line 87934
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 87935
    :cond_9
    const/16 v2, 0xd4

    const/16 v1, 0x12

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 87936
    .restart local v5    # "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v2

    .line 87937
    .restart local v6    # "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_a

    .line 87939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87940
    :cond_a
    return v7
.end method


# virtual methods
.method public final A0G()J
    .locals 5

    .line 87941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    if-eqz v0, :cond_0

    .line 87942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A03()J

    move-result-wide v0

    return-wide v0

    .line 87943
    :cond_0
    const-wide/16 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v1, "cOTrI9DB0oxjTyLR1voyMrEgWVbVphTL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final A0H()Landroid/os/Handler;
    .locals 1

    .line 87944
    sget-object v0, Lcom/facebook/ads/redexgen/X/j0;->A0H:Landroid/os/Handler;

    return-object v0
.end method

.method public A0I()Lcom/facebook/ads/redexgen/X/NQ;
    .locals 4

    .line 87945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    if-nez v0, :cond_1

    .line 87946
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v1, "c4mFc8cvcfHQyghvzrB7bYP2aMdrhGND"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "OOjdStzIF6ducmayoMT1WxOsFGdjLtMG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87947
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v1, "oRXWb94touLPnP0lmqQIoCQNN81QkmVq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/jh;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jh;->A0I()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    return-object v0

    :cond_2
    check-cast v3, Lcom/facebook/ads/redexgen/X/jh;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jh;->A0I()Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Tx;
    .locals 1

    .line 87948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    if-nez v0, :cond_0

    .line 87949
    const/4 v0, 0x0

    return-object v0

    .line 87950
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    return-object v0
.end method

.method public final A0K()V
    .locals 4

    .line 87951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87952
    return-void

    .line 87953
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/j0;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YS2d1pFjROLoYd3yH38ADYRoaACmCS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 87954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    .line 87955
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N1;->A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    .line 87956
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N1;->A7O()Ljava/lang/String;

    move-result-object v0

    .line 87957
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wl;->A0D(Ljava/lang/String;Ljava/lang/String;)V

    .line 87958
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A0R(Lcom/facebook/ads/redexgen/X/WC;)V

    .line 87960
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A06:Lcom/facebook/ads/redexgen/X/WD;

    .line 87961
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    .line 87962
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87963
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    .line 87964
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L()V
    .locals 6

    .line 87965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A3R(J)V

    .line 87966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    if-nez v0, :cond_0

    .line 87967
    return-void

    .line 87968
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N1;->A7O()Ljava/lang/String;

    move-result-object v5

    .line 87969
    .local v0, "clientToken":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 87970
    return-void

    .line 87971
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 87972
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A05(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x140

    const/16 v1, 0xc

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 87974
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A08:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 87975
    return-void
.end method

.method public final A0M()V
    .locals 5

    .line 87976
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1

    .line 87977
    const/16 v2, 0x6b

    const/16 v1, 0x1a

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 87978
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87979
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A0Q:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87980
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87981
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87982
    .local v1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_0

    .line 87984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87985
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5j()V

    .line 87986
    return-void

    .line 87987
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0C:Z

    if-eqz v0, :cond_3

    .line 87988
    const/16 v2, 0xae

    const/16 v1, 0x12

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v3

    .line 87989
    .restart local v0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A0M:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87991
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87992
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87993
    .restart local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_2

    .line 87995
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87996
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5i()V

    .line 87997
    return-void

    .line 87998
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N1;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N1;->A7O()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VA;->AC0(Ljava/lang/String;)V

    .line 88000
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5k()V

    .line 88001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0C:Z

    .line 88002
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0P()V

    .line 88003
    return-void
.end method

.method public final A0N()V
    .locals 1

    .line 88004
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Y(Z)V

    .line 88005
    return-void
.end method

.method public final A0O()V
    .locals 2

    .line 88006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0N(Ljava/lang/String;)V

    .line 88008
    :cond_0
    return-void
.end method

.method public abstract A0P()V
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/N1;)V
    .locals 0

    .line 88009
    if-eqz p1, :cond_0

    .line 88010
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/N1;->onDestroy()V

    .line 88011
    :cond_0
    return-void
.end method

.method public abstract A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/N2;)V
    .locals 0

    .line 88012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    .line 88013
    return-void
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 4

    .line 88014
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O8;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 88015
    .local v0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0xd2

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0V(Ljava/lang/String;)V

    .line 88016
    return-void
.end method

.method public A0U(Ljava/lang/String;)V
    .locals 1

    .line 88017
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 88018
    return-void
.end method

.method public final A0V(Ljava/lang/String;)V
    .locals 3

    .line 88019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5d()V

    .line 88020
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 88022
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A04:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 88023
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    :cond_0
    return-void
.end method

.method public final A0W(Ljava/lang/String;)V
    .locals 0

    .line 88024
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0U(Ljava/lang/String;)V

    .line 88025
    return-void
.end method

.method public final A0X(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0

    .line 88026
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/j0;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 88027
    return-void
.end method

.method public A0Y(Z)V
    .locals 1

    .line 88028
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0C:Z

    if-nez v0, :cond_0

    .line 88029
    return-void

    .line 88030
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5l()V

    .line 88031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Q(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 88032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0C:Z

    .line 88033
    return-void
.end method

.method public final A0Z()Z
    .locals 1

    .line 88034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A04:Lcom/facebook/ads/redexgen/X/Tw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tw;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 2

    monitor-enter p0

    .line 88035
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/j1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/j1;-><init>(Lcom/facebook/ads/redexgen/X/j0;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 88036
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88037
    monitor-exit p0

    return-void

    .line 88038
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/j0;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Vm;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AG7(Lcom/facebook/ads/redexgen/X/RG;)V
    .locals 5

    monitor-enter p0

    .line 88039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0B(Lcom/facebook/ads/redexgen/X/RG;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88040
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/RG;
    :catch_0
    move-exception v4

    .line 88041
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 88042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A07(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A0T:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 88043
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88044
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 88045
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/j0;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/RG;
    :catchall_0
    move-exception v0

    .end local p1
    monitor-exit p0

    throw v0
.end method
