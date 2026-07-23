.class public final Lcom/facebook/ads/redexgen/X/id;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OG;


# static fields
.field public static A09:[B

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/redexgen/X/NQ;

.field public A03:Lcom/facebook/ads/redexgen/X/7j;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;

.field public final A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A08:Lcom/facebook/ads/redexgen/X/iY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2951
    invoke-static {}, Lcom/facebook/ads/redexgen/X/id;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/id;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/id;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iY;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V
    .locals 2

    .line 87141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    .line 87143
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    .line 87144
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iY;->A05()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87145
    new-instance v0, Lcom/facebook/ads/redexgen/X/iG;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/iG;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OW;Lcom/facebook/ads/redexgen/X/id;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 87146
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/id;)J
    .locals 1

    .line 87147
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 87148
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/id;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 87149
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/id;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 87150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/id;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 0

    .line 87151
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/id;->A02:Lcom/facebook/ads/redexgen/X/NQ;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/NQ;)Lcom/facebook/ads/redexgen/X/NQ;
    .locals 0

    .line 87152
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/id;->A02:Lcom/facebook/ads/redexgen/X/NQ;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;
    .locals 0

    .line 87153
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/7j;)Lcom/facebook/ads/redexgen/X/7j;
    .locals 0

    .line 87154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    return-object p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;
    .locals 0

    .line 87155
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/id;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/id;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x58t
        -0x2bt
        -0x79t
        -0x38t
        -0x35t
        -0x79t
        -0x2dt
        -0x2at
        -0x38t
        -0x35t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x38t
        -0x2dt
        -0x27t
        -0x34t
        -0x38t
        -0x35t
        -0x20t
        -0x79t
        -0x30t
        -0x2bt
        -0x79t
        -0x29t
        -0x27t
        -0x2at
        -0x32t
        -0x27t
        -0x34t
        -0x26t
        -0x26t
        -0x6bt
        -0x79t
        -0x40t
        -0x2at
        -0x24t
        -0x79t
        -0x26t
        -0x31t
        -0x2at
        -0x24t
        -0x2dt
        -0x35t
        -0x79t
        -0x22t
        -0x38t
        -0x30t
        -0x25t
        -0x79t
        -0x33t
        -0x2at
        -0x27t
        -0x79t
        -0x38t
        -0x35t
        -0x4dt
        -0x2at
        -0x38t
        -0x35t
        -0x34t
        -0x35t
        -0x71t
        -0x70t
        -0x79t
        -0x25t
        -0x2at
        -0x79t
        -0x37t
        -0x34t
        -0x79t
        -0x36t
        -0x38t
        -0x2dt
        -0x2dt
        -0x34t
        -0x35t
        -0x67t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x70t
        -0x44t
        -0x41t
        -0x4ft
        -0x4ct
        0x70t
        -0x4dt
        -0x4ft
        -0x44t
        -0x44t
        -0x4bt
        -0x4ct
        0x70t
        -0x39t
        -0x48t
        -0x47t
        -0x44t
        -0x4bt
        0x70t
        -0x3dt
        -0x48t
        -0x41t
        -0x39t
        -0x47t
        -0x42t
        -0x49t
        0x70t
        -0x47t
        -0x42t
        -0x3ct
        -0x4bt
        -0x3et
        -0x3dt
        -0x3ct
        -0x47t
        -0x3ct
        -0x47t
        -0x4ft
        -0x44t
        0x7et
        -0x21t
        -0x12t
        -0x19t
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/id;Z)Z
    .locals 0

    .line 87156
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    return p1
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/id;Z)Z
    .locals 0

    .line 87157
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/id;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0D()J
    .locals 2

    .line 87158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_0

    .line 87159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0G()J

    move-result-wide v0

    return-wide v0

    .line 87160
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/iY;
    .locals 1

    .line 87161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 87162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final A0G(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87163
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    .line 87164
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_0

    .line 87165
    sget-object v3, Lcom/facebook/ads/redexgen/X/id;->A0A:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    .line 87167
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A04:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87169
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0L:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A09(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87170
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87171
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87172
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87173
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    .line 87174
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 87175
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 87176
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 87177
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87178
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/id;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    .line 87179
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 87180
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 87181
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87182
    return-void

    .line 87183
    .end local v0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_2

    .line 87184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ii;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ii;-><init>(Lcom/facebook/ads/redexgen/X/id;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0N()V

    .line 87186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 87187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 87188
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 87189
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/facebook/ads/redexgen/X/O7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    .line 87190
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A0A()Ljava/lang/String;

    move-result-object v3

    .line 87191
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vs;->A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/Vq;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vp;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    .line 87192
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A06()Lcom/facebook/ads/redexgen/X/U3;

    move-result-object v9

    const/4 v7, 0x1

    move-object v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 87193
    .local v1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/O7;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    .line 87195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A08()Ljava/lang/String;

    move-result-object v0

    .line 87196
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A02(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87197
    .local v2, "extraHints":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 87198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/iY;->A0I(Ljava/lang/String;)V

    .line 87199
    .end local v2    # "extraHints":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A06(Ljava/lang/String;)V

    .line 87200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A07(Ljava/lang/String;)V

    .line 87201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/O7;->A04(Lcom/facebook/ads/RewardData;)V

    .line 87202
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/7j;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 87203
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    new-instance v0, Lcom/facebook/ads/redexgen/X/if;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/if;-><init>(Lcom/facebook/ads/redexgen/X/id;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/j0;->A0W(Ljava/lang/String;)V

    .line 87205
    return-void
.end method

.method public final A0H()Z
    .locals 1

    .line 87206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Z()Z

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

.method public final A0I()Z
    .locals 1

    .line 87207
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    return v0
.end method

.method public final A0J()Z
    .locals 8

    .line 87208
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 87209
    .local v0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 87210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    .line 87212
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v1

    .line 87213
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 87214
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 87215
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87217
    return v5

    .line 87218
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-nez v0, :cond_1

    .line 87219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87220
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0S:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87221
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87222
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 87224
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/id;->A00:J

    .line 87225
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v2

    .line 87226
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 87227
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 87228
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 87229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A07:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A08:Lcom/facebook/ads/redexgen/X/iY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 87230
    return v5

    .line 87231
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0M()V

    .line 87232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A04:Z

    .line 87233
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    .line 87234
    return v0
.end method

.method public final destroy()V
    .locals 2

    .line 87235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    if-eqz v0, :cond_0

    .line 87236
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ie;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ie;-><init>(Lcom/facebook/ads/redexgen/X/id;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 87237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Y(Z)V

    .line 87238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 87239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/id;->A03:Lcom/facebook/ads/redexgen/X/7j;

    .line 87240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A05:Z

    .line 87241
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/id;->A04:Z

    .line 87242
    :cond_0
    return-void
.end method
