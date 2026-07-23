.class public abstract Lcom/facebook/ads/redexgen/X/Ka;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# static fields
.field public static A0A:[B

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Dm;

.field public A01:Lcom/facebook/ads/redexgen/X/DR;

.field public A02:Lcom/facebook/ads/redexgen/X/DA;

.field public final A03:Landroid/os/Handler;

.field public final A04:Lcom/facebook/ads/redexgen/X/jd;

.field public final A05:Lcom/facebook/ads/redexgen/X/NR;

.field public final A06:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A07:Lcom/facebook/ads/redexgen/X/bF;

.field public final A08:Lcom/facebook/ads/redexgen/X/XS;

.field public final A09:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 906
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ka;->A0M()V

    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0H:I

    .line 907
    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0G:I

    .line 908
    const/high16 v1, 0x42f00000    # 120.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0E:I

    .line 909
    const/high16 v1, 0x43000000    # 128.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0F:I

    .line 910
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0L:I

    .line 911
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0B:I

    .line 912
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0K:I

    .line 913
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0I:I

    .line 914
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0J:I

    .line 915
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0N:I

    .line 916
    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0M:I

    .line 917
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0C:I

    .line 918
    sget v1, Lcom/facebook/ads/redexgen/X/Ka;->A0C:I

    .line 919
    const/16 v0, 0x5a

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ka;->A0D:I

    .line 920
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 5

    .line 47540
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 47541
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A03:Landroid/os/Handler;

    .line 47542
    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47543
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47544
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    .line 47545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A05:Lcom/facebook/ads/redexgen/X/NR;

    .line 47546
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->A0K(Lcom/facebook/ads/redexgen/X/c7;)Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A07:Lcom/facebook/ads/redexgen/X/bF;

    .line 47547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A07:Lcom/facebook/ads/redexgen/X/bF;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->setVisibility(I)V

    .line 47549
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v3

    .line 47550
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    .line 47551
    if-eqz v3, :cond_1

    .line 47552
    const/4 v2, -0x1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47553
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetailsVisible(Z)V

    .line 47554
    :cond_1
    return-void
.end method

.method private A0J()Landroid/widget/ImageView;
    .locals 5

    .line 47555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47556
    .local v0, "closeImageView":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0t:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 47557
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0e:I

    const/4 v1, 0x1

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47558
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47559
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 47560
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 47561
    .local v3, "circleBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 47562
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ka;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47563
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47564
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0Y:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 47565
    new-instance v0, Lcom/facebook/ads/redexgen/X/by;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/by;-><init>(Lcom/facebook/ads/redexgen/X/Ka;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47566
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47567
    .local v4, "closeButtonViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 47568
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47569
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47570
    return-object v4
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/c7;)Lcom/facebook/ads/redexgen/X/bF;
    .locals 6

    .line 47571
    const/4 v0, -0x2

    const/4 v1, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47572
    .local v0, "adDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47573
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47574
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47575
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/16 v1, 0xe

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ka;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47576
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A04:Lcom/facebook/ads/redexgen/X/ez;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v1

    .line 47577
    .local v1, "clickEvent":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A05:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Ka;->A1R(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v3

    .line 47578
    .local v2, "detailsView":Lcom/facebook/ads/redexgen/X/bF;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A08(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 47579
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 47580
    const/16 v5, 0x64

    const/4 v2, 0x0

    const/16 v1, 0x190

    new-instance v0, Lcom/facebook/ads/redexgen/X/DA;

    invoke-direct {v0, v3, v1, v5, v2}, Lcom/facebook/ads/redexgen/X/DA;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Lcom/facebook/ads/redexgen/X/DA;

    .line 47581
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 47582
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A00()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/bF;->A0l(I)V

    .line 47583
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47584
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bF;->A0k()V

    .line 47585
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47586
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 47587
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47588
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0F(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)Z

    .line 47589
    return-object v3

    .line 47590
    :cond_2
    const/16 v2, 0x9

    const/16 v1, 0x25

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ka;->A0L(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ka;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x69

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ka;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x75t
        -0x60t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        -0x68t
        0x3ct
        0x48t
        0x46t
        0x7t
        0x3ft
        0x3at
        0x3ct
        0x3et
        0x3bt
        0x48t
        0x48t
        0x44t
        0x7t
        0x3at
        0x3dt
        0x4ct
        0x7t
        0x42t
        0x47t
        0x4dt
        0x3et
        0x4bt
        0x4ct
        0x4dt
        0x42t
        0x4dt
        0x42t
        0x3at
        0x45t
        0x7t
        0x3ct
        0x45t
        0x42t
        0x3ct
        0x44t
        0x3et
        0x3dt
        0x40t
        0x4ct
        0x4at
        0xbt
        0x43t
        0x3et
        0x40t
        0x42t
        0x3ft
        0x4ct
        0x4ct
        0x48t
        0xbt
        0x3et
        0x41t
        0x50t
        0xbt
        0x46t
        0x4bt
        0x51t
        0x42t
        0x4ft
        0x50t
        0x51t
        0x46t
        0x51t
        0x46t
        0x3et
        0x49t
        0xbt
        0x43t
        0x46t
        0x4bt
        0x46t
        0x50t
        0x45t
        0x3ct
        0x3et
        0x40t
        0x51t
        0x46t
        0x53t
        0x46t
        0x51t
        0x56t
        0x17t
        0xat
        0x1ct
        0x6t
        0x17t
        0x9t
        0xat
        0x9t
        0x4t
        0x1bt
        0xet
        0x9t
        0xat
        0x14t
    .end array-data
.end method


# virtual methods
.method public A1C()V
    .locals 2

    .line 47591
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 47592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A03:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47595
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0L()Ljava/lang/String;

    move-result-object v0

    .line 47596
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A06(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;)V

    .line 47597
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XS;->A03()V

    .line 47598
    return-void
.end method

.method public A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 8

    .line 47599
    move-object v4, p2

    move-object p2, v4

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A07:Lcom/facebook/ads/redexgen/X/bF;

    .line 47601
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    .line 47602
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47603
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47604
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A09()Lcom/facebook/ads/redexgen/X/Xh;

    move-result-object v6

    .line 47605
    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 47606
    return-void
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/Yb;)I
    .locals 1

    .line 47607
    if-nez p1, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public abstract A1R(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bF;
.end method

.method public A1S()V
    .locals 10

    .line 47608
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getExpandableLayout()Landroid/view/View;

    move-result-object v6

    .line 47609
    .local v0, "expandableLayout":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 47610
    const/4 v9, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dm;

    invoke-direct {v0, v9, v5}, Lcom/facebook/ads/redexgen/X/Dm;-><init>(ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    .line 47611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/DR;

    if-eqz v0, :cond_0

    .line 47612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0L(Lcom/facebook/ads/redexgen/X/fK;)V

    .line 47613
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v8

    .line 47614
    .local v1, "colors":Lcom/facebook/ads/redexgen/X/Na;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    .line 47615
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    .line 47616
    invoke-virtual {v8, v9}, Lcom/facebook/ads/redexgen/X/Na;->A0A(Z)I

    move-result v2

    const/16 v7, 0x12c

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DB;

    invoke-direct {v0, v3, v7, v1, v2}, Lcom/facebook/ads/redexgen/X/DB;-><init>(Landroid/view/View;III)V

    .line 47617
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0L(Lcom/facebook/ads/redexgen/X/fK;)V

    .line 47618
    sget v2, Lcom/facebook/ads/redexgen/X/Ka;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ka;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ka;->A0B:I

    .line 47619
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 47620
    .local v4, "startDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v9}, Lcom/facebook/ads/redexgen/X/Na;->A09(Z)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Ka;->A0B:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A05(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 47621
    .local v2, "endDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    .line 47622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DS;

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/facebook/ads/redexgen/X/DS;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47623
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0L(Lcom/facebook/ads/redexgen/X/fK;)V

    .line 47624
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/16 v1, 0x96

    new-instance v0, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {v0, v6, v1, v5}, Lcom/facebook/ads/redexgen/X/DQ;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0L(Lcom/facebook/ads/redexgen/X/fK;)V

    .line 47625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0K(I)V

    .line 47626
    .end local v1    # "colors":Lcom/facebook/ads/redexgen/X/Na;
    .end local v2    # "endDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public final A1T()V
    .locals 9

    .line 47627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47628
    .local v0, "rewardConfirmationLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47629
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47630
    .local v2, "rewardConfirmationParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47631
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47633
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A15()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47634
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47635
    const/16 v0, 0xf

    const/4 v7, 0x0

    invoke-static {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 47636
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47637
    .local v3, "titleParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Ka;->A0L:I

    sget v2, Lcom/facebook/ads/redexgen/X/Ka;->A0L:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ka;->A0L:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ka;->A0L:I

    invoke-virtual {v6, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47638
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 47639
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47641
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    const v1, -0xce5db4

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A13:Lcom/facebook/ads/redexgen/X/YM;

    new-instance v3, Lcom/facebook/ads/redexgen/X/be;

    invoke-direct {v3, v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/be;-><init>(Landroid/content/Context;IILcom/facebook/ads/redexgen/X/YM;)V

    .line 47642
    .local v1, "iconView":Lcom/facebook/ads/redexgen/X/be;
    sget v2, Lcom/facebook/ads/redexgen/X/Ka;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ka;->A0H:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47643
    .local v4, "iconParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47644
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/be;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47645
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47646
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47647
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;)V

    .line 47648
    return-void
.end method

.method public final A1U()V
    .locals 13

    .line 47649
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47650
    .local v7, "rewardConfirmationLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47651
    const/4 v3, -0x1

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47652
    .local v8, "rewardConfirmationParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47653
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47654
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47655
    .local v9, "rewardGrantedTextView":Landroid/widget/TextView;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47656
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47657
    const/16 v0, 0x18

    invoke-static {v8, v9, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 47658
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47659
    .local v10, "rewardGrantedTextParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0q:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47660
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 47661
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47662
    nop

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 47663
    .local v12, "iconView":Lcom/facebook/ads/redexgen/X/bk;
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/bk;->setRadius(I)V

    .line 47664
    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 47665
    sget v4, Lcom/facebook/ads/redexgen/X/Ka;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ka;->A0E:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47666
    .local p0, "iconParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x11

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47667
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/bk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47668
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v4, v6, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    sget v1, Lcom/facebook/ads/redexgen/X/Ka;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ka;->A0E:I

    .line 47669
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47670
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 47671
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47672
    .local p1, "rewardInfoTextView":Landroid/widget/TextView;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1F()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47674
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v1

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v7

    .line 47675
    invoke-static {v12, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47676
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47677
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47678
    invoke-static {v5, v7, v11}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 47679
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47680
    .local p2, "rewardInfoTextParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0f:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0f:I

    invoke-virtual {v4, v3, v1, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47681
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 47682
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47683
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47684
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47685
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47686
    invoke-virtual {v2, v10}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;)V

    .line 47687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A0J()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;)V

    .line 47688
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47689
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47690
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47691
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47692
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47693
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v6

    sget-object v7, Lcom/facebook/ads/redexgen/X/aM;->A07:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47694
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v8

    .line 47695
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/c3;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/Yh;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    .line 47696
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;)V

    .line 47697
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47698
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A07:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;)V

    .line 47699
    :cond_1
    return-void
.end method

.method public final A1V(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 47700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/LK;

    if-eqz v0, :cond_2

    .line 47701
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6V;

    if-nez v0, :cond_0

    .line 47702
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6U;

    if-eqz v0, :cond_1

    .line 47703
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 47704
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47705
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 47706
    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bF;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47708
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47709
    .end local v0    # "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bF;->A0l(I)V

    .line 47710
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LK;

    .line 47711
    invoke-virtual {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0y(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V

    .line 47712
    :cond_2
    return-void

    .line 47713
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ka;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final synthetic A1W(Landroid/view/View;)V
    .locals 4

    .line 47714
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ka;->A06:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v2, 0x2e

    const/16 v1, 0x2d

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ka;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 47715
    return-void
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;
    .locals 1

    .line 47716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    return-object v0
.end method

.method public getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/DA;
    .locals 1

    .line 47717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Lcom/facebook/ads/redexgen/X/DA;

    return-object v0
.end method

.method public getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;
    .locals 1

    .line 47718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A07:Lcom/facebook/ads/redexgen/X/bF;

    return-object v0
.end method

.method public getAdInfo()Lcom/facebook/ads/redexgen/X/NR;
    .locals 1

    .line 47719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A05:Lcom/facebook/ads/redexgen/X/NR;

    return-object v0
.end method

.method public getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Dm;
    .locals 1

    .line 47720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 47721
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47726
    :cond_0
    return-void

    .line 47727
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A0l(I)V

    .line 47728
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 47729
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->onLayout(ZIIII)V

    .line 47730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47731
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A04:Lcom/facebook/ads/redexgen/X/jd;

    .line 47732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47733
    .end local v0
    :cond_0
    return-void

    .line 47734
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getExpandableLayout()Landroid/view/View;

    move-result-object v4

    .line 47735
    .local v0, "expandableLayout":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 47736
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/DR;

    if-nez v0, :cond_2

    .line 47737
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x12c

    new-instance v0, Lcom/facebook/ads/redexgen/X/DR;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/DR;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/DR;

    .line 47738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0L(Lcom/facebook/ads/redexgen/X/fK;)V

    .line 47739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0J()V

    .line 47740
    :cond_2
    return-void
.end method
