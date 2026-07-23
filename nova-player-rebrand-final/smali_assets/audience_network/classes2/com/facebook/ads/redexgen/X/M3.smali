.class public final Lcom/facebook/ads/redexgen/X/M3;
.super Lcom/facebook/ads/redexgen/X/ay;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aq;,
        Lcom/facebook/ads/redexgen/X/at;,
        Lcom/facebook/ads/redexgen/X/as;,
        Lcom/facebook/ads/redexgen/X/ap;,
        Lcom/facebook/ads/redexgen/X/ar;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/gi;

.field public A05:Lcom/facebook/ads/redexgen/X/al;

.field public A06:Lcom/facebook/ads/redexgen/X/aq;

.field public A07:Lcom/facebook/ads/redexgen/X/at;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1345
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r5lFqG0C0bBGIxytTEblkmz8pOWiln6U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y5tMFhpuLobi6U3v3neZGAzEpbrZh2e0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "35iZKMkwZFt7WP5rciHAZ1WswbletKXm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1wdh7bxI31pnh6pFTaTypUqx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "X0GEkrMG66X1N8QG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HQ8AmQiqT9dTkfwWyhZ7u2ZNdQoS7Fbv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yjHJSxajRdLfdjSgilcNPSPFyTq4dELg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ut8cBtSHXrZx3QiSKTpc7NoA9ie10da9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M3;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M3;->A06()V

    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/M3;->A0D:Ljava/util/Set;

    .line 1346
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A09:Z

    .line 1347
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A0A:Z

    .line 1348
    sget-object v3, Lcom/facebook/ads/redexgen/X/M3;->A0D:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1349
    sget-object v3, Lcom/facebook/ads/redexgen/X/M3;->A0D:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1350
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/aq;)V
    .locals 2

    .line 50758
    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/ay;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 50759
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    .line 50760
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    .line 50761
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:J

    .line 50762
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    .line 50763
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/M3;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 50764
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V
    .locals 2

    .line 50765
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 50766
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    .line 50767
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    .line 50768
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:J

    .line 50769
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    .line 50770
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/M3;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 50771
    return-void
.end method

.method public static synthetic A00()Landroid/webkit/ValueCallback;
    .locals 1

    .line 50772
    sget-object v0, Lcom/facebook/ads/redexgen/X/M3;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A01(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 50773
    sput-object p0, Lcom/facebook/ads/redexgen/X/M3;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/at;
    .locals 4

    .line 50774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A06:Lcom/facebook/ads/redexgen/X/aq;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A05:Lcom/facebook/ads/redexgen/X/al;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/at;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M3;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04()Ljava/util/Set;
    .locals 1

    .line 50775
    sget-object v0, Lcom/facebook/ads/redexgen/X/M3;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A05()V
    .locals 5

    .line 50776
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 50777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M3;->A05:Lcom/facebook/ads/redexgen/X/al;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/al;->A05(Z)V

    .line 50778
    :cond_0
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M3;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x37t
        0x37t
        0x33t
        0x64t
        0x78t
        0x78t
        0x7ct
        0x7ft
    .end array-data
.end method

.method public static A07(IILandroid/content/Intent;)V
    .locals 1

    .line 50779
    sget-object v0, Lcom/facebook/ads/redexgen/X/M3;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 50780
    return-void

    .line 50781
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 50782
    sget-object p0, Lcom/facebook/ads/redexgen/X/M3;->A08:Landroid/webkit/ValueCallback;

    .line 50783
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 50784
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 50785
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M3;->A08:Landroid/webkit/ValueCallback;

    .line 50786
    :cond_1
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V
    .locals 3

    .line 50787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 50788
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M3;->A06:Lcom/facebook/ads/redexgen/X/aq;

    .line 50789
    new-instance v0, Lcom/facebook/ads/redexgen/X/al;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/al;-><init>(Lcom/facebook/ads/redexgen/X/M3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A05:Lcom/facebook/ads/redexgen/X/al;

    .line 50790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uq;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A09:Z

    .line 50791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uq;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A0A:Z

    .line 50792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 50793
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 50794
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 50795
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50796
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 50797
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50798
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 50799
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 50800
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 50801
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50802
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->A0G()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M3;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50803
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;->A02()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A07:Lcom/facebook/ads/redexgen/X/at;

    .line 50804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A07:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M3;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50805
    return-void
.end method

.method public static synthetic A09()Z
    .locals 1

    .line 50806
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A0A:Z

    return v0
.end method

.method public static synthetic A0A()Z
    .locals 1

    .line 50807
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/M3;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0G()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 50808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A06:Lcom/facebook/ads/redexgen/X/aq;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A05:Lcom/facebook/ads/redexgen/X/al;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0H()Landroid/webkit/WebViewClient;
    .locals 1

    .line 50809
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;->A02()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v0

    return-object v0
.end method

.method public final A0K(J)V
    .locals 5

    .line 50810
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50811
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    .line 50812
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;->A05()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/M3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 50813
    sget-object v2, Lcom/facebook/ads/redexgen/X/M3;->A0C:[Ljava/lang/String;

    const-string v1, "TnIn5PelVgDBsDwa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kaGwwHcDVWZGOuagxs1W4ZQa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(J)V
    .locals 5

    .line 50814
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50815
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    .line 50816
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;->A05()V

    .line 50817
    return-void
.end method

.method public final A0M(J)V
    .locals 5

    .line 50818
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50819
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    .line 50820
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;->A05()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/M3;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 50821
    sget-object v2, Lcom/facebook/ads/redexgen/X/M3;->A0C:[Ljava/lang/String;

    const-string v1, "DwC46XxC2zY9iA5O924mXxlTXzY8IGhb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1LscF1ZcfF08U7LpSibJFf3LFm8iDmJu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .locals 1

    .line 50822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A06:Lcom/facebook/ads/redexgen/X/aq;

    .line 50823
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/b4;->A03(Landroid/webkit/WebView;)V

    .line 50824
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ay;->destroy()V

    .line 50825
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 50826
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 50827
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 50828
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 50829
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50830
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 50831
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 50832
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 50833
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 50834
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ay;->onDraw(Landroid/graphics/Canvas;)V

    .line 50835
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M3;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 50836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:J

    .line 50837
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ar;)V
    .locals 2

    .line 50838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M3;->A07:Lcom/facebook/ads/redexgen/X/at;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A05(Ljava/lang/ref/WeakReference;)V

    .line 50839
    return-void
.end method
