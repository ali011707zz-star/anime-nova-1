.class public Lcom/facebook/ads/redexgen/X/PZ;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# static fields
.field public static A0G:[B

.field public static final A0H:Ljava/lang/String;

.field public static final A0I:I


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Rk;

.field public final A07:Landroid/widget/LinearLayout;

.field public final A08:Lcom/facebook/ads/redexgen/X/Re;

.field public final A09:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0C:Lcom/facebook/ads/redexgen/X/ah;

.field public final A0D:Lcom/facebook/ads/redexgen/X/aq;

.field public final A0E:Lcom/facebook/ads/redexgen/X/M3;

.field public final A0F:Lcom/facebook/ads/redexgen/X/av;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1545
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PZ;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/PZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PZ;->A0H:Ljava/lang/String;

    .line 1546
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sput v0, Lcom/facebook/ads/redexgen/X/PZ;->A0I:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Re;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Z)V
    .locals 3

    .line 57900
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57901
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pc;-><init>(Lcom/facebook/ads/redexgen/X/PZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A06:Lcom/facebook/ads/redexgen/X/Rk;

    .line 57902
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    .line 57903
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:J

    .line 57904
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A03:Z

    .line 57905
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Re;

    .line 57906
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0A:Lcom/facebook/ads/redexgen/X/VA;

    .line 57907
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    .line 57908
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/gi;

    .line 57909
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57910
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A9v()V

    .line 57911
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PZ;->A0F()Lcom/facebook/ads/redexgen/X/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0D:Lcom/facebook/ads/redexgen/X/aq;

    .line 57912
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Uq;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 57913
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0D:Lcom/facebook/ads/redexgen/X/aq;

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 57914
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57915
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/PZ;->A0C(Z)Lcom/facebook/ads/redexgen/X/av;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    .line 57916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    .line 57917
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 57918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pb;-><init>(Lcom/facebook/ads/redexgen/X/PZ;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/av;->setListener(Lcom/facebook/ads/redexgen/X/au;)V

    .line 57919
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/av;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ar;)V

    .line 57920
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v0, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    .line 57921
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PZ;->A0G()V

    .line 57922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A06:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 57923
    return-void

    .line 57924
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0D:Lcom/facebook/ads/redexgen/X/aq;

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/aq;)V

    goto :goto_0
.end method

.method private A0C(Z)Lcom/facebook/ads/redexgen/X/av;
    .locals 4

    .line 57925
    if-eqz p1, :cond_0

    .line 57926
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/M8;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;Z)V

    return-object v0

    .line 57927
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A09:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;)V

    return-object v0
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PZ;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0xf2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PZ;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x5at
        0x70t
        0x70t
        0x7dt
        0x70t
        0x14t
        0x3ft
        0x3dt
        0x70t
        0x13t
        0x3ft
        0x3et
        0x24t
        0x35t
        0x3et
        0x24t
        0x70t
        0x1ct
        0x3ft
        0x31t
        0x34t
        0x35t
        0x34t
        0x70t
        0x4t
        0x39t
        0x3dt
        0x35t
        0x6at
        0x70t
        0x30t
        0x1at
        0x1at
        0x17t
        0x1at
        0x76t
        0x55t
        0x5bt
        0x5et
        0x1at
        0x7ct
        0x53t
        0x54t
        0x53t
        0x49t
        0x52t
        0x1at
        0x6et
        0x53t
        0x57t
        0x5ft
        0x0t
        0x1at
        0x5ft
        0x75t
        0x75t
        0x78t
        0x75t
        0x19t
        0x3at
        0x34t
        0x31t
        0x75t
        0x6t
        0x21t
        0x34t
        0x27t
        0x21t
        0x75t
        0x1t
        0x3ct
        0x38t
        0x30t
        0x6ft
        0x75t
        0x75t
        0x5ft
        0x5ft
        0x52t
        0x5ft
        0x2dt
        0x1at
        0xct
        0xft
        0x10t
        0x11t
        0xct
        0x1at
        0x5ft
        0x3at
        0x11t
        0x1bt
        0x5ft
        0x2bt
        0x16t
        0x12t
        0x1at
        0x45t
        0x5ft
        0x6dt
        0x47t
        0x47t
        0x4at
        0x47t
        0x34t
        0x4t
        0x15t
        0x8t
        0xbt
        0xbt
        0x47t
        0x35t
        0x2t
        0x6t
        0x3t
        0x1et
        0x47t
        0x33t
        0xet
        0xat
        0x2t
        0x5dt
        0x47t
        0x57t
        0x7dt
        0x7dt
        0x70t
        0x7dt
        0xet
        0x38t
        0x2et
        0x2et
        0x34t
        0x32t
        0x33t
        0x7dt
        0x1bt
        0x34t
        0x33t
        0x34t
        0x2et
        0x35t
        0x7dt
        0x9t
        0x34t
        0x30t
        0x38t
        0x67t
        0x7dt
        0x2at
        0x1at
        0x30t
        0x30t
        0x3dt
        0x30t
        0x58t
        0x71t
        0x7et
        0x74t
        0x7ct
        0x75t
        0x62t
        0x30t
        0x44t
        0x79t
        0x7dt
        0x75t
        0x2at
        0x30t
        0x61t
        0x51t
        0x4ct
        0x54t
        0x50t
        0x46t
        0x51t
        0x3t
        0x50t
        0x46t
        0x50t
        0x50t
        0x4at
        0x4ct
        0x4dt
        0x3t
        0x47t
        0x42t
        0x57t
        0x42t
        0x3t
        0x4ft
        0x4ct
        0x44t
        0x44t
        0x46t
        0x47t
        0x3t
        0x63t
        0x3t
        0x7et
        0x7dt
        0x70t
        0x6at
        0x6bt
        0x25t
        0x7dt
        0x73t
        0x7et
        0x71t
        0x74t
        0x43t
        0x53t
        0x4et
        0x56t
        0x52t
        0x44t
        0x53t
        0x74t
        0x73t
        0x6dt
        0x55t
        0x5at
        0x5ft
        0x53t
        0x58t
        0x42t
        0x62t
        0x59t
        0x5dt
        0x53t
        0x58t
        0x25t
        0x2ct
        0x23t
        0x29t
        0x21t
        0x28t
        0x3ft
        0x19t
        0x24t
        0x20t
        0x28t
    .end array-data
