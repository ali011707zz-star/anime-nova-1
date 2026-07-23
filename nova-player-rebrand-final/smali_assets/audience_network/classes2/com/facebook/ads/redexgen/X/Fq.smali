.class public final Lcom/facebook/ads/redexgen/X/Fq;
.super Lcom/facebook/ads/redexgen/X/RK;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yo;


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ng;

.field public A01:Lcom/facebook/ads/redexgen/X/fo;

.field public A02:Lcom/facebook/ads/redexgen/X/fp;

.field public A03:Lcom/facebook/ads/redexgen/X/fp;

.field public final A04:I

.field public final A05:Landroid/util/SparseBooleanArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;

.field public final A07:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 741
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "biNTtjxa0xULALtZEUOcP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rMVpYr4hwZgX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0rebd1hOaNR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "snwXdVXwO66aPvNuuMD2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jxkMgVVp1g5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dcah1JX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/fp;ILcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 0

    .line 36361
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Landroid/view/View;)V

    .line 36362
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Fq;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 36363
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    .line 36364
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:Landroid/util/SparseBooleanArray;

    .line 36365
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:Lcom/facebook/ads/redexgen/X/fp;

    .line 36366
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    .line 36367
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    .line 36368
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Fq;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 36369
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/Ng;
    .locals 0

    .line 36370
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 36371
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A06:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 36372
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Fq;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 36373
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V
    .locals 9

    .line 36374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36375
    return-void

    .line 36376
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    if-eqz v0, :cond_2

    .line 36377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36378
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A08:[Ljava/lang/String;

    const-string v1, "sEemyGdXpNnP2WRBMWcD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kawPFcVLuq3VyedHvbBIc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 36379
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v7

    .line 36380
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/Fs;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fs;-><init>(Lcom/facebook/ads/redexgen/X/Fq;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Y2;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:Lcom/facebook/ads/redexgen/X/fo;

    .line 36381
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A06:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    .line 36382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0Y(Z)V

    .line 36383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 36384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 36385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(Lcom/facebook/ads/redexgen/X/Fq;Lcom/facebook/ads/redexgen/X/e5;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/cq;)V

    .line 36386
    return-void
.end method


# virtual methods
.method public final A0p(Lcom/facebook/ads/redexgen/X/e5;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;III)V
    .locals 7

    .line 36387
    move-object v5, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v3

    .line 36388
    .local v2, "position":I
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    const v1, -0x5f000010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->setTag(ILjava/lang/Object;)V

    .line 36389
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Jg;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/e5;)V

    .line 36390
    const/4 v0, -0x2

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 36391
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v3, :cond_1

    move v6, p8

    .line 36392
    .local v4, "leftMargin":I
    :goto_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    add-int/lit8 v0, v0, -0x1

    if-lt v3, v0, :cond_0

    .line 36393
    .local v6, "rightMargin":I
    :goto_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36394
    :cond_0
    move p8, p7

    goto :goto_1

    .line 36395
    :cond_1
    move v6, p7

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A08:[Ljava/lang/String;

    const-string v1, "ng4t5bAKqCWK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "n9xBZs9SEWUc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v6, v3, p8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36396
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v3

    .line 36397
    .local p0, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v2

    .line 36398
    .local p1, "videoUrl":Ljava/lang/String;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->setIsVideo(Z)V

    .line 36399
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A1V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36400
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6M;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 36401
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/Sx;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->setVideoUrl(Ljava/lang/String;)V

    .line 36402
    :goto_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/6M;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36403
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A03()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->setCTAInfo(Lcom/facebook/ads/redexgen/X/Nc;Ljava/util/Map;)V

    .line 36404
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/e5;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->A1W(Ljava/util/Map;)V

    .line 36405
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/Fq;->A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V

    .line 36406
    return-void

    .line 36407
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6M;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final A0q(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 0

    .line 36408
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:Lcom/facebook/ads/redexgen/X/fp;

    .line 36409
    return-void
.end method

.method public final AJF()V
    .locals 1

    .line 36410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jg;->A1Q()V

    .line 36411
    return-void
.end method
