.class public final Lcom/facebook/ads/redexgen/X/Kx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Yb;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Lcom/facebook/ads/redexgen/X/Kr;

.field public A07:Ljava/lang/Integer;

.field public A08:Z

.field public A09:Z

.field public A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kx;->A01()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 1

    .line 48842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A0A:Z

    .line 48844
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A09:Z

    .line 48845
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A08:Z

    .line 48846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    .line 48847
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:I

    .line 48848
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Kx;->A00:I

    .line 48849
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Kx;->A02:I

    .line 48850
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Kx;->A05:Ljava/lang/String;

    .line 48851
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Kx;->A04:Ljava/lang/String;

    .line 48852
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    .line 48853
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Kx;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    .line 48854
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kx;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kx;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x66t
        0x70t
        0x76t
        0x66t
        0x48t
        0x75t
        0x61t
        0x60t
        0x7bt
        0x77t
        0x78t
        0x7dt
        0x77t
        0x7ft
    .end array-data
.end method

.method private declared-synchronized A02()V
    .locals 1

    monitor-enter p0

    .line 48855
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A08:Z

    if-eqz v0, :cond_0

    .line 48856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kx;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48857
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kx;
    :cond_0
    monitor-exit p0

    return-void

    .line 48858
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Kx;)V
    .locals 0

    .line 48859
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kx;->A02()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .locals 4

    monitor-enter p0

    .line 48860
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A09:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48861
    monitor-exit p0

    return-void

    .line 48862
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A09:Z

    .line 48863
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    if-eqz v0, :cond_2

    .line 48864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 48865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 48866
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 48867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0A()V

    .line 48868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 48869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 48870
    .end local v3
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->getColorInfo()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48871
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bb;->getColorInfo()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48872
    :cond_2
    monitor-exit p0

    return-void

    .line 48873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ADS()V
    .locals 4

    monitor-enter p0

    .line 48874
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A09:Z

    if-nez v0, :cond_0

    .line 48875
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kx;->A06:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v2, 0x6

    const/16 v1, 0x9

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 48876
    .end local v2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kx;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48877
    monitor-exit p0

    return-void

    .line 48878
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFV(F)V
    .locals 6

    monitor-enter p0

    .line 48879
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A09:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 48880
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A01:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    .line 48881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A0A:Z

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-nez v0, :cond_2

    .line 48882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    .line 48883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bN;-><init>(Lcom/facebook/ads/redexgen/X/Kx;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 48884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0B()V

    .line 48885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LB;-><init>(Lcom/facebook/ads/redexgen/X/Kx;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 48886
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Kx;->A0A:Z

    .line 48887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    .line 48888
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 48889
    .end local v5
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 48890
    :cond_2
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A02:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    .line 48891
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A08:Z

    if-nez v0, :cond_4

    .line 48892
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Kx;->A08:Z

    .line 48893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A07:Ljava/lang/Integer;

    .line 48894
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 48895
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 48896
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Kx;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kx;->A00(III)Ljava/lang/String;

    move-result-object v0

    float-to-double v1, p1

    .line 48897
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48898
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 48899
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A0a:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 48900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_1

    .line 48901
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0

    .line 48902
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kx;->A03:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kx;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48903
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    .line 48904
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 48905
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kx;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
