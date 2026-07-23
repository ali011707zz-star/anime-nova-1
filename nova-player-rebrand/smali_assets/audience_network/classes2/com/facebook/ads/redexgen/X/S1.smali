.class public final Lcom/facebook/ads/redexgen/X/S1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    .line 63373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 63375
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 63376
    return-void
.end method

.method private A00()I
    .locals 3

    .line 63377
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 63378
    .local v0, "activityRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63379
    .local v1, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 63380
    const/4 v0, 0x2

    return v0

    .line 63381
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 63382
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 63383
    const/4 v0, 0x1

    .line 63384
    :goto_0
    return v0

    .line 63385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()V
    .locals 4

    .line 63386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 63387
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A25(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 63388
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/redexgen/X/S1;)V

    .line 63389
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63390
    :cond_1
    return-void
.end method

.method public final synthetic A02()V
    .locals 2

    .line 63391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A01:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S1;->A00()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AC4(I)V

    .line 63393
    :cond_0
    return-void
.end method
