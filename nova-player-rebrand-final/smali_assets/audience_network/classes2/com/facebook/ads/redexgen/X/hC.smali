.class public final Lcom/facebook/ads/redexgen/X/hC;
.super Lcom/facebook/ads/redexgen/X/Rm;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/context/Repairable;
.implements Lcom/facebook/ads/redexgen/X/T4;
.implements Lcom/facebook/ads/redexgen/X/Zc;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;

.field public A03:Landroid/view/View;

.field public A04:Landroid/widget/ImageView;

.field public A05:Landroid/widget/ImageView;

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/MediaView;

.field public A08:Lcom/facebook/ads/MediaViewListener;

.field public A09:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A0B:Lcom/facebook/ads/redexgen/X/Rv;

.field public A0C:Lcom/facebook/ads/redexgen/X/gi;

.field public A0D:Lcom/facebook/ads/redexgen/X/XO;

.field public A0E:Lcom/facebook/ads/redexgen/X/0x;

.field public A0F:Lcom/facebook/ads/redexgen/X/b5;

.field public A0G:Lcom/facebook/ads/redexgen/X/bX;

.field public A0H:Lcom/facebook/ads/redexgen/X/62;

.field public A0I:Lcom/facebook/ads/redexgen/X/eF;

.field public A0J:Z

