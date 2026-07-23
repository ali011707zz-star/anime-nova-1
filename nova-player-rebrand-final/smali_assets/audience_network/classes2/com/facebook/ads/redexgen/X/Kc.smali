.class public final Lcom/facebook/ads/redexgen/X/Kc;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# static fields
.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/cJ;

.field public A02:Lcom/facebook/ads/redexgen/X/eS;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/view/View;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Landroid/widget/RelativeLayout;

.field public final A08:Lcom/facebook/ads/redexgen/X/jd;

.field public final A09:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0B:Lcom/facebook/ads/redexgen/X/LK;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0D:Z

.field public final A0E:Lcom/facebook/ads/redexgen/X/XS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 921
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CRyUSCOowkTfoe8xXMA5e17hdMg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WkFBEVgF0nyPchlhdBM9PAwmOGJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zSHiyACtWS1MQDlmmeiywmMfEBCYqg8r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "a6voQfhnzW62WB0803n3akdQXSWLA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ESev22IS7ntvGAjOW6Y11JRWDyKuDF5b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qYjSUGFL2zXSYltHWao95ysggj7pRI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zEaDWfefMQybHYLhUDvoHIQpUffGUNEN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lLaoJShXnQXOT6Cok4oNwdKWfBYo0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A0F:[Ljava/lang/String;

    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Kc;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;)V
    .locals 8

    .line 47823
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 47824
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A04:Landroid/os/Handler;

    .line 47825
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0D:Z

    .line 47826
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47827
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A03:Z

    .line 47828
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    .line 47829
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    .line 47830
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47831
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0E:Lcom/facebook/ads/redexgen/X/XS;

    .line 47832
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    .line 47833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47834
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    .line 47835
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    .line 47836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 47837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 47838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    .line 47839
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A04()V

    .line 47840
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47841
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Kc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47842
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47843
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 47844
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 47845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47846
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47847
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47848
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47849
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v5

    .line 47850
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/bF;->setInfo(Lcom/facebook/ads/redexgen/X/NY;Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 47851
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A03()V

    .line 47852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47853
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 47854
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A00:F

    .line 47855
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A00(F)Ljava/lang/String;

    move-result-object v2

    .line 47856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47857
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A04()Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0C(Lcom/facebook/ads/redexgen/X/Mt;)Ljava/lang/String;

    move-result-object v6

    .line 47858
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Lt;->AKh(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 47859
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LK;
    .locals 16

    .line 47860
    move-object/from16 v2, p0

    .line 47861
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 47862
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0M(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:F

    .line 47863
    new-instance v0, Lcom/facebook/ads/redexgen/X/bs;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Kc;->A00:F

    .line 47864
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    .line 47865
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v4

    .line 47866
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v5

    .line 47867
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v6

    .line 47868
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v7

    sget v8, Lcom/facebook/ads/redexgen/X/Kc;->A0G:I

    .line 47869
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v10

    .line 47870
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0F()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v11

    .line 47871
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v12

    .line 47872
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v13

    .line 47873
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/bs;-><init>(FLjava/lang/String;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 47874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bs;->A03()Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v1

    .line 47875
    .local v1, "adDetailsView":Lcom/facebook/ads/redexgen/X/LK;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47876
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->setChainedAdInfo(Ljava/lang/String;)V

    .line 47877
    :cond_0
    return-object v1
.end method

.method private A01()V
    .locals 7

    .line 47878
    new-instance v1, Lcom/facebook/ads/redexgen/X/cJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47879
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Kc;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/cJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    .line 47882
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0I(Z)V

    .line 47883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0C(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Kc;->addView(Landroid/view/View;)V

    .line 47884
    return-void
.end method

.method private A02()V
    .locals 9

    .line 47885
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 47886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47887
    new-instance v2, Lcom/facebook/ads/redexgen/X/eS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    .line 47889
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Kc;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47890
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/eS;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Kr;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    .line 47891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eS;->A0f(Z)V

    .line 47892
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47893
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0W()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47894
    .end local v0    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 47895
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A01()V

    goto :goto_0
.end method

.method private A03()V
    .locals 2

    .line 47896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 47897
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47898
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Kc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->setVisibility(I)V

    .line 47900
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Kc;->A05(I)V

    .line 47901
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0u(I)V

    .line 47902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->bringToFront()V

    .line 47903
    return-void
.end method

.method private A04()V
    .locals 4

    .line 47904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47905
    return-void

    .line 47906
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 47908
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0E:Lcom/facebook/ads/redexgen/X/XS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47909
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    .line 47910
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/XR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 47911
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 47912
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 47913
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 47914
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0E:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 47915
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_2

    .line 47916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bv;-><init>(Lcom/facebook/ads/redexgen/X/Kc;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47917
    :cond_1
    :goto_0
    return-void

    .line 47918
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47919
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    .line 47920
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bw;-><init>(Lcom/facebook/ads/redexgen/X/Kc;)V

    .line 47921
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A05(I)V
    .locals 2

    .line 47922
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kc;->A06(I)V

    .line 47923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Kc;->A07(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    .line 47924
    return-void
.end method

.method private A06(I)V
    .locals 7

    .line 47925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47926
    return-void

    .line 47927
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47928
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47929
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47930
    const/16 v3, 0x9

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47931
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, -0x2

    if-ne p1, v2, :cond_1

    .line 47932
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 47933
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47934
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47935
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A05:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47936
    return-void

    .line 47937
    :cond_1
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 47938
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47939
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47940
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 47941
    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private final A07(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 47942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6V;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6U;

    if-eqz v0, :cond_3

    .line 47943
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 47944
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47945
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 47946
    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/LK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47948
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Kc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 47949
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A0F:[Ljava/lang/String;

    const-string v1, "EmhBF28Af3az5oL74X7a9tytdWpdYPgl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47950
    .end local v0    # "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0l(I)V

    .line 47951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0y(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V

    .line 47952
    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Kc;Z)Z
    .locals 0

    .line 47953
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 47954
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 47955
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 47956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->getCTAButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public final A1C()V
    .locals 2

    .line 47957
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 47958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->A0j()V

    .line 47960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 47961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0Y()V

    .line 47962
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    if-eqz v0, :cond_1

    .line 47963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0F()V

    .line 47964
    :cond_1
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 47965
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47966
    return-void
.end method

.method public final A1L(Z)V
    .locals 1

    .line 47967
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1L(Z)V

    .line 47968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LK;->A0m(Z)V

    .line 47969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 47970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->A0e(Z)V

    .line 47971
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    if-eqz v0, :cond_1

    .line 47972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cJ;->A0H(Z)V

    .line 47973
    :cond_1
    return-void
.end method

.method public final A1M()Z
    .locals 1

    .line 47974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0V()Z

    move-result v0

    return v0
.end method

.method public final A1O()Z
    .locals 1

    .line 47975
    const/4 v0, 0x1

    return v0
.end method

.method public final A1P(Z)Z
    .locals 1

    .line 47976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47977
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A1Q()V

    .line 47978
    const/4 v0, 0x1

    return v0

    .line 47979
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1Q()V
    .locals 7

    .line 47980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47981
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A06:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0B:Lcom/facebook/ads/redexgen/X/LK;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A07:Landroid/widget/RelativeLayout;

    const/4 v5, 0x2

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 47982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 47983
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 47984
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A02()V

    .line 47985
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Kc;->A03:Z

    .line 47986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0D()Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/dm;->AFw(Z)V

    .line 47988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 47989
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Kc;->A03:Z

    .line 47990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 47992
    :goto_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/bx;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/bx;-><init>(Lcom/facebook/ads/redexgen/X/Kc;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A08:Lcom/facebook/ads/redexgen/X/jd;

    .line 47993
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v0

    .line 47994
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47995
    :cond_0
    return-void

    .line 47996
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A1R()Z
    .locals 1

    .line 47997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final A1S()Z
    .locals 1

    .line 47998
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A03:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 47999
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Kc;->A1M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48000
    const/4 v0, 0x1

    return v0

    .line 48001
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 48002
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kc;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kc;->A02:Lcom/facebook/ads/redexgen/X/eS;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->A0a(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48005
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kc;->A0F:[Ljava/lang/String;

    const-string v1, "qGsvoGIijzM6smaTEa50KnvmYJop2SBn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 48006
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Kc;->A05(I)V

    .line 48007
    return-void
.end method
