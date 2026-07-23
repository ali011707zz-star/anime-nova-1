.class public final Lcom/facebook/ads/redexgen/X/FO;
.super Lcom/facebook/ads/redexgen/X/Qq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Qq<",
        "Lcom/facebook/ads/redexgen/X/FB;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/7M;

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A07:Ljava/lang/Runnable;

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;ILcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/Kr;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/7M;",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            "I)V"
        }
    .end annotation

    .line 35749
    .local p2, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qq;-><init>()V

    .line 35750
    new-instance v0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;-><init>(Lcom/facebook/ads/redexgen/X/FO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A02:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35751
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FO;->A08:Ljava/util/List;

    .line 35752
    iput p3, p0, Lcom/facebook/ads/redexgen/X/FO;->A01:I

    .line 35753
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 35754
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FO;->A04:Lcom/facebook/ads/redexgen/X/7M;

    .line 35755
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A03:Landroid/os/Handler;

    .line 35756
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/FO;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    .line 35757
    iput p6, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:I

    .line 35758
    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Lcom/facebook/ads/redexgen/X/FO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A07:Ljava/lang/Runnable;

    .line 35759
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FO;->A03:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A07:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35760
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 35761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 35763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A02:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35764
    invoke-virtual {v1, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35765
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FO;)I
    .locals 0

    .line 35766
    iget p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FO;)Landroid/os/Handler;
    .locals 0

    .line 35767
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A03:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/7M;
    .locals 0

    .line 35768
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A04:Lcom/facebook/ads/redexgen/X/7M;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 35769
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 0

    .line 35770
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    return-object p0
.end method

.method private final A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FB;
    .locals 2

    .line 35771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/F9;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35772
    .local v0, "view":Lcom/facebook/ads/redexgen/X/F9;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35773
    new-instance v0, Lcom/facebook/ads/redexgen/X/eY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eY;-><init>(Lcom/facebook/ads/redexgen/X/FO;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/F9;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35774
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FB;-><init>(Lcom/facebook/ads/redexgen/X/F9;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/FO;)Ljava/lang/Runnable;
    .locals 0

    .line 35775
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FO;->A07:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/FB;I)V
    .locals 5

    .line 35776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 35777
    .local v0, "actualPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A08:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35778
    .local v1, "url":Ljava/lang/String;
    const/16 v1, 0x190

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35779
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/FO;->A01:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A01:I

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35780
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FB;->A0p()Lcom/facebook/ads/redexgen/X/F9;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/F9;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35781
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/FB;->A0p()Lcom/facebook/ads/redexgen/X/F9;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/F9;->setUrl(Ljava/lang/String;)V

    .line 35782
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 35783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35784
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FO;->A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FB;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/RK;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35785
    check-cast p1, Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FO;->A07(Lcom/facebook/ads/redexgen/X/FB;I)V

    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 2

    .line 35786
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Qq;->A0L(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 35787
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FO;->A03:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A07:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35788
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 35789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 35791
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FO;->A02:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35792
    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35793
    :cond_0
    return-void
.end method

.method public final A0O(I)V
    .locals 0

    .line 35794
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:I

    .line 35795
    return-void
.end method
