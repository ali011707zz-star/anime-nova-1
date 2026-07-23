.class public Lcom/facebook/ads/redexgen/X/hS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yh;


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Re;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2918
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8tOzOPKLz5DDIwqC88XBXxH90bmVDotF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YCktuRbEMhZaz9U821mncTHWO05lwCqY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Eq7g3criU65KDBPK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XEHycrxPk7FQv1FkL381pmPNBNbKujpl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "niYnM4G6gzmxtC7fq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sRQOtQAi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8G5qrnHnaOtx52JqPPi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6arHmIfqlBfM2iqNpfy3RxuQJelIt1eI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hS;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 1

    .line 84525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    .line 84527
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 84528
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A07()Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v1

    .line 84529
    .local v0, "mediationOverlay":Lcom/facebook/ads/redexgen/X/eF;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84530
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 84531
    :cond_0
    return-void
.end method


# virtual methods
.method public A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 84532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Re;

    .line 84533
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/Re;
    if-eqz v1, :cond_0

    .line 84534
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84535
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 84536
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/hS;->A00(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 84537
    :cond_0
    return-void
.end method

.method public A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 84538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Re;

    .line 84539
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/Re;
    if-eqz v1, :cond_0

    .line 84540
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84541
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Re;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84542
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/hS;->A00(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 84543
    :cond_0
    return-void
.end method

.method public A4j(Ljava/lang/String;)V
    .locals 1

    .line 84544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Re;->A0C(Ljava/lang/String;)V

    .line 84546
    :cond_0
    return-void
.end method

.method public A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 1

    .line 84547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Re;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 84549
    :cond_0
    return-void
.end method

.method public AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 4

    .line 84550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84551
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hS;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/hS;->A01:[Ljava/lang/String;

    const-string v1, "IO1gKUYJJG6YtU6JnI8y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Re;->A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 84552
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public ADJ(I)V
    .locals 1

    .line 84553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Re;

    .line 84554
    .local v0, "activityApi":Lcom/facebook/ads/redexgen/X/Re;
    if-eqz v0, :cond_0

    .line 84555
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 84556
    :cond_0
    return-void
.end method
