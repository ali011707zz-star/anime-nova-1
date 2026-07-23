.class public final Lcom/facebook/ads/redexgen/X/b3;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClientImpl"
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/Date;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;

.field public final A03:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/LV;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b1;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Y2;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/fp;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A09:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2624
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zsPwasR1y7408"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZGgsKLkccpHpwEVEMRkr0P5MO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FzTF8imkK53ZXE3O7c0sd3pyoR5CtRCL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JPkvHHHSAaAEWhLae7UVRehZAXg5QbZs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jl8ZDZjQ485DOmiNP3uI8E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DJVtCfMEOJ4BXbKH6y5pb3wK31xmWsao"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b3;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/b1;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/fp;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Y2;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/LV;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 77211
    .local p2, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    .local p3, "adViewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    .local p4, "touchDataRecorder":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/util/common/TouchDataRecorder;>;"
    .local p5, "checkAssetsByJavascriptBridge":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    .local p6, "adWebView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView;>;"
    .local p8, "requestId":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 77212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    .line 77213
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 77214
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    .line 77215
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b3;->A07:Ljava/lang/ref/WeakReference;

    .line 77216
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/b3;->A06:Ljava/lang/ref/WeakReference;

    .line 77217
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/b3;->A05:Ljava/lang/ref/WeakReference;

    .line 77218
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Ljava/lang/ref/WeakReference;

    .line 77219
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/b3;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77220
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/b3;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77221
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/b3;->A0A:Z

    .line 77222
    return-void
.end method

.method private A00()Landroid/webkit/WebResourceResponse;
    .locals 11

    .line 77223
    new-instance v4, Landroid/webkit/WebResourceResponse;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 77224
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    .line 77225
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc6

    const/16 v1, 0x8

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 77226
    const/16 v2, 0xd

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v2, 0xd8

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x193

    const/16 v2, 0xd

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 77227
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b3;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

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
    .locals 4

    const/16 v0, 0xf4

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const-string v1, "rhE0g4ovzatryzU62WuE8blUNequGZ6x"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8iaaY9YuVC21lqcoOxYFj2DPKFldlJdP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/b3;->A0B:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x8t
        0x26t
        0x28t
        0x2dt
        0x2at
        -0xet
        0x8t
        0x34t
        0x33t
        0x39t
        0x37t
        0x34t
        0x31t
        -0x45t
        -0x24t
        -0x1bt
        -0x20t
        -0x24t
        -0x25t
        0x1ct
        0x4dt
        0x38t
        0x43t
        0x4ct
        0x38t
        0x4bt
        0x40t
        0x45t
        0x3et
        -0x9t
        0x2ct
        0x29t
        0x20t
        -0x9t
        0x27t
        0x38t
        0x4bt
        0x3ft
        -0x9t
        0x3dt
        0x46t
        0x49t
        -0x9t
        0x1dt
        0x40t
        0x43t
        0x3ct
        -0x9t
        0x18t
        0x3at
        0x3at
        0x3ct
        0x4at
        0x4at
        -0x9t
        -0x2et
        0x5t
        0x1t
        -0x1t
        -0x12t
        -0x53t
        -0xft
        -0x12t
        0x1t
        -0x12t
        -0x39t
        -0x53t
        0x3ct
        0x48t
        0x48t
        0x44t
        0x14t
        0x39t
        0x66t
        0x66t
        0x63t
        0x66t
        0x3bt
        0x54t
        0x59t
        0x47t
        0x4ct
        0x4bt
        0x6t
        0x38t
        0x4bt
        0x57t
        0x5bt
        0x4bt
        0x59t
        0x5at
        0x6t
        0x4ct
        0x55t
        0x58t
        0x6t
        0x2ct
        0x4ft
        0x52t
        0x4bt
        0x6t
        0x27t
        0x49t
        0x49t
        0x4bt
        0x59t
        0x59t
        0x6t
        0x22t
        0x3bt
        0x40t
        0x2et
        0x33t
        0x32t
        -0x13t
        0x1ft
        0x32t
        0x3et
        0x42t
        0x32t
        0x40t
        0x41t
        -0x13t
        0x33t
        0x3ct
        0x3ft
        -0x13t
        0x13t
        0x36t
        0x39t
        0x32t
        -0x13t
        0xet
        0x30t
        0x30t
        0x32t
        0x40t
        0x40t
        -0x13t
        0x31t
        0x32t
        0x3bt
        0x36t
        0x32t
        0x31t
        0x43t
        0x44t
        0x4dt
        0x48t
        0x44t
        0x43t
        0x3et
        0x54t
        0x51t
        0x48t
        0x3et
        0x4ft
        0x40t
        0x53t
        0x47t
        0x40t
        0x3bt
        0x50t
        0x43t
        0x3dt
        0x49t
        0x48t
        0x8t
        0x43t
        0x3dt
        0x49t
        0x29t
        0x2ct
        0x2ft
        0x28t
        0x17t
        0xet
        0x1dt
        -0x1dt
        -0x1dt
        -0x12t
        -0x5t
        -0x5t
        0x8t
        -0x12t
        -0xat
        -0x7t
        -0x3t
        0x2t
        0x8t
        -0x5t
        -0x12t
        -0x4t
        -0x7t
        -0x8t
        -0x9t
        -0x4t
        -0x12t
        0x1bt
        0x1ct
        -0x26t
        0x20t
        0x21t
        0x1ct
        0x1ft
        0x12t
        0x62t
        0x55t
        0x61t
        0x65t
        0x55t
        0x63t
        0x64t
        0x4ft
        0x59t
        0x54t
        0x4et
        0x3ft
        0x52t
        0x4et
        0x9t
        0x4at
        0x46t
        0x3bt
        0x43t
        0x48t
        0x5t
        -0x10t
        -0x5t
        -0x8t
        -0xdt
        -0x12t
        -0x1t
        -0x10t
        0x3t
        -0x9t
        0x37t
        0x25t
        0x22t
        0x1ft
        0x36t
        0x29t
        0x25t
        0x37t
    .end array-data
