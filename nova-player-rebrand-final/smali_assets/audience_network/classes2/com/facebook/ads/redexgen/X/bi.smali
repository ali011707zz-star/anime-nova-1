.class public final Lcom/facebook/ads/redexgen/X/bi;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bh;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Yb;

.field public A01:Lcom/facebook/ads/redexgen/X/Z3;

.field public final A02:Lcom/facebook/ads/redexgen/X/jd;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A05:Lcom/facebook/ads/redexgen/X/bh;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2648
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q8PK8a4jCXFMgXydViX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0mtDJDWqZSrfiocTEOLDLA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JwyFxt7bdt7eCUIm0ln"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fPboxvDBMmOISakSS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3APcS373YHqcuLzV9G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bi;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/bF;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;)V
    .locals 7

    .line 78276
    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v0, 0x1

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v3, p3

    move-object v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;[Landroid/view/View;)V

    .line 78277
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;[Landroid/view/View;)V
    .locals 8

    .line 78278
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    .line 78279
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v2

    .line 78280
    move-object v0, p0

    move-object v7, p6

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;[Landroid/view/View;)V

    .line 78281
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;[Landroid/view/View;)V
    .locals 4

    .line 78282
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A07:Ljava/util/List;

    .line 78284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bi;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 78285
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/Yb;

    .line 78286
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78287
    array-length v3, p7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p7, v2

    .line 78288
    .local v2, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 78289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A07:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78290
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78291
    :cond_1
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/bi;->A04:Lcom/facebook/ads/redexgen/X/Yh;

    .line 78292
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    .line 78293
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bi;->A05:Lcom/facebook/ads/redexgen/X/bh;

    .line 78294
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bi;->A04()V

    .line 78295
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 78296
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/Yb;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/bh;
    .locals 0

    .line 78297
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bi;->A05:Lcom/facebook/ads/redexgen/X/bh;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bi;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 78298
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bi;)Ljava/util/List;
    .locals 0

    .line 78299
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bi;->A07:Ljava/util/List;

    return-object p0
.end method

.method private A04()V
    .locals 10

    .line 78300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0s()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 78301
    .local v0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 78302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2B()Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->A05()Ljava/lang/String;

    move-result-object v5

    .line 78303
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Z3;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bi;->A03:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78304
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2B()Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->A04()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78305
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2B()Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nj;->A03()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A14:Lcom/facebook/ads/redexgen/X/YM;

    .line 78306
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/Z3;-><init>(Lcom/facebook/ads/redexgen/X/gi;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Z3;

    .line 78307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Z3;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z3;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bf;-><init>(Lcom/facebook/ads/redexgen/X/bi;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Z3;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bg;-><init>(Lcom/facebook/ads/redexgen/X/bi;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78309
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78310
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A01:Lcom/facebook/ads/redexgen/X/Z3;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/bi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78311
    return-void

    .line 78312
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78313
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2B()Lcom/facebook/ads/redexgen/X/Nj;

    move-result-object v2

    .line 78314
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A06(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private A05()V
    .locals 2

    .line 78315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 78316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v0, Lcom/facebook/ads/redexgen/X/el;->A07:Lcom/facebook/ads/redexgen/X/el;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0d(Lcom/facebook/ads/redexgen/X/el;)V

    .line 78317
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A05:Lcom/facebook/ads/redexgen/X/bh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bh;->ACt()V

    .line 78318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0V()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bi;->A02:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A04:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2H(Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 78320
    :cond_1
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/bi;)V
    .locals 0

    .line 78321
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bi;->A05()V

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/ViewGroup;)V
    .locals 7

    .line 78322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78323
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    const/16 v5, 0xb

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bi;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/bi;->A08:[Ljava/lang/String;

    const-string v1, "1Ran1dt8ESvXQPCOL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6, v4, v4, v5}, Lcom/facebook/ads/redexgen/X/Ek;->A0j(ZZI)V

    .line 78324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A06:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 78325
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/Yb;

    if-eqz v0, :cond_2

    .line 78326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A00:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 78327
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/bi;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/bi;->A08:[Ljava/lang/String;

    const-string v1, "6LHnkwVNW3v3BurcJpp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "pBsoAnuzgJgS4JAM4BB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78328
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 78329
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 78330
    .end local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 78331
    :cond_4
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78332
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bi;->A05:Lcom/facebook/ads/redexgen/X/bh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bh;->AEn()V

    .line 78334
    return-void
.end method
