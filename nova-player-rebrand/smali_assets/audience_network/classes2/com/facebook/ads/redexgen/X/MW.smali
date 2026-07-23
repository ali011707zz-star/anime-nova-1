.class public final Lcom/facebook/ads/redexgen/X/MW;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mb;,
        Lcom/facebook/ads/redexgen/X/Ma;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;

.field public static final A0X:I


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Re;

.field public A02:Lcom/facebook/ads/redexgen/X/XO;

.field public A03:Lcom/facebook/ads/redexgen/X/a4;

.field public A04:Lcom/facebook/ads/redexgen/X/aJ;

.field public A05:Lcom/facebook/ads/redexgen/X/aN;

.field public A06:Lcom/facebook/ads/redexgen/X/bR;

.field public A07:Lcom/facebook/ads/redexgen/X/Kr;

.field public A08:Lcom/facebook/ads/redexgen/X/eM;

.field public A09:Lcom/facebook/ads/redexgen/X/eS;

.field public A0A:Lcom/facebook/ads/redexgen/X/ea;

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public final A0F:Landroid/os/Handler;

.field public final A0G:Lcom/facebook/ads/redexgen/X/jd;

.field public final A0H:Lcom/facebook/ads/redexgen/X/No;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Rk;

.field public final A0J:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0K:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0L:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0M:Lcom/facebook/ads/redexgen/X/XO;

.field public final A0N:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0O:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0P:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/eI;

.field public final A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0S:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0T:Z

