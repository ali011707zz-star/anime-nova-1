.class public final Lcom/facebook/ads/redexgen/X/Rz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public A02:Lcom/facebook/ads/redexgen/X/Rm;

.field public A03:Lcom/facebook/ads/redexgen/X/gi;

.field public A04:Lcom/facebook/ads/redexgen/X/VX;

.field public A05:Lcom/facebook/ads/redexgen/X/6r;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;

.field public final A09:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/E8;

.field public final A0B:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0C:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0D:Lcom/facebook/ads/redexgen/X/E0;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Dx;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Dr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1636
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Iqv8cTE9pbJV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CYHnjvYzZ1Zp8VPlfffkEyqwlctrpQBL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X8G7CA2UCcBTYjTzfkqICRpH9C9x48uG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IuynGJFHahmt0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YKtJTe5IUh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gPGIa6LKGgSGxdMiTt4aCF2OLs57juUg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T83"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DMaEshMk8cfihQw150z6d7U8VPkriS4i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rz;->A02()V

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rz;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63253
    new-instance v0, Lcom/facebook/ads/redexgen/X/7K;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7K;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0D:Lcom/facebook/ads/redexgen/X/E0;

    .line 63254
    new-instance v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0C:Lcom/facebook/ads/redexgen/X/E2;

    .line 63255
    new-instance v0, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0B:Lcom/facebook/ads/redexgen/X/E4;

    .line 63256
    new-instance v0, Lcom/facebook/ads/redexgen/X/7H;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7H;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0E:Lcom/facebook/ads/redexgen/X/Dx;

    .line 63257
    new-instance v0, Lcom/facebook/ads/redexgen/X/7G;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A09:Lcom/facebook/ads/redexgen/X/EA;

    .line 63258
    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0F:Lcom/facebook/ads/redexgen/X/Dr;

    .line 63259
    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/Rz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0A:Lcom/facebook/ads/redexgen/X/E8;

    .line 63260
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/Rm;

    .line 63261
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 63262
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rz;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xcf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rz;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x0t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x35t
        0x39t
        0x38t
        0x25t
        0x22t
        0x24t
        0x23t
        0x35t
        0x22t
        0x39t
        0x24t
        0x76t
        0x26t
        0x37t
        0x24t
        0x37t
        0x3bt
        0x25t
        0x76t
        0x22t
        0x2ft
        0x26t
        0x33t
        0x78t
        0x7et
        0x48t
        0x48t
        0x46t
        0x44t
        0x43t
        0x4at
        0xdt
        0x40t
        0x58t
        0x5et
        0x59t
        0xdt
        0x4ft
        0x48t
        0xdt
        0x5dt
        0x5ft
        0x48t
        0x4et
        0x48t
        0x49t
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x1t
        0xdt
        0x4ct
        0x43t
        0x49t
        0xdt
        0x4bt
        0x42t
        0x41t
        0x41t
        0x42t
        0x5at
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x49t
        0x44t
        0x5et
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x3t
        0x26t
        0x2bt
        0x31t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x62t
        0x21t
        0x23t
        0x2et
        0x2et
        0x27t
        0x26t
        0x62t
        0x35t
        0x2bt
        0x36t
        0x2at
        0x2dt
        0x37t
        0x36t
        0x62t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x6ct
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x29t
        0x6at
        0x68t
        0x65t
        0x65t
        0x6ct
        0x6dt
        0x29t
        0x7et
        0x60t
        0x7dt
        0x61t
        0x66t
        0x7ct
        0x7dt
        0x29t
        0x6dt
        0x60t
        0x7at
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 63263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 63264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;->setClientToken(Ljava/lang/String;)V

    .line 63265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;->setVideoMPD(Ljava/lang/String;)V

    .line 63266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;->setVideoURI(Landroid/net/Uri;)V

    .line 63267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;->setVideoCTA(Ljava/lang/String;)V

    .line 63268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6r;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 63269
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 63270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 63271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    .line 63272
    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 63273
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    .line 63274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/VX;

    if-eqz v0, :cond_2

    .line 63275
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/VX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const-string v1, "qaG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/VX;->AKY()V

    .line 63276
    :cond_2
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 63277
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    .line 63278
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    .line 63279
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/gi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gi;->A0L(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 63280
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/S2;

    .line 63281
    .local v1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/S2;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63282
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A1H()Ljava/lang/String;

    move-result-object v0

    .line 63283
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->setClientToken(Ljava/lang/String;)V

    .line 63284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/S2;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->setVideoMPD(Ljava/lang/String;)V

    .line 63285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/S2;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 63286
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A12()Lcom/facebook/ads/redexgen/X/ju;

    move-result-object v0

    .line 63287
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/ju;
    if-eqz v0, :cond_0

    .line 63288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0B()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoProgressReportIntervalMs(I)V

    .line 63289
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->setVideoCTA(Ljava/lang/String;)V

    .line 63290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 63291
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/S2;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 63292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/VX;

    if-eqz v0, :cond_1

    .line 63293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/VX;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/VX;->AJZ(Lcom/facebook/ads/NativeAd;)V

    .line 63294
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 1

    .line 63295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;->setAdEventManager(Lcom/facebook/ads/redexgen/X/VA;)V

    .line 63296
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/VX;)V
    .locals 0

    .line 63297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A04:Lcom/facebook/ads/redexgen/X/VX;

    .line 63298
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Yv;)V
    .locals 1

    .line 63299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;->setListener(Lcom/facebook/ads/redexgen/X/Yv;)V

    .line 63300
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 63301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0W()V

    .line 63302
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 5

    .line 63303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Z

    if-nez v0, :cond_2

    .line 63304
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63305
    sget-object v4, Lcom/facebook/ads/redexgen/X/Rz;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const-string v1, "GDpgiWeynUT3r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Fcrjr5dO1W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63306
    :cond_1
    return-void

    .line 63307
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Z

    .line 63308
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Z

    if-eqz v0, :cond_3

    .line 63309
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63310
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/et;

    move-result-object v1

    .line 63311
    const/4 v0, 0x3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 63312
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 63313
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 63314
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Z

    if-eqz v0, :cond_1

    .line 63315
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63316
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rz;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63317
    :cond_0
    return-void

    .line 63318
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Z

    .line 63319
    sget-object v1, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fm;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A07:Z

    .line 63320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 63321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 63322
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 63323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/Rm;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1

    .line 63324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 63325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 63326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1

    .line 63327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 63328
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 63329
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 63330
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 63331
    check-cast v3, Lcom/facebook/ads/redexgen/X/gi;

    .line 63332
    .local v1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    .restart local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Rz;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 63333
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63334
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63335
    .end local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    goto :goto_0

    .line 63336
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 63337
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63338
    goto :goto_1

    .line 63339
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 63340
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63341
    goto :goto_1

    .line 63342
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63343
    goto :goto_1

    .line 63344
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63345
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->setEnableBackgroundVideo(Z)V

    .line 63346
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63347
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ek;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A02:Lcom/facebook/ads/redexgen/X/Rm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Rm;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 63349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 63350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0D:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0C:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0B:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0E:Lcom/facebook/ads/redexgen/X/Dx;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A09:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0F:Lcom/facebook/ads/redexgen/X/Dr;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A0A:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v0, v2, v1

    .line 63352
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 63353
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final pause(Z)V
    .locals 2

    .line 63354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 63355
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 63356
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    .line 63357
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Y6;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/et;

    move-result-object v1

    .line 63358
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 63359
    return-void
.end method

.method public final seekTo(I)V
    .locals 4

    .line 63360
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A06:Z

    if-nez v0, :cond_2

    .line 63361
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rz;->A0H:[Ljava/lang/String;

    const-string v1, "0wh1LQIbECU2tB2xLmMlqLa216eizCy3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 63362
    sget-object v3, Lcom/facebook/ads/redexgen/X/Rz;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63363
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63364
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0a(I)V

    .line 63365
    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    .line 63366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 63367
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 63368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A05:Lcom/facebook/ads/redexgen/X/6r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 63369
    :cond_0
    return v2

    .line 63370
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
