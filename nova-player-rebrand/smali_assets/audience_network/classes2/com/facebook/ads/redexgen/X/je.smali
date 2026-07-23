.class public abstract Lcom/facebook/ads/redexgen/X/je;
.super Lcom/facebook/ads/redexgen/X/Qq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NM;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Qq<",
        "Lcom/facebook/ads/redexgen/X/PX;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/NM;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/fo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3129
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BofGdT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cb8B81bPHxSAbCDzy4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dzB1VPy83al1mBxHBTo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/je;->A05:[Ljava/lang/String;

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/je;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UK;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/gi;",
            ")V"
        }
    .end annotation

    .line 88566
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qq;-><init>()V

    .line 88567
    new-instance v0, Lcom/facebook/ads/redexgen/X/jg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/jg;-><init>(Lcom/facebook/ads/redexgen/X/je;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A04:Lcom/facebook/ads/redexgen/X/fo;

    .line 88568
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/je;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 88569
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0x;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/je;->A02:I

    .line 88570
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    .line 88571
    return-void
.end method

.method private A01(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 6

    .line 88572
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 88573
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/je;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v3, v3, 0x2

    .line 88574
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/je;->A05:[Ljava/lang/String;

    const-string v1, "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gQBYn2ao1l5plthpQQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lt p1, v5, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/je;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 88575
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 88576
    return-object v4

    .line 88577
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/je;->A02:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/je;)Lcom/facebook/ads/redexgen/X/NM;
    .locals 0

    .line 88578
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/je;->A00:Lcom/facebook/ads/redexgen/X/NM;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/je;)Lcom/facebook/ads/redexgen/X/fo;
    .locals 0

    .line 88579
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/je;->A04:Lcom/facebook/ads/redexgen/X/fo;

    return-object p0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 88580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final A0O(Landroid/widget/ImageView;I)V
    .locals 4

    .line 88581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/je;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/UK;

    .line 88582
    .local v0, "childAd":Lcom/facebook/ads/redexgen/X/UK;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A18()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v2

    .line 88583
    .local v1, "coverImage":Lcom/facebook/ads/redexgen/X/Vb;
    if-eqz v2, :cond_0

    .line 88584
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/je;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 88585
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    .line 88586
    .local v2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    new-instance v0, Lcom/facebook/ads/redexgen/X/jf;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/jf;-><init>(Lcom/facebook/ads/redexgen/X/je;ILcom/facebook/ads/redexgen/X/UK;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    .line 88587
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 88588
    .end local v2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    :cond_0
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/NM;)V
    .locals 0

    .line 88589
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/je;->A00:Lcom/facebook/ads/redexgen/X/NM;

    .line 88590
    return-void
.end method

.method public A0Q(Lcom/facebook/ads/redexgen/X/PX;I)V
    .locals 2

    .line 88591
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PX;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 88592
    .local v0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/je;->A01(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88593
    return-void
.end method
