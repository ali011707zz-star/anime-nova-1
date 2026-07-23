.class public final Lcom/facebook/ads/redexgen/X/O7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;

.field public A03:Lcom/facebook/ads/redexgen/X/VW;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/U3;

.field public final A08:Lcom/facebook/ads/redexgen/X/Vp;

.field public final A09:Lcom/facebook/ads/redexgen/X/Vq;

.field public final A0A:Ljava/lang/String;

.field public final A0B:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:I

.field public final A0D:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1466
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "e4QKd0vFJKlBfNQUlIHhfqQvs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ktN6BUw9VrN2JTOHJ8TIrrXahMZ3fTmV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DLbbL7kcZ5O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9b4HlLYHdUSJ33wbgi9UrYdebMHGJs2L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z1qfKPKzPcrrDsrmM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3k9SvbOHIOGx0S2BWPTRCyg1cNUtQJE0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0GDGJhxXKJqU0yOd0NeRuUkLVmalwgCj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KW1MjCrhBg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/O7;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILcom/facebook/ads/redexgen/X/U3;)V
    .locals 8

    .line 55336
    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    .line 55337
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 55338
    move-object v0, p0

    move-object v7, p6

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 55339
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Vq;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Vp;ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/U3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Vq;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/Vp;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/U3;",
            ")V"
        }
    .end annotation

    .line 55340
    .local p6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55341
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    .line 55342
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O7;->A0D:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 55343
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    .line 55344
    iput p5, p0, Lcom/facebook/ads/redexgen/X/O7;->A0C:I

    .line 55345
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/O7;->A0B:Ljava/util/EnumSet;

    .line 55346
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O7;->A09:Lcom/facebook/ads/redexgen/X/Vq;

    .line 55347
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:I

    .line 55348
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/O7;->A07:Lcom/facebook/ads/redexgen/X/U3;

    .line 55349
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Vu;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/WA;
    .locals 13

    .line 55350
    new-instance v2, Lcom/facebook/ads/redexgen/X/WA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/O7;->A0A:Ljava/lang/String;

    .line 55351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vp;->A04()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vp;->A03()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;-><init>(II)V

    :goto_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/O7;->A09:Lcom/facebook/ads/redexgen/X/Vq;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/O7;->A0C:I

    .line 55352
    move-object v3, p1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Up;->A0N(Landroid/content/Context;)I

    move-result v0

    .line 55353
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A01(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/O7;->A04:Ljava/lang/String;

    .line 55354
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object v11

    :cond_0
    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/O7;->A07:Lcom/facebook/ads/redexgen/X/U3;

    move-object v8, p2

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Vq;ILcom/facebook/ads/redexgen/X/Vu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 55355
    return-object v2

    .line 55356
    :cond_1
    move-object v5, v11

    goto :goto_0
.end method

.method public final A01()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            ">;"
        }
    .end annotation

    .line 55357
    const/4 v0, 0x2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 55358
    .local v0, "adPlacementTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/protocol/AdPlacementType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O7;->A0D:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O7;->A09:Lcom/facebook/ads/redexgen/X/Vq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A0D:Lcom/facebook/ads/redexgen/X/Vq;

    if-ne v1, v0, :cond_1

    .line 55359
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55360
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v2, Lcom/facebook/ads/redexgen/X/O7;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/O7;->A0E:[Ljava/lang/String;

    const-string v1, "dJCx3L7RUa0HYA9jO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "pYtnX6DZAplUTv76Lm34k0kqX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55361
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55362
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A0D:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_2

    .line 55363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A0D:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55364
    return-object v3

    .line 55365
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    if-nez v0, :cond_3

    .line 55366
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55367
    return-object v3

    .line 55368
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O7;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Lcom/facebook/ads/redexgen/X/Vp;

    if-ne v1, v0, :cond_4

    .line 55369
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55370
    return-object v3

    .line 55371
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55372
    return-object v3
.end method

.method public final A02(I)V
    .locals 0

    .line 55373
    iput p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:I

    .line 55374
    return-void
.end method

.method public final A03(J)V
    .locals 0

    .line 55375
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A01:J

    .line 55376
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 55377
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A02:Lcom/facebook/ads/RewardData;

    .line 55378
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/VW;)V
    .locals 0

    .line 55379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A03:Lcom/facebook/ads/redexgen/X/VW;

    .line 55380
    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .locals 0

    .line 55381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A04:Ljava/lang/String;

    .line 55382
    return-void
.end method

.method public final A07(Ljava/lang/String;)V
    .locals 0

    .line 55383
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A05:Ljava/lang/String;

    .line 55384
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 55385
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A06:Z

    .line 55386
    return-void
.end method
