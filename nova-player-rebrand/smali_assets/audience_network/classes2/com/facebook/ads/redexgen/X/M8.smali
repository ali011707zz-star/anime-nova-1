.class public final Lcom/facebook/ads/redexgen/X/M8;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/av;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:Landroid/net/Uri;

.field public static final A0I:Landroid/view/View$OnTouchListener;


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Lcom/facebook/ads/redexgen/X/am;

.field public A05:Lcom/facebook/ads/redexgen/X/au;

.field public A06:Ljava/lang/String;

.field public final A07:Landroid/webkit/WebView;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/ar;

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1370
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gmSbsJUTV6ssYU6sPFdQApLIq3Ne91IM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MfGeHL5PmkPbpLjQYYWOTSdzt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SJThwTW85f7z2tdQDzwWLTm6w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rQXooJE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LhKJvtc1UCCcm5M0SWMNGP7YHUEfZfxE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2Oh5HyK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M8;->A0A()V

    const/16 v0, 0xe0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M8;->A0F:I

    .line 1371
    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M8;->A0G:I

    .line 1372
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0k:I

    sput v0, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    .line 1373
    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0H:Landroid/net/Uri;

    .line 1374
    new-instance v0, Lcom/facebook/ads/redexgen/X/aX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aX;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0I:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;Z)V
    .locals 1

    .line 51001
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51002
    new-instance v0, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>(Lcom/facebook/ads/redexgen/X/M8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A09:Lcom/facebook/ads/redexgen/X/ar;

    .line 51003
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M8;->A07:Landroid/webkit/WebView;

    .line 51004
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 51005
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Uq;->A06(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0A:Z

    .line 51006
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/M8;->A0B:Z

    .line 51007
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M8;->A08()V

    .line 51008
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/M8;->A0C(Z)V

    .line 51009
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 51010
    sget v0, Lcom/facebook/ads/redexgen/X/M8;->A0G:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/M8;)Landroid/webkit/WebView;
    .locals 0

    .line 51011
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A07:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;
    .locals 0

    .line 51012
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;
    .locals 0

    .line 51013
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 51014
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/M8;)Lcom/facebook/ads/redexgen/X/au;
    .locals 0

    .line 51015
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A05:Lcom/facebook/ads/redexgen/X/au;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M8;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/M8;)Ljava/lang/String;
    .locals 0

    .line 51016
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A06:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 8

    .line 51017
    const/4 v6, -0x1

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 51018
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M8;->setGravity(I)V

    .line 51019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    .line 51020
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51021
    sget v1, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51022
    .local v1, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0N:Lcom/facebook/ads/redexgen/X/YM;

    .line 51025
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51026
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0I:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aY;-><init>(Lcom/facebook/ads/redexgen/X/M8;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51030
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0A:Z

    const v3, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    .line 51032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51034
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51035
    sget v1, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51036
    .local v2, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0M:Lcom/facebook/ads/redexgen/X/YM;

    .line 51038
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51039
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0I:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51041
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aZ;-><init>(Lcom/facebook/ads/redexgen/X/M8;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51043
    .end local v2    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/am;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/am;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    .line 51044
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51045
    .local v2, "titleViewsParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51046
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 51047
    :goto_0
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51048
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/am;->setGravity(I)V

    .line 51049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0B:Z

    if-nez v0, :cond_3

    .line 51050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51051
    .local v6, "titleWithHandlerLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51052
    invoke-virtual {p0, v4, v7}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51053
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 51054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51055
    .local v7, "handlerImgV":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51056
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0k:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51057
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51058
    .local p0, "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51059
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51060
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51061
    .end local v0    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "titleWithHandlerLayout":Landroid/widget/LinearLayout;
    .end local v7    # "handlerImgV":Landroid/widget/ImageView;
    .end local p0    # "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0A:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51062
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    .line 51063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51065
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    const/16 v3, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51066
    sget v1, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51067
    .local v0, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0M:Lcom/facebook/ads/redexgen/X/YM;

    .line 51069
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A02(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51070
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51071
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0I:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aa;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aa;-><init>(Lcom/facebook/ads/redexgen/X/M8;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51074
    .end local v0    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    .line 51075
    sget v1, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/M8;->A0E:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51076
    .local v0, "nativeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v4, v0, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 51077
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51078
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0I:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/M8;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M8;->A09()V

    .line 51083
    return-void

    .line 51084
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/M8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 51085
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private A09()V
    .locals 7

    .line 51086
    const/4 v5, 0x0

    .line 51087
    .local v0, "nativeBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 51088
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0k(Landroid/content/Context;)Z

    move-result v6

    .line 51089
    .local v1, "alwaysShowDefaultExternalBrowserIcon":Z
    const/4 v3, 0x0

    if-nez v6, :cond_0

    .line 51090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 51091
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 51092
    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/M8;->A0H:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51093
    const/high16 v0, 0x10000

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 51094
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51095
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51096
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_6

    .line 51097
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51098
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    if-ne v5, v0, :cond_4

    .line 51099
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    .line 51100
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51101
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0O:Lcom/facebook/ads/redexgen/X/YM;

    .line 51102
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "OiPmrAn3GllLAwonlzrco6n6FhbN6530"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_4

    goto :goto_1

    .line 51103
    :cond_4
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M8;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "H3zrzdIXpl7cuf9737Dh0UcXPx3q90pI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M8;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 51105
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51106
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "C5b1pkMeIVGGxpo7XcAe9IGkuMZh8kn1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void
.end method

.method public static A0A()V
    .locals 4

    const/16 v0, 0x71

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "Ujyw6mT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Vqhraj8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/M8;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x2bt
        -0xct
        -0xat
        -0x2t
        -0x44t
        -0x1bt
        -0x18t
        -0x14t
        -0x22t
        0x0t
        0x29t
        0x2ct
        0x31t
        0x1bt
        0x2ct
        0x1et
        0x17t
        0x38t
        0x2dt
        0x36t
        -0x18t
        0x36t
        0x29t
        0x3ct
        0x31t
        0x3et
        0x2dt
        -0x18t
        0x2at
        0x3at
        0x37t
        0x3ft
        0x3bt
        0x2dt
        0x3at
        0x29t
        0x2at
        0x37t
        0x3dt
        0x3ct
        0x2t
        0x2at
        0x34t
        0x29t
        0x36t
        0x33t
        0x37t
        0x44t
        0x3at
        0x48t
        0x45t
        0x3ft
        0x3at
        0x4t
        0x3ft
        0x44t
        0x4at
        0x3bt
        0x44t
        0x4at
        0x4t
        0x37t
        0x39t
        0x4at
        0x3ft
        0x45t
        0x44t
        0x4t
        0x2ct
        0x1ft
        0x1bt
        0x2dt
        -0x1dt
        -0x11t
        -0x13t
        -0x52t
        -0x1ft
        -0x12t
        -0x1ct
        -0xet
        -0x11t
        -0x17t
        -0x1ct
        -0x52t
        -0x1dt
        -0x18t
        -0xet
        -0x11t
        -0x13t
        -0x1bt
        0x3bt
        0x47t
        0x47t
        0x43t
        0xdt
        0x2t
        0x2t
        0x4at
        0x4at
        0x4at
        0x1t
        0x39t
        0x34t
        0x36t
        0x38t
        0x35t
        0x42t
        0x42t
        0x3et
        0x1t
        0x36t
        0x42t
        0x40t
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/M8;Z)V
    .locals 0

    .line 51107
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/M8;->A0D(Z)V

    return-void
.end method

.method private A0C(Z)V
    .locals 2

    .line 51108
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 51109
    .local v0, "visibility":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 51110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51111
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 51112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51113
    :cond_1
    return-void

    .line 51114
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private A0D(Z)V
    .locals 1

    .line 51115
    if-eqz p1, :cond_0

    .line 51116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/M8;->A0C(Z)V

    .line 51117
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/M8;)Z
    .locals 0

    .line 51118
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/M8;->A0A:Z

    return p0
.end method

.method public static getExternalBrowserBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 51120
    sget-object v3, Lcom/facebook/ads/redexgen/X/YM;->A0Q:Lcom/facebook/ads/redexgen/X/YM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "lUY1mRDCMXM3WZHcFiHRXNaY27JpPEEp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ar;
    .locals 1

    .line 51119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A09:Lcom/facebook/ads/redexgen/X/ar;

    return-object v0
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    .line 51121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51122
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/au;)V
    .locals 0

    .line 51123
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M8;->A05:Lcom/facebook/ads/redexgen/X/au;

    .line 51124
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 51125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/am;->setTitle(Ljava/lang/String;)V

    .line 51126
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 5

    .line 51127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M8;->A06:Ljava/lang/String;

    .line 51128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v2, 0x23

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/M8;->A0D:[Ljava/lang/String;

    const-string v1, "qQ1cUQL6zuFcmcs6RwakvLgHhcCBx0UL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A06:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51129
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/am;->setSubtitle(Ljava/lang/String;)V

    .line 51130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51131
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/M8;->A0F:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51132
    :goto_0
    return-void

    .line 51133
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A04:Lcom/facebook/ads/redexgen/X/am;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/am;->setSubtitle(Ljava/lang/String;)V

    .line 51134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M8;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