.field public A0K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2913
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opPNeHLRCwNMjghH70VvpS5N8kNNBiJu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eEOY2RUjN4bpbDsCyz0GPhNNbfKnjNLD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VFQc0pqb8IELGhnpfLoj2hUSBo2VhTCu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GBUHck22"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gxS7cL5mKFosIlCCzwl1gr8LaZQoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JvRhV7isjcFk5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q8NK4BrUIZ6kI5bk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yT7QEu4e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hC;->A0C()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hC;->A0N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83844
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>()V

    .line 83845
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 83846
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A01:I

    .line 83847
    iput v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A00:I

    .line 83848
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 83849
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 83850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 83851
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/bX;
    .locals 0

    .line 83852
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/62;
    .locals 0

    .line 83853
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "ck5ggAbj2vioxfDq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NneLGMvrJ83sFMBsADIKrHrKRcoTv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06()V
    .locals 5

    .line 83854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABd()V

    .line 83855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/bX;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/bX;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    .line 83856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setImagePadding(I)V

    .line 83857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0f:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setImage(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 83858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    const v0, -0x777778

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/facebook/ads/redexgen/X/bX;->A03(IIIZ)V

    .line 83859
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83860
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x6

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83862
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 83863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/hC;->A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 83865
    return-void
.end method

.method private A07()V
    .locals 3

    .line 83866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    if-eqz v0, :cond_0

    .line 83867
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/62;->setVisibility(I)V

    .line 83868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    .line 83869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 83870
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Ph;->A0A(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 83871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 83872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    .line 83873
    :cond_0
    return-void
.end method

.method private A08()V
    .locals 1

    .line 83874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 83876
    :cond_0
    return-void
.end method

.method private A09()V
    .locals 1

    .line 83877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 83879
    :cond_0
    return-void
.end method

.method private A0A()V
    .locals 3

    .line 83880
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    if-nez v0, :cond_1

    .line 83881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 83882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 83883
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    .line 83884
    .local v0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 83885
    .local v1, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 83886
    .local v2, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/0x;->setChildSpacing(I)V

    .line 83887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/0x;->setPadding(IIII)V

    .line 83888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0x;->setVisibility(I)V

    .line 83889
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83890
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    .line 83892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83893
    return-void

    .line 83894
    .end local v0    # "density":F
    .end local v1    # "hPadding":I
    .end local v2    # "vPadding":I
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0B()V
    .locals 2

    .line 83895
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 83896
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 83897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 83898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 83899
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hC;->A0L:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x1ft
        -0xet
        -0x11t
        -0xbt
        -0xdt
        -0x1bt
        -0x14t
        -0x60t
        -0xet
        -0x1bt
        -0x12t
        -0x1ct
        -0x1bt
        -0xet
        -0x1bt
        -0xet
        -0x60t
        -0x13t
        -0xbt
        -0xdt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x60t
        -0xdt
        -0x1bt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x1at
        -0x11t
        -0xet
        -0x1bt
        -0x60t
        -0x12t
        -0x1ft
        -0xct
        -0x17t
        -0xat
        -0x1bt
        -0x3ft
        -0x1ct
        -0x52t
        0x9t
        0x5t
        0x4t
        0x38t
        0x27t
        0x2ct
        0x28t
        0x31t
        0x26t
        0x28t
        0x11t
        0x28t
        0x37t
        0x3at
        0x32t
        0x35t
        0x2et
        -0x34t
        -0x10t
        -0x1ct
        -0x16t
        -0x18t
        -0x5dt
        -0xbt
        -0x18t
        -0xft
        -0x19t
        -0x18t
        -0xbt
        -0x18t
        -0xbt
        -0x5dt
        -0x10t
        -0x8t
        -0xat
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x17t
        -0xet
        -0xbt
        -0x18t
        -0x5dt
        -0xft
        -0x1ct
        -0x9t
        -0x14t
        -0x7t
        -0x18t
        -0x3ct
        -0x19t
        -0x4ft
        -0x7t
        0x1dt
        0x11t
        0x17t
        0x15t
        -0x30t
        0x22t
        0x15t
        0x1et
        0x14t
        0x15t
        0x22t
        0x15t
        0x22t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x12t
        0x15t
        -0x30t
        0x23t
        0x15t
        0x24t
        -0x30t
        0x12t
        0x15t
        0x16t
        0x1ft
        0x22t
        0x15t
        -0x30t
        0x1et
        0x11t
        0x24t
        0x19t
        0x26t
        0x15t
        -0xet
        0x11t
        0x1et
        0x1et
        0x15t
        0x22t
        -0xft
        0x14t
        -0x22t
        -0x53t
        -0x2et
        -0x26t
        -0x3bt
        -0x30t
        -0x33t
        -0x38t
        -0x7ct
        -0x46t
        -0x33t
        -0x37t
        -0x25t
        -0x7ct
        -0x39t
        -0x2dt
        -0x2et
        -0x29t
        -0x28t
        -0x2at
        -0x27t
        -0x39t
        -0x28t
        -0x2dt
        -0x2at
        -0x7ct
        -0x2ct
        -0x3bt
        -0x2at
        -0x3bt
        -0x2ft
        -0x29t
        -0x7ct
        -0x28t
        -0x23t
        -0x2ct
        -0x37t
        -0x6et
        -0x3et
        -0x2bt
        -0x18t
        -0x23t
        -0x16t
        -0x27t
        -0x6ct
        -0x4bt
        -0x28t
        -0x6ct
        -0x43t
        -0x29t
        -0x1dt
        -0x1et
        -0x6ct
        -0x23t
        -0x19t
        -0x6ct
        -0x1et
        -0x17t
        -0x20t
        -0x20t
        -0x5et
        -0x1at
        -0x7t
        -0xct
        -0xbt
        -0x1t
        -0x50t
        0x2t
        -0xbt
        -0x2t
        -0xct
        -0xbt
        0x2t
        -0xbt
        0x2t
        -0x50t
        -0x3t
        0x5t
        0x3t
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0x50t
        0x3t
        -0xbt
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0xat
        -0x1t
        0x2t
        -0xbt
        -0x50t
        -0x2t
        -0xft
        0x4t
        -0x7t
        0x6t
        -0xbt
        -0x2ft
        -0xct
        -0x42t
        -0x29t
        -0x1at
        -0x21t
        -0x46t
        -0x3at
        -0x3ct
        -0x7bt
        -0x43t
        -0x48t
        -0x46t
        -0x44t
        -0x47t
        -0x3at
        -0x3at
        -0x3et
        -0x7bt
        -0x48t
        -0x45t
        -0x36t
        -0x7bt
        -0x3bt
        -0x48t
        -0x35t
        -0x40t
        -0x33t
        -0x44t
        -0x7bt
        -0x46t
        -0x3dt
        -0x40t
        -0x46t
        -0x3et
        -0x44t
        -0x45t
        -0xft
        -0x1ct
        -0x21t
        -0x20t
        -0x16t
        -0x30t
        -0x13t
        -0x19t
        -0x48t
    .end array-data
.end method

.method private final A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 83900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 83901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 83903
    return-void
.end method

.method private A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 3

    .line 83904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_0

    .line 83905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 83906
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/UK;->A1t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83907
    return-void

    .line 83908
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/UK;->A1I()Ljava/lang/String;

    move-result-object v1

    .line 83909
    .local v0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83910
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 83911
    return-void

    .line 83912
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/eE;->A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    .line 83913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_3

    .line 83914
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83915
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83916
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83917
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83918
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83919
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83920
    const/16 v1, 0x11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 83923
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private A0F(Landroid/widget/ImageView;)V
    .locals 4

    .line 83924
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    if-nez v0, :cond_2

    .line 83925
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "0pGJtKTiEG7M1QZmgSqLESVqtH6XSoGw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 83926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 83927
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83928
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83929
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83931
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YB;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 83932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    .line 83933
    return-void

    .line 83934
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 83935
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 83936
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0F(Landroid/widget/ImageView;)V

    .line 83937
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0S(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 83938
    new-instance v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    .line 83939
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0A()V

    .line 83940
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 83941
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0B()V

    .line 83942
    return-void
.end method

.method private final A0H(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 83943
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 83944
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0F(Landroid/widget/ImageView;)V

    .line 83945
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0S(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 83946
    new-instance v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    .line 83947
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0A()V

    .line 83948
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 83949
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0B()V

    .line 83950
    return-void
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 83951
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 83952
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0F(Landroid/widget/ImageView;)V

    .line 83953
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0S(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 83954
    new-instance v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    .line 83955
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0A()V

    .line 83956
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 83957
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0B()V

    .line 83958
    return-void
.end method

.method private final A0J(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 83959
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 83960
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0F(Landroid/widget/ImageView;)V

    .line 83961
    new-instance v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->A0S(Lcom/facebook/ads/redexgen/X/b5;)V

    .line 83962
    new-instance v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    .line 83963
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0A()V

    .line 83964
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 83965
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A0B()V

    .line 83966
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0

    .line 83967
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/UK;->A1j(Lcom/facebook/ads/redexgen/X/Zc;)V

    .line 83968
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 2

    .line 83969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    if-eqz v0, :cond_0

    .line 83970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Rw;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83971
    :cond_0
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 3

    .line 83972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 83973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 83974
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    .line 83975
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    if-eqz v0, :cond_1

    .line 83976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 83977
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    .line 83978
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83979
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A06()V

    .line 83980
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0L(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 83981
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0P(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 83982
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0K(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 83983
    :cond_2
    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 5

    .line 83984
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A00:I

    .line 83985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 83986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 83987
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "SLqcyKPzacI72"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    .line 83988
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABe()V

    .line 83990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    .line 83991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0f:Lcom/facebook/ads/redexgen/X/YM;

    .line 83992
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83993
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83994
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83995
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x6

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83997
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 83998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/hC;->A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83999
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84000
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0O(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84001
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 2

    .line 84002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84004
    :cond_0
    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 3

    .line 84005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    if-eqz v0, :cond_0

    .line 84006
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A0y()I

    move-result v2

    .line 84007
    .local v0, "closableSeconds":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/hD;

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/redexgen/X/hD;-><init>(Lcom/facebook/ads/redexgen/X/hC;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    .line 84008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 84009
    .end local v0    # "closableSeconds":I
    :cond_0
    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/UK;Z)V
    .locals 7

    .line 84010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 84011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 84012
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "ljpGBw4ulgnIo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    .line 84013
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84014
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84015
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    .line 84016
    const/4 v2, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84017
    .local v0, "adChoiceContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_4

    .line 84018
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84019
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/aM;

    new-instance v5, Lcom/facebook/ads/redexgen/X/a5;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 84020
    .local v2, "adChoiceViewV2":Lcom/facebook/ads/redexgen/X/a5;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84021
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_3

    .line 84022
    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v6, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 84023
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84024
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ry;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/a5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/hC;->A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84026
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84027
    .end local v0    # "adChoiceContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "adChoiceViewV2":Lcom/facebook/ads/redexgen/X/a5;
    :cond_2
    return-void

    .line 84028
    :cond_3
    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "wMv0uQjYnC0gE49Cu2XgtVhibZPJIfwu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "eHWX3hnc2MQEr3W9NzLO2AooGOj1mFxu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    invoke-virtual {v4, v6, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 84029
    :cond_4
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84030
    const/16 v0, 0x15

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/UK;ZLcom/facebook/ads/redexgen/X/Vb;)V
    .locals 3

    .line 84031
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 84032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 84033
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    if-eqz p2, :cond_0

    .line 84034
    new-instance v0, Lcom/facebook/ads/redexgen/X/hK;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hK;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    .line 84035
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 84036
    return-void
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/b5;)V
    .locals 3

    .line 84037
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    if-nez v0, :cond_1

    .line 84038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    if-eqz v0, :cond_0

    .line 84039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 84040
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84041
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84042
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    .line 84045
    return-void

    .line 84046
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0T(Lcom/facebook/ads/NativeAd;)Z
    .locals 4

    .line 84047
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S2;->A04()Ljava/util/List;

    move-result-object v0

    .line 84048
    .local v0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 84049
    return v2

    .line 84050
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 84051
    .local v3, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84052
    return v2

    .line 84053
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "NNKiamhSotpSBh0S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WQowSckFUFZtjqKDGN1yGWQ8HKryj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3
.end method

.method private A0U(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    .line 84054
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S2;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 84055
    :goto_0
    return v0

    .line 84056
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    .line 84057
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hC;->A0U(Lcom/facebook/ads/NativeAd;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0W(Lcom/facebook/ads/NativeAd;)V
    .locals 17

    .line 84058
    move-object/from16 v3, p0

    move-object v3, v3

    .line 84059
    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    .line 84060
    .local v2, "adObjectContext":Lcom/facebook/ads/redexgen/X/gi;
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 84061
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/gi;->A0L(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 84062
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0K(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 84063
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    .line 84064
    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v2

    .line 84065
    .local v4, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1a(Lcom/facebook/ads/MediaView;)V

    .line 84066
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84067
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84068
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    const/16 v5, 0xd

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84069
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v0

    .line 84070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84071
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 84072
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v10

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0A:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v10, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 84073
    :goto_0
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/hC;->A07()V

    .line 84074
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84075
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/b5;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84076
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84077
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 84078
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84079
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A03()V

    .line 84080
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84081
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84082
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/aw;

    if-eqz v0, :cond_2

    .line 84083
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aw;->A04()V

    .line 84084
    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 84085
    new-instance v12, Lcom/facebook/ads/redexgen/X/hI;

    invoke-direct {v12, v3, v2, v6}, Lcom/facebook/ads/redexgen/X/hI;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/NativeAd;)V

    .line 84086
    .local v14, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/d1;
    new-instance v9, Lcom/facebook/ads/redexgen/X/62;

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84087
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v11

    .line 84088
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v13

    .line 84089
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A1E()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v16

    const/16 v8, 0x105

    const/16 v6, 0x1f

    const/16 v0, 0xd

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/62;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/jd;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Y2;)V

    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    .line 84090
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xc;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Xc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 84091
    const/4 v0, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84092
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84093
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v4, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84094
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    .line 84095
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hC;->bringChildToFront(Landroid/view/View;)V

    .line 84096
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/62;->setVisibility(I)V

    .line 84097
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0H:Lcom/facebook/ads/redexgen/X/62;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84098
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 84099
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "nativeDSLListener":Lcom/facebook/ads/redexgen/X/d1;
    :cond_1
    :goto_2
    invoke-direct {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/hC;->A0Q(Lcom/facebook/ads/redexgen/X/UK;Z)V

    .line 84100
    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0M(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84101
    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0N(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84102
    return-void

    .line 84103
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    goto :goto_1

    .line 84104
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 84105
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v10

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A09:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v10, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    goto/16 :goto_0

    .line 84106
    :cond_4
    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/hC;->A0T(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84107
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A02:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 84108
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 84109
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A1C()Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A0B:Lcom/facebook/ads/redexgen/X/Ve;

    if-ne v6, v0, :cond_8

    const/4 v6, 0x1

    .line 84110
    .local v5, "enableTextInNativeCarousel":Z
    :goto_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v6, :cond_a

    .line 84111
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 84112
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v12

    .line 84113
    .local v11, "width":I
    if-nez v12, :cond_9

    .line 84114
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_4
    check-cast v10, Landroid/view/ViewGroup;

    .line 84115
    .local v12, "parentView":Landroid/view/ViewGroup;
    :goto_5
    if-nez v12, :cond_9

    if-eqz v10, :cond_9

    .line 84116
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 84117
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v11, v0, Landroid/view/ViewGroup;

    sget-object v13, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v6, v13, v0

    const/4 v0, 0x0

    aget-object v13, v13, v0

    const/16 v0, 0x1f

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v6, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v13, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v6, "X2xGJjQ8zu6cU8Eo"

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const-string v6, "AZj2zr3QMe0wQwV9kynIxRcnRDB4X"

    const/4 v0, 0x4

    aput-object v6, v13, v0

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_6
    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_5

    :cond_6
    move-object v10, v8

    goto :goto_6

    .line 84118
    :cond_7
    move-object v10, v8

    goto :goto_4

    .line 84119
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 84120
    .end local v12    # "parentView":Landroid/view/ViewGroup;
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 84121
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84122
    .local v9, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84123
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/aw;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    .line 84124
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v4, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84125
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-virtual {v0, v2, v12}, Lcom/facebook/ads/redexgen/X/aw;->A05(Lcom/facebook/ads/redexgen/X/UK;I)V

    .line 84126
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 84127
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 84128
    .end local v9    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "width":I
    goto :goto_8

    .line 84129
    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0E:Lcom/facebook/ads/redexgen/X/0x;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    .line 84130
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/0x;->setCurrentPosition(I)V

    .line 84131
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/0x;

    .line 84132
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0x;->setShowTextInCarousel(Z)V

    .line 84133
    if-eqz v6, :cond_b

    .line 84134
    nop

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v5, Lcom/facebook/ads/redexgen/X/0x;

    .line 84135
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A1N()Ljava/util/List;

    move-result-object v4

    .line 84136
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A1B()Lcom/facebook/ads/redexgen/X/Vd;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v6, v7, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7r;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Vd;)V

    .line 84137
    .local v3, "viewAdapter":Lcom/facebook/ads/redexgen/X/je;
    .restart local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/je;
    :goto_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/hH;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/hH;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/je;->A0P(Lcom/facebook/ads/redexgen/X/NM;)V

    .line 84138
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 84139
    .end local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/je;
    :goto_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    .line 84140
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/hC;->A07()V

    .line 84141
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84142
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/b5;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84143
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84144
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 84145
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84146
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A03()V

    .line 84147
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hC;->bringChildToFront(Landroid/view/View;)V

    .line 84148
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84149
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84150
    .end local v5    # "enableTextInNativeCarousel":Z
    goto/16 :goto_2

    .line 84151
    .end local v3
    :cond_b
    nop

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v5, Lcom/facebook/ads/redexgen/X/0x;

    .line 84152
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A1N()Ljava/util/List;

    move-result-object v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7q;

    invoke-direct {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7q;-><init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/gi;)V

    goto :goto_7

    .line 84153
    :cond_c
    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/hC;->A0U(Lcom/facebook/ads/NativeAd;)Z

    move-result v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v4, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v4, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v5, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v4, "QrlGDx1qLp0kN"

    const/4 v0, 0x5

    aput-object v4, v5, v0

    if-eqz v7, :cond_13

    .line 84154
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 84155
    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S2;->A01()I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A01:I

    .line 84156
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0D:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 84157
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0J:Z

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1n(Z)V

    .line 84158
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    .line 84159
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/hC;->A07()V

    .line 84160
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84161
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/b5;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84162
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 84163
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84164
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/aw;

    if-eqz v0, :cond_12

    .line 84165
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aw;->A04()V

    .line 84166
    :cond_e
    :goto_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hC;->bringChildToFront(Landroid/view/View;)V

    .line 84167
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v5, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v4, v5, v0

    const/4 v0, 0x0

    aget-object v5, v5, v0

    const/16 v0, 0x1f

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v4, v0, :cond_11

    sget-object v5, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v4, "KRt7yuKunmEFowe58PEdTHnfFAzQvUNu"

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const-string v4, "FpiuEPXAVB8biFGx18DJjcPDa6TrT1Ju"

    const/4 v0, 0x0

    aput-object v4, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 84168
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84169
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Rz;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 84170
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84171
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 84172
    :goto_a
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 84173
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/hG;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/hG;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84174
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v4

    .line 84175
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 84176
    :cond_f
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84177
    sget-object v8, Lcom/facebook/ads/redexgen/X/hC;->A0N:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x124

    const/16 v4, 0x9

    const/16 v0, 0x31

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/S2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S2;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84178
    :cond_10
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V

    goto/16 :goto_2

    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v4, "rknJE6EzKshvoL3E"

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const-string v4, "1VlRGSe6v9ZgAEzaXTE4MJVCDSD8V"

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 84179
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84180
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Rz;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 84181
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84182
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    if-eqz v0, :cond_f

    goto/16 :goto_a

    .line 84183
    :cond_12
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    goto/16 :goto_9

    .line 84184
    :cond_13
    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84185
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/Rv;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    .line 84186
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A0B:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 84187
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    .line 84188
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/hC;->A07()V

    .line 84189
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84190
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 84191
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84192
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A03()V

    .line 84193
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 84194
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84195
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/aw;

    if-eqz v0, :cond_15

    .line 84196
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aw;->A04()V

    .line 84197
    :cond_14
    :goto_b
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/hC;->bringChildToFront(Landroid/view/View;)V

    .line 84198
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84199
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Lcom/facebook/ads/redexgen/X/b5;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    .line 84200
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/hF;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/hF;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84201
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v4

    .line 84202
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 84203
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V

    goto/16 :goto_2

    .line 84204
    :cond_15
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    goto :goto_b
.end method

.method public final A0X(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 9

    .line 84205
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    .line 84206
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/gi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/gi;->A0L(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 84207
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 84208
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    .line 84209
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v3

    .line 84210
    .local v2, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1Z(Lcom/facebook/ads/MediaView;)V

    .line 84211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/b5;->setVisibility(I)V

    .line 84212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/b5;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 84213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 84215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A03()V

    .line 84216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/aw;

    if-eqz v0, :cond_6

    .line 84219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aw;->A04()V

    .line 84220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hC;->bringChildToFront(Landroid/view/View;)V

    .line 84222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    .line 84223
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A19()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v5

    .line 84224
    .local v3, "adIcon":Lcom/facebook/ads/redexgen/X/Vb;
    if-eqz v5, :cond_4

    .line 84225
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A14()Lcom/facebook/ads/redexgen/X/Sx;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "8vonm0Gh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EfYx5Mmt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84226
    .local v4, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 84227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84228
    if-eqz p2, :cond_1

    .line 84229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/hL;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/hL;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 84230
    .end local v4    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/hC;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 84231
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84232
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/hC;->A0Q(Lcom/facebook/ads/redexgen/X/UK;Z)V

    .line 84233
    :cond_2
    return-void

    .line 84234
    :cond_3
    invoke-direct {p0, v3, p2, v5}, Lcom/facebook/ads/redexgen/X/hC;->A0R(Lcom/facebook/ads/redexgen/X/UK;ZLcom/facebook/ads/redexgen/X/Vb;)V

    goto :goto_1

    .line 84235
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1A()Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v8

    .line 84236
    .local v4, "adListener":Lcom/facebook/ads/redexgen/X/Tv;
    sget-object v7, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 84237
    .local v5, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v6

    .line 84238
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A11()J

    move-result-wide v1

    .line 84239
    invoke-virtual {v7}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v5

    .line 84240
    invoke-virtual {v7}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 84241
    invoke-interface {v6, v1, v2, v5, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 84242
    if-eqz v8, :cond_5

    .line 84243
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/facebook/ads/redexgen/X/VP;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 84244
    :cond_5
    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84245
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84247
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/Td;->A0W:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 84248
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6, v5}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_1

    .line 84249
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final synthetic A0Y(Lcom/facebook/ads/redexgen/X/UK;Landroid/view/View;)V
    .locals 3

    .line 84250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A05:Lcom/facebook/ads/redexgen/X/aM;

    .line 84252
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aM;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AAy(Ljava/lang/String;)V

    .line 84253
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A1O()V

    .line 84254
    return-void
.end method

.method public final synthetic A0Z(Lcom/facebook/ads/redexgen/X/UK;Landroid/view/View;)V
    .locals 1

    .line 84255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    if-eqz v0, :cond_0

    .line 84256
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0D:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABb()V

    .line 84259
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ud;->A04()V

    .line 84260
    :cond_0
    :goto_0
    return-void

    .line 84261
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABc()V

    .line 84262
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ud;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final synthetic A0a(Lcom/facebook/ads/redexgen/X/UK;Landroid/view/View;)V
    .locals 2

    .line 84263
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84264
    iget v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A00:I

    .line 84265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A0z()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABZ()V

    .line 84267
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ud;->onClick(Landroid/view/View;)V

    .line 84268
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A00:I

    .line 84269
    :cond_0
    return-void

    .line 84270
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABY()V

    .line 84271
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A17()Lcom/facebook/ads/redexgen/X/Ud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ud;->A04()V

    goto :goto_0
.end method

.method public final A0b()Z
    .locals 4

    .line 84272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "f43XNCk8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "DdRxJSTL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final A6m()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 84273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final ACr()V
    .locals 0

    .line 84274
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A09()V

    .line 84275
    return-void
.end method

.method public final ACs()V
    .locals 0

    .line 84276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A08()V

    .line 84277
    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 4

    .line 84278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A03:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    if-eq p1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hC;->A04:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "R8dYcckG0onv7yQggjKFRkmHXZbq9UJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_5

    .line 84279
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    if-eqz v0, :cond_2

    .line 84281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0I:Lcom/facebook/ads/redexgen/X/eF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84282
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 84283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A06:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84284
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    if-eqz v0, :cond_4

    .line 84285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0G:Lcom/facebook/ads/redexgen/X/bX;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84286
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 84287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A05:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 84288
    :cond_5
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 84289
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 84290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 84291
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 84292
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 84293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A02:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 1

    .line 84294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getImageHeight()I

    move-result v0

    return v0

    .line 84296
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 84297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 84298
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 84299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 84300
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 84301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 84302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0F:Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b5;->getImageWidth()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "us0p5hBNoGIfish2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DFvDCw92fILzmemlu9XfPwpsPQRiq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 84303
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "7zc9sXuG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ncWuDUJK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 84304
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 84305
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 84306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 84307
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoDuration()I
    .locals 1

    .line 84308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABm()V

    .line 84309
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A01:I

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 6

    .line 84310
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84311
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_0

    .line 84312
    check-cast v1, Lcom/facebook/ads/redexgen/X/gi;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84313
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 84314
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    move-object v5, p2

    packed-switch v0, :pswitch_data_0

    .line 84315
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84316
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    goto :goto_0

    .line 84317
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84318
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 84319
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v3

    .line 84320
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v4

    .line 84321
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/hC;->A0G(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 84322
    goto :goto_1

    .line 84323
    :pswitch_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84324
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    .line 84325
    sget-object v2, Lcom/facebook/ads/redexgen/X/hC;->A0M:[Ljava/lang/String;

    const-string v1, "4tObUcmoIw93Quo4uXvWt9YCbUPkknut"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 84326
    invoke-direct {p0, v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/hC;->A0H(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 84327
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 84328
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/hC;->A0I(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 84329
    goto :goto_1

    .line 84330
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/hC;->A0J(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/MediaView;)V

    .line 84331
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rm;->A01(Z)V

    .line 84332
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isVideoContent()Z
    .locals 2

    .line 84333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABl()V

    .line 84334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A0B:Lcom/facebook/ads/redexgen/X/Rv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Rv;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 84335
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rm;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 84336
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hC;->A0A:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 84337
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 84338
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rm;->onAttachedToWindow()V

    .line 84339
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A09()V

    .line 84340
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 84341
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rm;->onDetachedFromWindow()V

    .line 84342
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A08()V

    .line 84343
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 84344
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rm;->onWindowFocusChanged(Z)V

    .line 84345
    if-eqz p1, :cond_0

    .line 84346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A09()V

    .line 84347
    :goto_0
    return-void

    .line 84348
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hC;->A08()V

    goto :goto_0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 3

    .line 84349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v2

    .line 84350
    .local v0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    .line 84351
    .local v1, "currentHeight":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 84352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 84353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 84356
    :goto_0
    return-void

    .line 84357
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 84358
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hC;->A08:Lcom/facebook/ads/MediaViewListener;

    .line 84359
    if-nez p1, :cond_0

    .line 84360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rz;

    .line 84361
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/Yv;)V

    .line 84362
    return-void

    .line 84363
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rz;

    new-instance v0, Lcom/facebook/ads/redexgen/X/hE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hE;-><init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/MediaViewListener;)V

    .line 84364
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/Yv;)V

    .line 84365
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 3

    .line 84366
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0K:Z

    if-nez v0, :cond_1

    .line 84367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eqz v0, :cond_0

    .line 84368
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 84369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 84370
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 84371
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05(Lcom/facebook/ads/redexgen/X/VA;)V

    .line 84372
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 84373
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84374
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A07:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hC;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/hC;->A0D(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 84377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A09:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hC;->A0J:Z

    .line 84378
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YB;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 84379
    return-void

    .line 84380
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hC;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
