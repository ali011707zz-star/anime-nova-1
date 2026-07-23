.class public final Lcom/facebook/ads/redexgen/X/ZX;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/adhide/AdHideOverlayView$ShowOverlayListener;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Landroid/widget/ScrollView;

.field public final A02:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZX;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 75569
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75570
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    .line 75571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB1()V

    .line 75572
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZX;->A03()V

    .line 75573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZX;->A02()V

    .line 75574
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZX;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 0

    .line 75575
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0I(Landroid/view/View;)V

    .line 75576
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 75577
    return-void
.end method

.method private A02()V
    .locals 3

    .line 75578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 75579
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75580
    .local v0, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZX;->getAdHideView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 75583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 75584
    return-void
.end method

.method private A03()V
    .locals 5

    .line 75585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    .line 75586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 75587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 75588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    .line 75589
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 75590
    const/4 v0, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75591
    .local v0, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A01:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75593
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZX;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x5et
        0x53t
        0x16t
        0x77t
        0x52t
        0x16t
        0x5ft
        0x45t
        0x16t
        0x5et
        0x5ft
        0x52t
        0x52t
        0x53t
        0x58t
        0x5et
        0x65t
        0x6ft
        0x64t
    .end array-data
.end method

.method private getAdHideView()Landroid/widget/LinearLayout;
    .locals 9

    .line 75598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75599
    .local v0, "contentLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75601
    .local v2, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0a(Landroid/widget/TextView;ZI)V

    .line 75602
    const v0, -0xe3e1df

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75603
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZX;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75604
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 75605
    const/4 v5, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75606
    .local v3, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 75608
    .local v5, "undoAdHideView":Lcom/facebook/ads/redexgen/X/Zh;
    const/16 v2, 0x10

    const/4 v1, 0x4

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZX;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YM;)V

    .line 75609
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75610
    .local v4, "undoAdHideParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75611
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZV;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/ZV;-><init>(Lcom/facebook/ads/redexgen/X/ZX;Lcom/facebook/ads/redexgen/X/Zh;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Zh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75612
    invoke-virtual {v7, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75613
    invoke-virtual {v7, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75614
    return-object v7
.end method


# virtual methods
.method public final synthetic A05(Lcom/facebook/ads/redexgen/X/Zh;Landroid/view/View;)V
    .locals 1

    .line 75594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A02:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB2()V

    .line 75595
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zh;->A01()V

    .line 75596
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZX;->A01()V

    .line 75597
    return-void
.end method
