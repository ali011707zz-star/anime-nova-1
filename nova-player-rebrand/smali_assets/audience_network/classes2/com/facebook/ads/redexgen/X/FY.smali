.class public final Lcom/facebook/ads/redexgen/X/FY;
.super Lcom/facebook/ads/redexgen/X/RK;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yo;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ng;

.field public A01:Lcom/facebook/ads/redexgen/X/fo;

.field public A02:Lcom/facebook/ads/redexgen/X/fp;

.field public A03:Lcom/facebook/ads/redexgen/X/fp;

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:Landroid/util/SparseBooleanArray;

.field public final A09:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/67;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/67;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/fp;IIIILcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 0

    .line 35882
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Landroid/view/View;)V

    .line 35883
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/FY;->A09:Lcom/facebook/ads/redexgen/X/gi;

    .line 35884
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    .line 35885
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FY;->A08:Landroid/util/SparseBooleanArray;

    .line 35886
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:Lcom/facebook/ads/redexgen/X/fp;

    .line 35887
    iput p4, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    .line 35888
    iput p5, p0, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    .line 35889
    iput p6, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    .line 35890
    iput p7, p0, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    .line 35891
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/FY;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    .line 35892
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FY;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 35893
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FY;->A08:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/Ng;
    .locals 0

    .line 35894
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FY;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 35895
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FY;->A09:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 35896
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FY;->A02:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 35897
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V
    .locals 9

    .line 35898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A08:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35899
    return-void

    .line 35900
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    if-eqz v0, :cond_1

    .line 35901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 35902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 35903
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v7

    .line 35904
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/Fc;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fc;-><init>(Lcom/facebook/ads/redexgen/X/FY;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Y2;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/fo;

    .line 35905
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FY;->A09:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 35906
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0Y(Z)V

    .line 35907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 35908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 35909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/e5;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/cq;)V

    .line 35910
    return-void
.end method


# virtual methods
.method public final A0p()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 1

    .line 35911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    return-object v0
.end method

.method public final A0q(Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;)V
    .locals 5

    .line 35912
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v4

    .line 35913
    .local v0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    const v1, -0x5f000010

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setTag(ILjava/lang/Object;)V

    .line 35914
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A04:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35915
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    .line 35916
    .local v2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A07:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A05:I

    .line 35917
    .local v3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35918
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v4

    .line 35919
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v3

    .line 35920
    .local p0, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setIsVideo(Z)V

    .line 35921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/67;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 35923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setVideoUrl(Ljava/lang/String;)V

    .line 35924
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/67;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35925
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    .line 35926
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0G()Ljava/lang/String;

    move-result-object v1

    .line 35927
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A04()Ljava/lang/String;

    move-result-object v0

    .line 35928
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 35929
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->setCTAInfo(Lcom/facebook/ads/redexgen/X/Nc;Ljava/util/Map;)V

    .line 35930
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->A1Y(Ljava/util/Map;)V

    .line 35931
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/FY;->A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V

    .line 35932
    return-void

    .line 35933
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/67;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 35934
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    goto/16 :goto_1

    .line 35935
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/FY;->A06:I

    goto/16 :goto_0
.end method

.method public final AJF()V
    .locals 1

    .line 35936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FY;->A0A:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jg;->A1Q()V

    .line 35937
    return-void
.end method