.field public final A0U:Lcom/facebook/ads/redexgen/X/Yb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1394
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "K2KQx5j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "I1DdEcIQOKACt5VfynDO8RkkSmVrIdSu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CrPvtz5bwgp8q96Y41ywgNmdDqzXYyT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BcZqlHBP86U0O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mAAXLn1achaKS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KDsASou"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qHjTnlroNJSmFEFt4pVmvH8neAK9EJVy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ok9QX18270ZP2OGfEK6N7HjWUQBUEH7u"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MW;->A0P()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A03:I

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0X:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/ZU;)V
    .locals 10

    .line 51815
    move-object v2, p0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51816
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0C:Z

    .line 51817
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0B:Z

    .line 51818
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0F:Landroid/os/Handler;

    .line 51819
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51820
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0D:Z

    .line 51821
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0S:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51822
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0I:Lcom/facebook/ads/redexgen/X/Rk;

    .line 51823
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    .line 51824
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    .line 51825
    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    .line 51826
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 51827
    iput-object p5, v2, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 51828
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    .line 51829
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    .line 51830
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ea;

    move-object/from16 v4, p6

    invoke-direct {v0, p1, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/ea;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0A:Lcom/facebook/ads/redexgen/X/ea;

    .line 51831
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 51832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0C()I

    move-result v4

    const/4 v3, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/Mm;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0M:Lcom/facebook/ads/redexgen/X/XO;

    .line 51833
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1v()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0T:Z

    .line 51834
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/MW;->setBackgroundColor(I)V

    .line 51835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A00:I

    .line 51836
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0N:Lcom/facebook/ads/redexgen/X/Xx;

    .line 51837
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MW;->A0N:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A03:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 51838
    new-instance v8, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v8, v2, v3}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/Mm;)V

    .line 51839
    .local p7, "playableAdsViewListener":Lcom/facebook/ads/redexgen/X/Ma;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 51840
    .local v7, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A8l()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x24

    const/16 v1, 0x9

    const/16 v0, 0x7c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51841
    new-instance v3, Lcom/facebook/ads/redexgen/X/eI;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/eI;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/No;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/eG;Ljava/util/Map;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 51842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A04()Lcom/facebook/ads/redexgen/X/PU;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    .line 51843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A06()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    .line 51844
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51845
    .local v8, "anListenerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0M()V

    .line 51847
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51848
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0b()V

    .line 51849
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/No;
    .locals 0

    .line 51850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 51851
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 51852
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 51853
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/PU;
    .locals 6

    .line 51854
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x4

    new-instance v5, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V

    .line 51855
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    new-instance v0, Lcom/facebook/ads/redexgen/X/NB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NB;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/PU;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 51856
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51857
    .local v1, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0N:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51858
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51859
    return-object v5
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/ZU;
    .locals 0

    .line 51860
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    return-object p0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 14

    .line 51861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51862
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "DwrRGPH"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "aRDWSvq"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/eI;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 51863
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51864
    .end local v0
    .end local v2
    :cond_1
    return-object v2

    .line 51865
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v8

    .line 51866
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/Na;
    new-instance v5, Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    .line 51867
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7M()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 51868
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 51869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 51870
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 51871
    .local v2, "button":Lcom/facebook/ads/redexgen/X/Kr;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 51872
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51873
    invoke-virtual {v5, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 51874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bb;->setText(Ljava/lang/String;)V

    .line 51875
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/bb;->A0D()V

    .line 51876
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setTextSize(F)V

    .line 51877
    sget v4, Lcom/facebook/ads/redexgen/X/XV;->A0D:I

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v5, v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setPadding(IIII)V

    .line 51878
    const v1, -0xf2a82e

    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0X:I

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0P(Landroid/view/View;II)V

    .line 51879
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setElevation(F)V

    .line 51880
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Kr;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 51881
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Kr;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 51882
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51883
    return-object v5
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/eI;
    .locals 0

    .line 51884
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/eS;
    .locals 0

    .line 51885
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A09:Lcom/facebook/ads/redexgen/X/eS;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51886
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51887
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0S:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A0C()V
    .locals 5

    .line 51888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 51889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0D:Z

    .line 51890
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0Y:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 51891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AFE()V

    .line 51892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1H(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 51893
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0T:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "k4geMuTXC1h9ucfhhM9HvzcpXwlG9hvy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    .line 51894
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0N()V

    .line 51895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0A:Lcom/facebook/ads/redexgen/X/ea;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ea;->A06()V

    .line 51897
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    .line 51898
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A6l()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/4K;-><init>(II)V

    .line 51899
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 51900
    :cond_0
    const/16 v2, 0x2d

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0V(ZLjava/lang/String;)V

    .line 51901
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D()V
    .locals 4

    .line 51902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0E:Z

    .line 51903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0A:Lcom/facebook/ads/redexgen/X/ea;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ea;->A06()V

    .line 51905
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    .line 51906
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A6l()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4K;-><init>(II)V

    .line 51907
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    .line 51908
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 5

    .line 51909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    if-nez v0, :cond_0

    .line 51910
    return-void

    .line 51911
    :cond_0
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51912
    .local v0, "adChoiceViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51913
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51914
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/a4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51916
    return-void
.end method

.method private A0F()V
    .locals 5

    .line 51917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    if-nez v0, :cond_0

    .line 51918
    return-void

    .line 51919
    :cond_0
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51920
    .local v0, "creditLineViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51921
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51922
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aJ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51924
    return-void
.end method

.method private A0G()V
    .locals 5

    .line 51925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_0

    .line 51926
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51927
    .local v0, "creditLineStaticViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x14

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51928
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51929
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 51930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51931
    .end local v0    # "creditLineStaticViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 5

    .line 51932
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/a4;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a4;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    .line 51933
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0E()V

    .line 51934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51935
    return-void
.end method

.method private A0I()V
    .locals 1

    .line 51936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51937
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0L()V

    .line 51938
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51939
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0K()V

    .line 51940
    :goto_0
    return-void

    .line 51941
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0H()V

    goto :goto_0
.end method

.method private A0J()V
    .locals 7

    .line 51942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    if-nez v0, :cond_0

    .line 51943
    return-void

    .line 51944
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->setClipChildren(Z)V

    .line 51945
    new-instance v1, Lcom/facebook/ads/redexgen/X/bR;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 51946
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0B()I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 51947
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0Z()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bR;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Kr;IZ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    .line 51948
    iget v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0Q(I)V

    .line 51949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51950
    return-void
.end method

.method private A0K()V
    .locals 8

    .line 51951
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v6, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 51952
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aL;->A00(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aP;

    move-result-object v7

    .line 51953
    const/4 v2, 0x0

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/aO;->A01(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/aP;)Lcom/facebook/ads/redexgen/X/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    .line 51954
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0F()V

    .line 51955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51956
    return-void
.end method

.method private A0L()V
    .locals 3

    .line 51957
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/aM;->A03:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 51958
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    .line 51959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    const v0, -0x7fe3d4cd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aN;->setBackgroundColor(I)V

    .line 51960
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0G()V

    .line 51961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51962
    return-void
.end method

.method private A0M()V
    .locals 5

    .line 51963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setVisibility(I)V

    .line 51964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 51965
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51966
    .local v0, "playableAdsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eI;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51967
    iget v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0R(I)V

    .line 51968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;)V

    .line 51970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51971
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0J()V

    .line 51972
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0I()V

    .line 51973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0Y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 51974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "XlBnGmRHSm8FPKQHD6bIB4zK3mUoDq5y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 51975
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/MW;->setVisibility(I)V

    .line 51976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->A0C()V

    .line 51977
    :goto_0
    return-void

    .line 51978
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/eI;->setVisibility(I)V

    goto :goto_0
.end method

.method private A0N()V
    .locals 12

    .line 51979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 51980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 51981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2U()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A04(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 51983
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Lcom/facebook/ads/redexgen/X/aN;

    if-eqz v0, :cond_1

    .line 51984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A06(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    .line 51985
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0z:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 51986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_2

    .line 51987
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->setText(Ljava/lang/String;)V

    .line 51988
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_3

    .line 51989
    new-instance v5, Lcom/facebook/ads/redexgen/X/eS;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/MW;->A0F:Landroid/os/Handler;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/eS;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Kr;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A09:Lcom/facebook/ads/redexgen/X/eS;

    .line 51990
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51991
    .local v0, "endCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A09:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0W()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51992
    new-array v1, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 51993
    .end local v0    # "endCardParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v0
    .end local v3
    .end local v4
    :goto_1
    new-array v1, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 51994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51995
    return-void

    .line 51996
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eM;

    invoke-direct {v0, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/eM;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A08:Lcom/facebook/ads/redexgen/X/eM;

    .line 51997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A08:Lcom/facebook/ads/redexgen/X/eM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    .line 51998
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eM;->A03(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/util/Pair;

    move-result-object v5

    .line 51999
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 52000
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 52001
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 52002
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52003
    .local v3, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v1

    .line 52005
    .local v4, "forceViewTime":J
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_4

    .line 52006
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A0F:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z9;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 52007
    :cond_4
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "dsmu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto/16 :goto_1

    .line 52008
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/aM;->A02:Lcom/facebook/ads/redexgen/X/aM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/aL;->A05(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aM;)V

    goto/16 :goto_0
.end method

.method private A0O()V
    .locals 5

    .line 52009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    new-instance v4, Lcom/facebook/ads/redexgen/X/dw;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/dw;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 52010
    .local v0, "splashScreenView":Lcom/facebook/ads/redexgen/X/dw;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52011
    .local v1, "splashScreenParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52012
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0F:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Z8;

    invoke-direct {v2, p0, v4}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/dw;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 52013
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0D()I

    move-result v0

    int-to-long v0, v0

    .line 52014
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52015
    return-void
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x3e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/MW;->A0V:[B

    return-void

    :array_0
    .array-data 1
        -0x51t
        -0x48t
        -0x4bt
        -0x51t
        -0x49t
        -0x55t
        -0x45t
        -0x42t
        -0x4bt
        -0x4dt
        -0x4bt
        -0x46t
        -0x63t
        -0x5at
        -0x5dt
        -0x63t
        -0x5bt
        -0x67t
        -0x53t
        -0x57t
        -0x51t
        -0x54t
        -0x63t
        -0x61t
        -0x7t
        -0x14t
        -0x1t
        -0xct
        0x1t
        -0x10t
        -0x16t
        -0x12t
        -0x9t
        -0xct
        -0x12t
        -0xat
        0x18t
        0x14t
        0x9t
        0xbt
        0xdt
        0x15t
        0xdt
        0x16t
        0x1ct
        -0x12t
        -0x1at
        -0x1ct
        -0x15t
        0x3t
        -0xft
        -0x12t
        0x2t
        -0xbt
        -0xft
        0x3t
        -0x15t
        -0x11t
        -0x8t
        -0xbt
        -0x11t
        -0x9t
    .end array-data
.end method

.method private A0Q(I)V
    .locals 5

    .line 52016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    if-nez v0, :cond_0

    .line 52017
    return-void

    .line 52018
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bR;->A0I(I)V

    .line 52019
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52020
    .local v0, "bannerOverlayAnimationViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 52021
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "3KWOojhtbTrcKNejqW7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52022
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52023
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/bR;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52025
    return-void

    .line 52026
    :cond_1
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0N:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R(I)V
    .locals 5

    .line 52027
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 52028
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eI;->setPadding(IIII)V

    .line 52029
    :goto_0
    return-void

    .line 52030
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "dtYS90IKRfB1L"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eI;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0

    .line 52031
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0N()V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0

    .line 52032
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0D()V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/MW;ZLjava/lang/String;)V
    .locals 0

    .line 52033
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MW;->A0V(ZLjava/lang/String;)V

    return-void
.end method

.method private A0V(ZLjava/lang/String;)V
    .locals 12

    .line 52034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0C:Z

    .line 52035
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52036
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const/16 v2, 0x31

    const/16 v1, 0xd

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52037
    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52038
    new-instance v4, Lcom/facebook/ads/redexgen/X/bV;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    .line 52039
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7M()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 52040
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 52041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 52042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 52043
    .local v1, "helper":Lcom/facebook/ads/redexgen/X/bV;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 52044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    .line 52045
    invoke-virtual {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/bV;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 52046
    return-void

    .line 52047
    :cond_0
    const/16 v2, 0x18

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static synthetic A0W(Lcom/facebook/ads/redexgen/X/MW;)Z
    .locals 0

    .line 52048
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0E:Z

    return p0
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/MW;)Z
    .locals 0

    .line 52049
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0T:Z

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/MW;)Z
    .locals 0

    .line 52050
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0D:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/MW;)Z
    .locals 0

    .line 52051
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0C:Z

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/MW;)Z
    .locals 0

    .line 52052
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0B:Z

    return p0
.end method


# virtual methods
.method public final A0b()V
    .locals 3

    .line 52053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0Y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 52054
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52055
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/MW;->setVisibility(I)V

    .line 52056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eI;->A0E(I)V

    .line 52057
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/MW;->AFi(Z)V

    .line 52058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52059
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0N()V

    .line 52060
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52061
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0O()V

    .line 52062
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    if-eqz v0, :cond_3

    .line 52063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bR;->A0E()V

    .line 52064
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setVisibility(I)V

    .line 52065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/XO;

    if-nez v0, :cond_4

    .line 52066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 52067
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Mc;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Mc;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/XO;

    .line 52068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 52069
    :cond_4
    return-void

    .line 52070
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->A0C()V

    .line 52071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eI;->setVisibility(I)V

    .line 52072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0M:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    goto :goto_0
.end method

.method public final synthetic A0c()V
    .locals 2

    .line 52073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    return-void
.end method

.method public final synthetic A0d(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 3

    .line 52074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0A()I

    move-result v0

    if-lez v0, :cond_0

    .line 52075
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 52076
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0C()V

    .line 52077
    :goto_0
    return-void

    .line 52078
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0H:Lcom/facebook/ads/redexgen/X/No;

    .line 52079
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0V()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52080
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52081
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 52082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0N()V

    goto :goto_0

    .line 52083
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 52084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0J:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 52085
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic A0e(Lcom/facebook/ads/redexgen/X/dw;)V
    .locals 0

    .line 52086
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/MW;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 1

    .line 52087
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Lcom/facebook/ads/redexgen/X/Re;

    .line 52088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0I:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 52089
    return-void
.end method

.method public final AFA(Z)V
    .locals 1

    .line 52090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0M:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 52091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0B:Z

    .line 52092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    if-eqz v0, :cond_0

    .line 52093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bR;->A0G()V

    .line 52094
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_2

    .line 52095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0P()V

    .line 52096
    :cond_1
    :goto_0
    return-void

    .line 52097
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    if-eqz v0, :cond_1

    .line 52098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a4;->A05()V

    goto :goto_0
.end method

.method public final AFi(Z)V
    .locals 1

    .line 52099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0M:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 52100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    if-eqz v0, :cond_0

    .line 52101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bR;->A0H()V

    .line 52102
    :cond_0
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 52103
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 3

    .line 52104
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A09(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 52105
    const v0, 0x3858748a

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52106
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A0L:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 52107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A0O:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0P:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 52108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 52109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52110
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0R(I)V

    .line 52111
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0Q(I)V

    .line 52112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A09:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 52113
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A09:Lcom/facebook/ads/redexgen/X/eS;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->A0a(I)V

    .line 52114
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 52115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0N:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xx;->A03()V

    .line 52116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Lcom/facebook/ads/redexgen/X/Re;

    if-eqz v0, :cond_0

    .line 52117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Lcom/facebook/ads/redexgen/X/Re;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0I:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0B(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 52118
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    if-eqz v0, :cond_1

    .line 52119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bR;->A0F()V

    .line 52120
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    if-eqz v0, :cond_3

    .line 52121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52122
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MW;->A0K:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0G:Lcom/facebook/ads/redexgen/X/jd;

    .line 52123
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 52124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    .line 52125
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 52126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 52127
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 52128
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0Q:Lcom/facebook/ads/redexgen/X/eI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eI;->A0D()V

    .line 52129
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_5

    .line 52130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aJ;->A0O()V

    .line 52131
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0M:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A06()Z

    .line 52132
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52133
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    if-eqz v0, :cond_4

    .line 52134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Lcom/facebook/ads/redexgen/X/a4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a4;->A04()V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A0W:[Ljava/lang/String;

    const-string v1, "SgQ0Vce"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "JIQdJaY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 52135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A0F:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52136
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 52137
    return-void
.end method
