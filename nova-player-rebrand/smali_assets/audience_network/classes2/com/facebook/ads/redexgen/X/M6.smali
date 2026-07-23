.class public final Lcom/facebook/ads/redexgen/X/M6;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/av;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:Landroid/net/Uri;

.field public static final A0M:Landroid/view/View$OnTouchListener;


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Landroid/widget/LinearLayout;

.field public A05:Lcom/facebook/ads/redexgen/X/an;

.field public A06:Lcom/facebook/ads/redexgen/X/au;

.field public A07:Ljava/lang/String;

.field public final A08:Landroid/webkit/WebView;

.field public final A09:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/ar;

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1363
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SfnKd94fp0LIHLn5JRYBcVoydcWvvWC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zcIUR0bnd2fDOpnzxhHInmQw6nqRGEtO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Rlzv6bB7Czucpp1t79MjvCXFuIOZg8dc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c1MACJD11uXVhN3Ickl6ZqMudEgzXQA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WTgVZUaV9yT0hbCJXLqGbS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "77CVi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3ZIeaeVMqGSC8jDTqrHFXNca0PmxnycW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M6;->A0A()V

    const/16 v0, 0xe0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M6;->A0I:I

    .line 1364
    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0L:Landroid/net/Uri;

    .line 1365
    new-instance v0, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ac;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0M:Landroid/view/View$OnTouchListener;

    .line 1366
    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M6;->A0K:I

    .line 1367
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0P:I

    sput v0, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    .line 1368
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sput v0, Lcom/facebook/ads/redexgen/X/M6;->A0H:I

    .line 1369
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sput v0, Lcom/facebook/ads/redexgen/X/M6;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;)V
    .locals 1

    .line 50849
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;ZZ)V

    .line 50850
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;ZZ)V
    .locals 1

    .line 50851
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50852
    new-instance v0, Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M7;-><init>(Lcom/facebook/ads/redexgen/X/M6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0A:Lcom/facebook/ads/redexgen/X/ar;

    .line 50853
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M6;->A08:Landroid/webkit/WebView;

    .line 50854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    .line 50855
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Uq;->A06(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0B:Z

    .line 50856
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/M6;->A0D:Z

    .line 50857
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/M6;->A0C:Z

    .line 50858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M6;->A08()V

    .line 50859
    if-eqz p4, :cond_0

    .line 50860
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Z)V

    .line 50861
    :cond_0
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 50862
    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0K:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/M6;)Landroid/webkit/WebView;
    .locals 0

    .line 50863
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A08:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;
    .locals 0

    .line 50864
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/M6;)Landroid/widget/ImageView;
    .locals 0

    .line 50865
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/M6;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 50866
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/M6;)Lcom/facebook/ads/redexgen/X/au;
    .locals 0

    .line 50867
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A06:Lcom/facebook/ads/redexgen/X/au;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M6;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/M6;)Ljava/lang/String;
    .locals 0

    .line 50868
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A07:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 8

    .line 50869
    const/4 v6, -0x1

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 50870
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M6;->setGravity(I)V

    .line 50871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    .line 50872
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50873
    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50874
    .local v1, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0N:Lcom/facebook/ads/redexgen/X/YM;

    .line 50876
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50877
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0M:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50879
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ad;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ad;-><init>(Lcom/facebook/ads/redexgen/X/M6;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0B:Z

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50882
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    .line 50883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50885
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50886
    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50887
    .local v2, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0L:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50889
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0M:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/M6;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50892
    .end local v2    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/an;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/an;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    .line 50893
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50894
    .local v2, "titleViewsParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50895
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 50896
    :goto_0
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/an;->setGravity(I)V

    .line 50898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0D:Z

    if-nez v0, :cond_3

    .line 50899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    .line 50900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50901
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0J:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0J:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50902
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 50903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50905
    .local v6, "handlerImgV":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50906
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0k:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50907
    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0H:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50908
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50909
    .local v7, "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50910
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50911
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50912
    .end local v0    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "handlerImgV":Landroid/widget/ImageView;
    .end local v7    # "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    .line 50914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50916
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    const/16 v2, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50917
    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50918
    .local v0, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50919
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0L:Lcom/facebook/ads/redexgen/X/YM;

    .line 50920
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A02(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50921
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0M:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/af;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/af;-><init>(Lcom/facebook/ads/redexgen/X/M6;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50925
    .end local v0    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    .line 50926
    sget v1, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A0G:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50927
    .local v0, "nativeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50928
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0M:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50930
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ag;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ag;-><init>(Lcom/facebook/ads/redexgen/X/M6;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50932
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M6;->A09()V

    .line 50933
    return-void

    .line 50934
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/M6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 50935
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private A09()V
    .locals 7

    .line 50936
    const/4 v3, 0x0

    .line 50937
    .local v0, "nativeBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    .line 50938
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0k(Landroid/content/Context;)Z

    move-result v6

    .line 50939
    .local v1, "alwaysShowDefaultExternalBrowserIcon":Z
    const/4 v4, 0x0

    if-nez v6, :cond_0

    .line 50940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 50941
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_0

    .line 50942
    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0L:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50943
    const/high16 v0, 0x10000

    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 50944
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50945
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50946
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A09:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_2

    .line 50947
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50948
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M6;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 50949
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50950
    return-void

    .line 50951
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    .line 50952
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const-string v1, "Y9G9nX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_6

    .line 50953
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const-string v1, "hqSHhnICOqiHaN8u87jsv4Qx8TBqcflH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "kBU630hheaj535sYoezwG0Sk33mkxVnX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50954
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0O:Lcom/facebook/ads/redexgen/X/YM;

    .line 50955
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 50956
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M6;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x71

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M6;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x8t
        0xat
        0x12t
        -0x72t
        -0x49t
        -0x46t
        -0x42t
        -0x50t
        -0x16t
        0x13t
        0x16t
        0x1bt
        0x5t
        0x16t
        0x8t
        -0x4at
        -0x29t
        -0x34t
        -0x2bt
        -0x79t
        -0x2bt
        -0x38t
        -0x25t
        -0x30t
        -0x23t
        -0x34t
        -0x79t
        -0x37t
        -0x27t
        -0x2at
        -0x22t
        -0x26t
        -0x34t
        -0x27t
        -0x6t
        -0x5t
        0x8t
        0xet
        0xdt
        -0x2dt
        -0x5t
        0x5t
        -0x6t
        0x7t
        0x4t
        0x17t
        0x24t
        0x1at
        0x28t
        0x25t
        0x1ft
        0x1at
        -0x1ct
        0x1ft
        0x24t
        0x2at
        0x1bt
        0x24t
        0x2at
        -0x1ct
        0x17t
        0x19t
        0x2at
        0x1ft
        0x25t
        0x24t
        -0x1ct
        0xct
        -0x1t
        -0x5t
        0xdt
        0x12t
        0x1et
        0x1ct
        -0x23t
        0x10t
        0x1dt
        0x13t
        0x21t
        0x1et
        0x18t
        0x13t
        -0x23t
        0x12t
        0x17t
        0x21t
        0x1et
        0x1ct
        0x14t
        -0x44t
        -0x38t
        -0x38t
        -0x3ct
        -0x72t
        -0x7dt
        -0x7dt
        -0x35t
        -0x35t
        -0x35t
        -0x7et
        -0x46t
        -0x4bt
        -0x49t
        -0x47t
        -0x4at
        -0x3dt
        -0x3dt
        -0x41t
        -0x7et
        -0x49t
        -0x3dt
        -0x3ft
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/M6;Z)V
    .locals 0

    .line 50957
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0D(Z)V

    return-void
.end method

.method private A0C(Z)V
    .locals 5

    .line 50958
    if-eqz p1, :cond_2

    const/4 v4, 0x0

    .line 50959
    .local v0, "visibility":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A0F:[Ljava/lang/String;

    const-string v1, "nknH3C2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 50960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50961
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 50962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50963
    :cond_1
    return-void

    .line 50964
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Z)V
    .locals 1

    .line 50965
    if-eqz p1, :cond_0

    .line 50966
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Z)V

    .line 50967
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/M6;)Z
    .locals 0

    .line 50968
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0B:Z

    return p0
.end method

.method private getExternalBrowserBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 50970
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0C:Z

    if-eqz v0, :cond_0

    .line 50971
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0Q:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 50972
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0P:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ar;
    .locals 1

    .line 50969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A0A:Lcom/facebook/ads/redexgen/X/ar;

    return-object v0
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    .line 50973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50974
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/au;)V
    .locals 0

    .line 50975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M6;->A06:Lcom/facebook/ads/redexgen/X/au;

    .line 50976
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 50977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/an;->setTitle(Ljava/lang/String;)V

    .line 50978
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4

    .line 50979
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M6;->A07:Ljava/lang/String;

    .line 50980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A07:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v2, 0x23

    const/16 v1, 0xb

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50981
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/an;->setSubtitle(Ljava/lang/String;)V

    .line 50982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50983
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/M6;->A0I:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50984
    :goto_0
    return-void

    .line 50985
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Lcom/facebook/ads/redexgen/X/an;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/an;->setSubtitle(Ljava/lang/String;)V

    .line 50986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
