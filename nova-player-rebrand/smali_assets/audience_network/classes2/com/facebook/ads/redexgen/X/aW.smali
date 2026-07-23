.class public final Lcom/facebook/ads/redexgen/X/aW;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Landroid/view/View$OnLayoutChangeListener;

.field public A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public A03:Landroid/widget/ImageView;

.field public A04:Z

.field public final A05:Landroid/view/View;

.field public final A06:Lcom/facebook/ads/NativeAdLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/jd;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/YM;

.field public final A0A:Lcom/facebook/ads/redexgen/X/aK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2609
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bxOOFOssooUR0RjZyatL4oOd1ggfHKhR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "plfhpGKDQv9IGhMy4A8hpuBVWtzTu73m"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mlkot9yGvNPR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TmCHOkbW5b1zt9NPZxI16MTUer5XzrjL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vWAJRy5Sp9zXb743yVWn2E8zfo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KypmqauLEfpZtoNpXrgclfphsSGW0tHg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5jpOR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IeZIdLyfRFMrKrbxyFHDhs6fILRacDEb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/YM;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/aK;)V
    .locals 0

    .line 76526
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76527
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aW;->A05:Landroid/view/View;

    .line 76528
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aW;->A09:Lcom/facebook/ads/redexgen/X/YM;

    .line 76529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aW;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 76530
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    .line 76531
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/aW;->A0A:Lcom/facebook/ads/redexgen/X/aK;

    .line 76532
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aW;->A07:Lcom/facebook/ads/redexgen/X/jd;

    .line 76533
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/aL;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 76534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A02()V

    .line 76535
    return-void
.end method

.method private A00(Landroid/graphics/Rect;)I
    .locals 2

    .line 76536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aW;)Landroid/widget/ImageView;
    .locals 0

    .line 76537
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    return-object p0
.end method

.method private A02()V
    .locals 3

    .line 76538
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76539
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    .line 76540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A09:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 76543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aR;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76545
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Landroid/os/Handler;

    .line 76546
    new-instance v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aS;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    .line 76547
    new-instance v0, Lcom/facebook/ads/redexgen/X/aT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 76548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aV;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 76549
    return-void
.end method

.method private A03()V
    .locals 6

    .line 76550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 76551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 76552
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    .line 76553
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    .line 76554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const-string v1, "RZhHI7oSNBBsQ6jn8HmNiHu90Tl2574S"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 76555
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 76556
    :cond_2
    return-void
.end method

.method private A04()V
    .locals 4

    .line 76557
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/aU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aU;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A07:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A27()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76558
    return-void
.end method

.method private A05()V
    .locals 5

    .line 76559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    .line 76560
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 76561
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 76562
    .local v1, "anchorViewLocation":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A05:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 76563
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 76564
    .local v2, "nativeAdLayoutLocation":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/NativeAdLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 76565
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 76566
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76567
    iget v1, v4, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/aW;->A00(Landroid/graphics/Rect;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_0

    .line 76568
    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    .line 76569
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 76570
    :cond_0
    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    add-int/2addr v2, v0

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76572
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 76573
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const-string v1, "t5NtMJanNbto08EujsjrDgIQKMRNzNUY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 76574
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A04:Z

    if-nez v0, :cond_2

    .line 76575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_3

    .line 76576
    sget-object v2, Lcom/facebook/ads/redexgen/X/aW;->A0B:[Ljava/lang/String;

    const-string v1, "2KnGvfPknQwZySrVrzkTNTPZBlnzDeA4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A04()V

    .line 76577
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(II)V
    .locals 1

    .line 76578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A05:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 76580
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A05()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A05()V

    return-void
.end method


# virtual methods
.method public final A09()V
    .locals 3

    .line 76581
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A03()V

    .line 76582
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/aW;->A06(II)V

    .line 76583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76584
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/aW;->A04:Z

    .line 76585
    return-void
.end method

.method public final A0A()V
    .locals 2

    .line 76586
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/aW;->A06(II)V

    .line 76587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/aW;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 76588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 76589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 76590
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    .line 76591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A06:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 76592
    :cond_1
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 76593
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/aW;->A06(II)V

    .line 76594
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A05()V

    .line 76595
    return-void
.end method

.method public final synthetic A0C(Landroid/view/View;)V
    .locals 1

    .line 76596
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A03()V

    .line 76597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A0A:Lcom/facebook/ads/redexgen/X/aK;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/aK;->ADW(Landroid/view/View;)V

    .line 76598
    return-void
.end method

.method public final synthetic A0D(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 76599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;->A05()V

    return-void
.end method
