.class public final Lcom/facebook/ads/redexgen/X/Dm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Ek;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/os/Handler;

.field public final A08:Lcom/facebook/ads/redexgen/X/EA;

.field public final A09:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0A:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Dz;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Dt;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/fK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 704
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ZSu0wXuDbQnaud22BC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QCmSLF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fQxhtf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E3sU0uCnWEnB3ZcSzOkvj4xNFgaNSXPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ye0yKWwaCEsRuR61siA7kBVWrkv2bkox"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1q930HE08Ni0sTckStF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wfAs2pJjw0biCEJKLi3nGPcNksloIp8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZBBhRoR6L"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dm;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 34339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34340
    new-instance v0, Lcom/facebook/ads/redexgen/X/42;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/42;-><init>(Lcom/facebook/ads/redexgen/X/Dm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A09:Lcom/facebook/ads/redexgen/X/E4;

    .line 34341
    new-instance v0, Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/41;-><init>(Lcom/facebook/ads/redexgen/X/Dm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A08:Lcom/facebook/ads/redexgen/X/EA;

    .line 34342
    new-instance v0, Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3x;-><init>(Lcom/facebook/ads/redexgen/X/Dm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0A:Lcom/facebook/ads/redexgen/X/E2;

    .line 34343
    new-instance v0, Lcom/facebook/ads/redexgen/X/3w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3w;-><init>(Lcom/facebook/ads/redexgen/X/Dm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0B:Lcom/facebook/ads/redexgen/X/Dz;

    .line 34344
    new-instance v0, Lcom/facebook/ads/redexgen/X/3v;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3v;-><init>(Lcom/facebook/ads/redexgen/X/Dm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0C:Lcom/facebook/ads/redexgen/X/Dt;

    .line 34345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A07:Landroid/os/Handler;

    .line 34346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    .line 34347
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:I

    .line 34348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A02:Z

    .line 34349
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A04:Z

    .line 34350
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Dm;->A03:Z

    .line 34351
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Dm;)I
    .locals 0

    .line 34352
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Dm;)Landroid/os/Handler;
    .locals 0

    .line 34353
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Dm;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 34354
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 34355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dm;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dm;->A0E:[Ljava/lang/String;

    const-string v1, "Y40dGjVL9Zscw9FMyiKWKh6z3JvZ0T5u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hO4VpYUkDoigTR3nwiJ8PFOPPoG0N1QG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fK;

    .line 34357
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/fK;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fK;->cancel()V

    .line 34358
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/fK;
    goto :goto_0

    .line 34359
    :cond_1
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Dm;)V
    .locals 0

    .line 34360
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dm;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V
    .locals 0

    .line 34361
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dm;->A06(ZZ)V

    return-void
.end method

.method private A06(ZZ)V
    .locals 2

    .line 34362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fK;

    .line 34363
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/fK;
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/fK;->A4A(ZZ)V

    .line 34364
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/fK;
    goto :goto_0

    .line 34365
    :cond_0
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Dm;)Z
    .locals 0

    .line 34366
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A05:Z

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Dm;)Z
    .locals 0

    .line 34367
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A02:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Dm;)Z
    .locals 0

    .line 34368
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A03:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Dm;)Z
    .locals 0

    .line 34369
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A04:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Dm;)Z
    .locals 0

    .line 34370
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A06:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Dm;Lcom/facebook/ads/redexgen/X/fJ;)Z
    .locals 0

    .line 34371
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dm;->A0G(Lcom/facebook/ads/redexgen/X/fJ;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Dm;Z)Z
    .locals 0

    .line 34372
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A05:Z

    return p1
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Dm;Z)Z
    .locals 0

    .line 34373
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A02:Z

    return p1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Dm;Z)Z
    .locals 0

    .line 34374
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A06:Z

    return p1
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/fJ;)Z
    .locals 2

    .line 34375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fK;

    .line 34376
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/fK;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fK;->A9B()Lcom/facebook/ads/redexgen/X/fJ;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 34377
    const/4 v0, 0x0

    return v0

    .line 34378
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0H()V
    .locals 1

    .line 34379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34380
    return-void
.end method

.method public final A0I()V
    .locals 2

    .line 34381
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A04:Z

    if-eqz v0, :cond_0

    .line 34382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A04:Z

    .line 34384
    :cond_0
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 34385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A06:Z

    .line 34386
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A05:Z

    .line 34387
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A06(ZZ)V

    .line 34388
    return-void
.end method

.method public final A0K(I)V
    .locals 0

    .line 34389
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:I

    .line 34390
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/fK;)V
    .locals 1

    .line 34391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34392
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 34393
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A04:Z

    return v0
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34394
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34395
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A09:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0C:Lcom/facebook/ads/redexgen/X/Dt;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0A:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0B:Lcom/facebook/ads/redexgen/X/Dz;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A08:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    .line 34396
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34397
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34398
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dm;->A03()V

    .line 34399
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A08:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0C:Lcom/facebook/ads/redexgen/X/Dt;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0A:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A0B:Lcom/facebook/ads/redexgen/X/Dz;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A09:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    .line 34400
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34402
    return-void
.end method