.end method


# virtual methods
.method public A0F()Lcom/facebook/ads/redexgen/X/aq;
    .locals 1

    .line 57928
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pa;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/PZ;)V

    return-object v0
.end method

.method public A0G()V
    .locals 8

    .line 57929
    const/4 v4, -0x1

    const/4 v7, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57930
    .local v0, "controlsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57931
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57932
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57933
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57934
    .local v2, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57935
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57937
    sget v0, Lcom/facebook/ads/redexgen/X/PZ;->A0I:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57938
    .local v1, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57939
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 57940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57941
    return-void
.end method

.method public A0H()V
    .locals 2

    .line 57942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Re;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 57943
    return-void
.end method

.method public A0I(Ljava/lang/String;)V
    .locals 0

    .line 57944
    return-void
.end method

.method public AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 7

    .line 57945
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 57946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:J

    .line 57947
    :cond_0
    const-wide/16 v1, -0x1

    const/16 v4, 0xe7

    const/16 v3, 0xb

    const/16 v0, 0x61

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0xdc

    const/16 v3, 0xb

    const/16 v0, 0x1a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xd2

    const/16 v3, 0xa

    const/16 v0, 0xd

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2

    .line 57948
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Ljava/lang/String;

    .line 57949
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:Ljava/lang/String;

    .line 57950
    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:J

    .line 57951
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Ljava/lang/String;

    .line 57952
    .local v0, "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/av;->setUrl(Ljava/lang/String;)V

    .line 57953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 57954
    return-void

    .line 57955
    :cond_1
    const/16 v2, 0xc7

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 57956
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Ljava/lang/String;

    .line 57957
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:Ljava/lang/String;

    .line 57958
    invoke-virtual {p2, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:J

    goto :goto_0
.end method

.method public final AFA(Z)V
    .locals 5

    .line 57959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->onPause()V

    .line 57960
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A03:Z

    if-eqz v0, :cond_0

    .line 57961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A03:Z

    .line 57962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->getFirstUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/aj;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/aj;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A00:J

    .line 57964
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A01(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A01:J

    .line 57965
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A03(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57966
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->getResponseEndMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A04(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->getDomContentLoadedMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A00(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57968
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->getScrollReadyMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A05(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    .line 57969
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->getLoadFinishMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A02(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v2

    .line 57970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aj;->A06(J)Lcom/facebook/ads/redexgen/X/aj;

    move-result-object v0

    .line 57971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aj;->A07()Lcom/facebook/ads/redexgen/X/ak;

    move-result-object v4

    .line 57972
    .local v0, "sessionData":Lcom/facebook/ads/redexgen/X/ak;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0A:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ak;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 57973
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa9

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x95

    const/16 v1, 0x14

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x35

    const/16 v1, 0x16

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0x18

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x63

    const/16 v1, 0x18

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A05:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x17

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x7b

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ak;->A06:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57976
    .end local v0    # "sessionData":Lcom/facebook/ads/redexgen/X/ak;
    :cond_0
    return-void
.end method

.method public final AFi(Z)V
    .locals 1

    .line 57977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->onResume()V

    .line 57978
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 3

    .line 57979
    const/16 v2, 0xd2

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PZ;->A0D(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A02:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57980
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 57981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 57982
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 57983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Re;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A06:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0B(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 57984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b4;->A03(Landroid/webkit/WebView;)V

    .line 57985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PZ;->A0E:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 57986
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 57987
    return-void
.end method