.end method

.method private A03(ILjava/lang/String;)V
    .locals 3

    .line 77228
    const/16 v2, 0xaf

    const/16 v1, 0x17

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKx()V

    .line 77230
    return-void

    .line 77231
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lt;->AKy(ILjava/lang/String;)V

    .line 77232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/b1;->ADu(ILjava/lang/String;)V

    .line 77234
    :cond_1
    return-void
.end method

.method private final A04(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5

    .line 77235
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa0

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77236
    return-void

    .line 77237
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77238
    const/16 v2, 0x43

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Xb;->A01(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77239
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AL2(ILjava/lang/String;)V

    .line 77240
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/b3;ILjava/lang/String;)V
    .locals 0

    .line 77241
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/b3;->A03(ILjava/lang/String;)V

    return-void
.end method

.method private A06(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 77242
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 77243
    .local v0, "extraData":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x91

    const/16 v1, 0xf

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77244
    const/16 v2, 0xe2

    const/16 v1, 0xa

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77245
    const/16 v2, 0xce

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b3;->A09:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77246
    .end local v1
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 77247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 77248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A2c:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_CACHE_FILE_WAS_DENIED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 77249
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0xc

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77250
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v6, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77251
    const/16 v2, 0xec

    const/16 v1, 0x8

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 77252
    :cond_0
    return-void
.end method

.method private A07(Landroid/net/Uri;)Z
    .locals 7

    .line 77253
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 77254
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 77255
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    const/16 v5, 0xab

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const-string v1, "5na5yijD7UxFpHVkXXcSH2RW6Zg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x4d

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77256
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    if-eqz v4, :cond_1

    .line 77257
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    const/16 v1, 0x24

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77258
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A09(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/List;

    move-result-object v5

    .line 77259
    .local v2, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/b3;->A09(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    .line 77260
    .local v3, "valid":Z
    if-nez v6, :cond_3

    .line 77261
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x1f

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77263
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LV;->A01()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x6c

    const/16 v1, 0x25

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77264
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/b3;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 77265
    :cond_3
    return v6

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const-string v1, "2SO0ZWlaSU1SnxqLnXbiPhTsGSHCmzPH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_1

    goto :goto_0

    .line 77266
    .end local v2    # "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "valid":Z
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/b3;)Z
    .locals 0

    .line 77267
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    return p0
.end method

.method public static A09(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 77268
    .local p3, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 77269
    .local v0, "lowerPath":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77270
    .local p0, "cacheDir":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77271
    const/4 v0, 0x1

    return v0

    .line 77272
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 77273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKz(Z)V

    .line 77274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A05:Ljava/lang/ref/WeakReference;

    .line 77275
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 77276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const-string v1, "U2DnXjrenRRLx1oMUBfcSIJQu5ANNJpT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "L4ZmgD3GCXt8DfDAt3P3IJDf6GSeHMJn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 77277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A05:Ljava/lang/ref/WeakReference;

    .line 77278
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K()V

    .line 77280
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/b1;->AF8()V

    .line 77282
    :cond_3
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    .line 77283
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 77284
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 77285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AL0()V

    .line 77286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Ljava/util/Date;

    .line 77287
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/LW;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/LW;-><init>(Lcom/facebook/ads/redexgen/X/b3;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77288
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    .line 77289
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77290
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    .line 77292
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/b3;->A03(ILjava/lang/String;)V

    .line 77293
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 77294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A12(Landroid/content/Context;)Z

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77295
    .end local v0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    .line 77296
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/b3;->A03(ILjava/lang/String;)V

    .line 77297
    :goto_0
    return-void

    .line 77298
    :cond_1
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77299
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Xb;->A01(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77300
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->AL1(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 77301
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 77302
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/b3;->A04(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 77303
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 77304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AL3()V

    .line 77305
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 77306
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 77307
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A2b:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ay;->A0D(I)V

    .line 77308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b1;

    .line 77309
    .local v0, "adWebViewListener":Lcom/facebook/ads/redexgen/X/b1;
    if-eqz v0, :cond_0

    .line 77310
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/b1;->AGg()V

    .line 77311
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 77312
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    .line 77313
    .local v0, "source":Landroid/net/Uri;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A0A:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/b3;->A07(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77314
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b3;->A00()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 77315
    .local v1, "response":Landroid/webkit/WebResourceResponse;
    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/b3;->A04(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 77316
    return-object v0

    .line 77317
    .end local v1    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 77318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A04:Ljava/lang/ref/WeakReference;

    .line 77320
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/b1;

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A07:Ljava/lang/ref/WeakReference;

    .line 77321
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A06:Ljava/lang/ref/WeakReference;

    .line 77322
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 77323
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 77324
    invoke-interface {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/b1;->ADN(Ljava/lang/String;Ljava/util/Map;)V

    .line 77325
    :cond_0
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A0C:[Ljava/lang/String;

    const-string v1, "jV60qdj1rgKoRn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method
