.class public final Lcom/facebook/ads/redexgen/X/RA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/R9;

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/RI;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A08:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1606
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d6jyZ4YF4aAx6mY2oyMV8cMH3x1tTmGX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ShmsSFKDmdiSeaEbVJI0pMmhv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jy6CLSdjiTJVmxisrmhO9od6ZqYVQGpz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aKDRqPZxmSwbRmY5O7VQCqOvGq0yRVmO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vr6xx06LqTBYtEPA9ZzozSqPDwzkbNaY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y84hViIy7qYskGYmJ3QVEouknT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RA;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    .line 61268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    .line 61269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    .line 61270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    .line 61271
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Ljava/util/List;

    .line 61272
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:I

    .line 61273
    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    return-void
.end method

.method private final A00(IZ)Landroid/view/View;
    .locals 2

    .line 61274
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/RA;->A0I(IZJ)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    return-object v0
.end method

.method private final A01(I)Lcom/facebook/ads/redexgen/X/RK;
    .locals 10

    .line 61275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v2, "changedScrapSize":I
    if-nez v8, :cond_1

    .line 61276
    .end local v2    # "changedScrapSize":I
    :cond_0
    return-object v9

    .line 61277
    :cond_1
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v2, v8, :cond_3

    .line 61278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RK;

    .line 61279
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 61280
    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61281
    return-object v1

    .line 61282
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61283
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ht;->A04(I)I

    move-result v1

    .line 61285
    .local v0, "offsetPosition":I
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 61286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qq;->A0D(I)J

    move-result-wide v5

    .line 61287
    .local v4, "id":J
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 61288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/RK;

    .line 61289
    .local v7, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-nez v0, :cond_4

    .line 61290
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61291
    return-object v3

    .line 61292
    .end local v7    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61293
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_5
    return-object v9
.end method

.method private final A02(IZ)Lcom/facebook/ads/redexgen/X/RK;
    .locals 6

    .line 61294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61295
    .local v0, "scrapCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 61296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RK;

    .line 61297
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 61298
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61299
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61300
    return-object v1

    .line 61301
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61302
    .end local v1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 61303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A08(I)Landroid/view/View;

    move-result-object v2

    .line 61304
    .local v1, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 61305
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v4

    .line 61306
    .local v2, "vh":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QQ;->A0G(Landroid/view/View;)V

    .line 61307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QQ;->A07(Landroid/view/View;)I

    move-result v1

    .line 61308
    .local v3, "layoutIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    .line 61309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QQ;->A0C(I)V

    .line 61310
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RA;->A0S(Landroid/view/View;)V

    .line 61311
    const/16 v0, 0x2020

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61312
    return-object v4

    .line 61313
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x235

    const/16 v1, 0x34

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61314
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61315
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Lcom/facebook/ads/redexgen/X/RK;
    .end local v3    # "layoutIndex":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 61316
    .local v1, "cacheSize":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 61317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/RK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

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

    .line 61318
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "JIr6ryR6hWTh2WYmHdarh5TP4xAypylw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "npmC62BAQEqZygYceoAiNhkQGghR92x0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 61319
    if-nez p2, :cond_6

    .line 61320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61321
    :cond_6
    return-object v3

    .line 61322
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61323
    .end local v2    # "i":I
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A03(JIZ)Lcom/facebook/ads/redexgen/X/RK;
    .locals 7

    .line 61324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61325
    .local v0, "count":I
    add-int/lit8 v5, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v5, :cond_5

    .line 61326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/RK;

    .line 61327
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61328
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 61329
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61330
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61331
    :cond_0
    if-nez p4, :cond_2

    .line 61332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61333
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "QSy8SYzj9TGZXONlvrRd2Hl7xNggaX2t"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FStY7c67BTbAcWAeNWEJdNOuKPlMCdqH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/7M;->removeDetachedView(Landroid/view/View;Z)V

    .line 61334
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0R(Landroid/view/View;)V

    .line 61335
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "3Wf6vMFZ4V6K3VYEAeXlgILB3Kqn8tmj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2gRFj7AUivxslEY3Do0gPT185jjA6g6i"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 61336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_4

    .line 61337
    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0a(II)V

    .line 61338
    :cond_4
    return-object v3

    .line 61339
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61340
    .local v1, "cacheSize":I
    add-int/lit8 v5, v0, -0x1

    .local v2, "i":I
    :goto_2
    const/4 v4, 0x0

    if-ltz v5, :cond_a

    .line 61341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/RK;

    .line 61342
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0Q()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_8

    .line 61343
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 61344
    if-nez p4, :cond_6

    .line 61345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61346
    :cond_6
    return-object v3

    .line 61347
    :cond_7
    if-nez p4, :cond_8

    .line 61348
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/RA;->A07(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61349
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 61350
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "Px4MCeB3tpw5Kws4bgsL6OQ2tD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cZzmTfGm3PDqBsfSjCaAnG9aB7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v4

    .line 61351
    .end local v2    # "i":I
    :cond_a
    return-object v4
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RA;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x277

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RA;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        0x38t
        0x22t
        0x10t
        0x25t
        0x25t
        0x30t
        0x32t
        0x39t
        0x34t
        0x35t
        0x6bt
        0x38t
        0x56t
        0x11t
        0x18t
        0x18t
        0xdt
        0x1bt
        0xat
        0x44t
        0x20t
        0x27t
        0x29t
        0x40t
        0x7dt
        0x6ct
        0x64t
        0x29t
        0x6at
        0x66t
        0x7ct
        0x67t
        0x7dt
        0x33t
        0x4ft
        0x48t
        0x15t
        0x12t
        0x7t
        0x12t
        0x3t
        0x5ct
        0x79t
        0x5bt
        0x56t
        0x56t
        0x5ft
        0x5et
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x1at
        0x4dt
        0x53t
        0x4et
        0x52t
        0x1at
        0x5bt
        0x54t
        0x1at
        0x53t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x14t
        0x1at
        0x73t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x4ct
        0x53t
        0x5ft
        0x4dt
        0x49t
        0x1at
        0x59t
        0x5bt
        0x54t
        0x54t
        0x55t
        0x4et
        0x1at
        0x58t
        0x5ft
        0x1at
        0x48t
        0x5ft
        0x4ft
        0x49t
        0x5ft
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x49t
        0x59t
        0x48t
        0x5bt
        0x4at
        0x16t
        0x1at
        0x4et
        0x52t
        0x5ft
        0x43t
        0x1at
        0x49t
        0x52t
        0x55t
        0x4ft
        0x56t
        0x5et
        0x1at
        0x48t
        0x5ft
        0x58t
        0x55t
        0x4ft
        0x54t
        0x5et
        0x1at
        0x5ct
        0x48t
        0x55t
        0x57t
        0x1at
        0x48t
        0x5ft
        0x59t
        0x43t
        0x59t
        0x56t
        0x5ft
        0x48t
        0x1at
        0x4at
        0x55t
        0x55t
        0x56t
        0x14t
        0x74t
        0x53t
        0x5et
        0x52t
        0x53t
        0x4et
        0x54t
        0x4et
        0x49t
        0x58t
        0x53t
        0x5et
        0x44t
        0x1dt
        0x59t
        0x58t
        0x49t
        0x58t
        0x5et
        0x49t
        0x58t
        0x59t
        0x13t
        0x1dt
        0x74t
        0x53t
        0x4bt
        0x5ct
        0x51t
        0x54t
        0x59t
        0x1dt
        0x54t
        0x49t
        0x58t
        0x50t
        0x1dt
        0x4dt
        0x52t
        0x4et
        0x54t
        0x49t
        0x54t
        0x52t
        0x53t
        0x1dt
        0x1ft
        0x38t
        0x35t
        0x39t
        0x38t
        0x25t
        0x3ft
        0x25t
        0x22t
        0x33t
        0x38t
        0x35t
        0x2ft
        0x76t
        0x32t
        0x33t
        0x22t
        0x33t
        0x35t
        0x22t
        0x33t
        0x32t
        0x78t
        0x76t
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x20t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x3et
        0x39t
        0x3at
        0x32t
        0x33t
        0x24t
        0x76t
        0x37t
        0x32t
        0x37t
        0x26t
        0x22t
        0x33t
        0x24t
        0x76t
        0x26t
        0x39t
        0x25t
        0x3ft
        0x22t
        0x3ft
        0x39t
        0x38t
        0x59t
        0x7et
        0x66t
        0x71t
        0x7ct
        0x79t
        0x74t
        0x30t
        0x79t
        0x64t
        0x75t
        0x7dt
        0x30t
        0x60t
        0x7ft
        0x63t
        0x79t
        0x64t
        0x79t
        0x7ft
        0x7et
        0x30t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x31t
        0x24t
        0x25t
        0x61t
        0x2et
        0x33t
        0x61t
        0x20t
        0x35t
        0x35t
        0x20t
        0x22t
        0x29t
        0x24t
        0x25t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x32t
        0x61t
        0x2ct
        0x20t
        0x38t
        0x61t
        0x2ft
        0x2et
        0x35t
        0x61t
        0x23t
        0x24t
        0x61t
        0x33t
        0x24t
        0x22t
        0x38t
        0x22t
        0x2dt
        0x24t
        0x25t
        0x6ft
        0x61t
        0x28t
        0x32t
        0x12t
        0x22t
        0x33t
        0x20t
        0x31t
        0x7bt
        0x6ct
        0x55t
        0x48t
        0x18t
        0x5ct
        0x5dt
        0x4ct
        0x59t
        0x5bt
        0x50t
        0x5dt
        0x5ct
        0x18t
        0x4et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x4bt
        0x50t
        0x57t
        0x4dt
        0x54t
        0x5ct
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x55t
        0x57t
        0x4et
        0x5dt
        0x5ct
        0x18t
        0x5et
        0x4at
        0x57t
        0x55t
        0x18t
        0x6at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x4at
        0x6et
        0x51t
        0x5dt
        0x4ft
        0x18t
        0x5at
        0x5dt
        0x5et
        0x57t
        0x4at
        0x5dt
        0x18t
        0x51t
        0x4ct
        0x18t
        0x5bt
        0x59t
        0x56t
        0x18t
        0x5at
        0x5dt
        0x18t
        0x4at
        0x5dt
        0x5bt
        0x41t
        0x5bt
        0x54t
        0x5dt
        0x5ct
        0x2t
        0x18t
        0x57t
        0x71t
        0x7at
        0x6at
        0x6dt
        0x64t
        0x23t
        0x77t
        0x6ct
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x23t
        0x62t
        0x6dt
        0x23t
        0x6at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x66t
        0x67t
        0x23t
        0x75t
        0x6at
        0x66t
        0x74t
        0x23t
        0x6bt
        0x6ct
        0x6ft
        0x67t
        0x66t
        0x71t
        0x2dt
        0x23t
        0x5at
        0x6ct
        0x76t
        0x23t
        0x70t
        0x6bt
        0x6ct
        0x76t
        0x6ft
        0x67t
        0x23t
        0x65t
        0x6at
        0x71t
        0x70t
        0x77t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x23t
        0x70t
        0x77t
        0x6ct
        0x73t
        0x4at
        0x64t
        0x6dt
        0x6ct
        0x71t
        0x6at
        0x6dt
        0x64t
        0x55t
        0x6at
        0x66t
        0x74t
        0x2bt
        0x75t
        0x6at
        0x66t
        0x74t
        0x2at
        0x23t
        0x61t
        0x66t
        0x65t
        0x6ct
        0x71t
        0x66t
        0x23t
        0x60t
        0x62t
        0x6ft
        0x6ft
        0x6at
        0x6dt
        0x64t
        0x23t
        0x71t
        0x66t
        0x60t
        0x7at
        0x60t
        0x6ft
        0x66t
        0x2dt
        0x30t
        0x32t
        0x23t
        0x1t
        0x3et
        0x32t
        0x20t
        0x11t
        0x38t
        0x25t
        0x7t
        0x38t
        0x24t
        0x3et
        0x23t
        0x3et
        0x38t
        0x39t
        0x16t
        0x39t
        0x33t
        0x3t
        0x2et
        0x27t
        0x32t
        0x1dt
        0x10t
        0x8t
        0x1et
        0x4t
        0x5t
        0x51t
        0x18t
        0x1ft
        0x15t
        0x14t
        0x9t
        0x51t
        0x2t
        0x19t
        0x1et
        0x4t
        0x1dt
        0x15t
        0x51t
        0x1ft
        0x1et
        0x5t
        0x51t
        0x13t
        0x14t
        0x51t
        0x5ct
        0x40t
        0x51t
        0x10t
        0x17t
        0x5t
        0x14t
        0x3t
        0x51t
        0x4t
        0x1ft
        0x19t
        0x18t
        0x15t
        0x18t
        0x1ft
        0x16t
        0x51t
        0x10t
        0x51t
        0x7t
        0x18t
        0x14t
        0x6t
        0x4bt
        0x45t
        0x44t
        0x7ct
        0x43t
        0x4ft
        0x5dt
        0x78t
        0x4ft
        0x49t
        0x53t
        0x49t
        0x46t
        0x4ft
        0x4et
    .end array-data
.end method

.method private final A06()V
    .locals 1

    .line 61352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 61353
    .local v0, "count":I
    add-int/lit8 v0, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 61354
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(I)V

    .line 61355
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 61356
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61357
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A10()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A02:Lcom/facebook/ads/redexgen/X/hs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hs;->A02()V

    .line 61359
    :cond_1
    return-void
.end method

.method private final A07(I)V
    .locals 2

    .line 61360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RK;

    .line 61361
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/RK;
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0Z(Lcom/facebook/ads/redexgen/X/RK;Z)V

    .line 61362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61363
    return-void
.end method

.method private A08(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 61364
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    .local v0, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 61365
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 61366
    .local v2, "view":Landroid/view/View;
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 61367
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/RA;->A08(Landroid/view/ViewGroup;Z)V

    .line 61368
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 61369
    .end local v0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 61370
    return-void

    .line 61371
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 61372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61373
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61374
    .end local v0
    :goto_1
    return-void

    .line 61375
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 61376
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61377
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 5

    .line 61378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61379
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    .line 61380
    .local v0, "itemView":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ph;->A00(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 61381
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ph;->A09(Landroid/view/View;I)V

    .line 61382
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ph;->A0F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61383
    const/16 v4, 0x4000

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "r5izwM6EITTd8J0QgfTuliuK3Ylx6gnH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CLm8SGIYJT8sX0J5oMrTiG0qZUHKeksn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A09:Lcom/facebook/ads/redexgen/X/hb;

    .line 61385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hb;->A0A()Lcom/facebook/ads/redexgen/X/PL;

    move-result-object v0

    .line 61386
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ph;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PL;)V

    .line 61387
    .end local v0    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 2

    .line 61388
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 61389
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Landroid/view/ViewGroup;Z)V

    .line 61390
    :cond_0
    return-void
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 3

    .line 61391
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 61392
    const/16 v2, 0x269

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61393
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    if-eqz v0, :cond_1

    .line 61394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RS;->A0B(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61395
    :cond_1
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/RK;)Z
    .locals 6

    .line 61396
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    return v0

    .line 61398
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    if-ltz v0, :cond_4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 61399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 61400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0C(I)I

    move-result v1

    .line 61401
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 61402
    return v5

    .line 61403
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 61404
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0Q()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0D(I)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 61405
    :cond_3
    return v0

    .line 61406
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd3

    const/16 v1, 0x3c

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61407
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/RK;IIJ)Z
    .locals 8

    .line 61408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61409
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v3

    .line 61410
    .local v0, "viewType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getNanoTime()J

    move-result-wide v4

    .line 61411
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    move-wide v6, p4

    cmp-long v0, v6, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    .line 61412
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/R9;->A0A(IJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61413
    const/4 v0, 0x0

    return v0

    .line 61414
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qq;->A0J(Lcom/facebook/ads/redexgen/X/RK;I)V

    .line 61415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getNanoTime()J

    move-result-wide v0

    .line 61416
    .local v1, "endBindNs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0N()I

    move-result v2

    sub-long/2addr v0, v4

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/R9;->A05(IJ)V

    .line 61417
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A09(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61419
    iput p3, p1, Lcom/facebook/ads/redexgen/X/RK;->A04:I

    .line 61420
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()I
    .locals 1

    .line 61421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final A0F(I)Landroid/view/View;
    .locals 1

    .line 61422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    return-object v0
.end method

.method public final A0G(I)Landroid/view/View;
    .locals 1

    .line 61423
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A00(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/R9;
    .locals 1

    .line 61424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    if-nez v0, :cond_0

    .line 61425
    new-instance v0, Lcom/facebook/ads/redexgen/X/R9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R9;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    .line 61426
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    return-object v0
.end method

.method public final A0I(IZJ)Lcom/facebook/ads/redexgen/X/RK;
    .locals 22

    .line 61427
    move-object/from16 v4, p0

    move-object v4, v4

    move/from16 v13, p1

    if-ltz v13, :cond_18

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    if-ge v13, v0, :cond_18

    .line 61428
    const/4 v9, 0x0

    .line 61429
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v11, 0x0

    .line 61430
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 61431
    invoke-direct {v4, v13}, Lcom/facebook/ads/redexgen/X/RA;->A01(I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v11

    .line 61432
    if-eqz v11, :cond_a

    const/4 v9, 0x1

    .line 61433
    :cond_0
    :goto_0
    move/from16 v6, p2

    if-nez v11, :cond_5

    .line 61434
    invoke-direct {v4, v13, v6}, Lcom/facebook/ads/redexgen/X/RA;->A02(IZ)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v11

    .line 61435
    if-eqz v11, :cond_5

    .line 61436
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/RA;->A0C(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61437
    if-nez v6, :cond_4

    .line 61438
    const/4 v7, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61439
    :cond_1
    const/4 v9, 0x1

    goto :goto_3

    .line 61440
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61441
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61442
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/7M;->removeDetachedView(Landroid/view/View;Z)V

    .line 61443
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0Y()V

    .line 61444
    :cond_3
    :goto_2
    invoke-virtual {v4, v11}, Lcom/facebook/ads/redexgen/X/RA;->A0X(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61445
    :cond_4
    const/4 v11, 0x0

    .line 61446
    :cond_5
    :goto_3
    move-wide/from16 v14, p3

    if-nez v11, :cond_f

    .line 61447
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/ht;->A04(I)I

    move-result v7

    .line 61448
    .local v2, "offsetPosition":I
    if-ltz v7, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 61449
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Qq;->A0C(I)I

    move-result v2

    .line 61450
    .local v3, "type":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61451
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Qq;->A0D(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/RA;->A03(JIZ)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v11

    .line 61452
    if-eqz v11, :cond_6

    .line 61453
    iput v7, v11, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    .line 61454
    const/4 v9, 0x1

    .line 61455
    :cond_6
    if-nez v11, :cond_8

    const/4 v0, 0x0

    if-eqz v0, :cond_8

    .line 61456
    const/16 v2, 0x21c

    const/16 v1, 0x19

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61457
    :cond_7
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61458
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0U()V

    goto :goto_2

    .line 61459
    .end local v4
    :cond_8
    if-nez v11, :cond_9

    .line 61460
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RA;->A0H()Lcom/facebook/ads/redexgen/X/R9;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/R9;->A03(I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v11

    .line 61461
    if-eqz v11, :cond_9

    .line 61462
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0W()V

    .line 61463
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7M;->A1C:Z

    if-eqz v0, :cond_9

    .line 61464
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/RA;->A0A(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61465
    :cond_9
    if-nez v11, :cond_f

    .line 61466
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getNanoTime()J

    move-result-wide v18

    .line 61467
    .local v4, "start":J
    const-wide v7, 0x7fffffffffffffffL

    sget-object v6, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v6, v6, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    .line 61468
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "boNM8OY2bTpFYgdjXbnYcgq0xZrcwPhs"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    const-string v1, "UkhWCoe8HTTYlCSa40rnYF5pqDe823no"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    cmp-long v0, v14, v7

    if-eqz v0, :cond_d

    .line 61469
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    .line 61470
    move/from16 v17, v2

    move-wide/from16 v20, v14

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/R9;->A0B(IJJ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 61471
    const/4 v0, 0x0

    return-object v0

    .line 61472
    .end local v3    # "type":I
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa5

    const/16 v1, 0x2e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    .line 61473
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61474
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Qq;->A0E(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v11

    .line 61475
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A10()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61476
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A0H(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/7M;

    move-result-object v1

    .line 61477
    .local v11, "innerView":Lcom/facebook/ads/redexgen/X/7M;
    if-eqz v1, :cond_e

    .line 61478
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A09:Ljava/lang/ref/WeakReference;

    .line 61479
    .end local v11    # "innerView":Lcom/facebook/ads/redexgen/X/7M;
    :cond_e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getNanoTime()J

    move-result-wide v0

    .line 61480
    .local v11, "end":J
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    sub-long v0, v0, v18

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/R9;->A06(IJ)V

    .line 61481
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_f
    if-eqz v9, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61482
    const/16 v1, 0x2000

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/RK;->A0o(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61483
    invoke-virtual {v11, v5, v1}, Lcom/facebook/ads/redexgen/X/RK;->A0a(II)V

    .line 61484
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    if-eqz v0, :cond_10

    .line 61485
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Qy;->A06(Lcom/facebook/ads/redexgen/X/RK;)I

    move-result v0

    .line 61486
    .local v0, "changeFlags":I
    or-int/lit16 v5, v0, 0x1000

    .line 61487
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    .line 61488
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0R()Ljava/util/List;

    move-result-object v0

    .line 61489
    invoke-virtual {v2, v1, v11, v5, v0}, Lcom/facebook/ads/redexgen/X/Qy;->A0F(Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RK;ILjava/util/List;)Lcom/facebook/ads/redexgen/X/Qx;

    move-result-object v1

    .line 61490
    .local v1, "info":Lcom/facebook/ads/redexgen/X/Qx;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v11, v1}, Lcom/facebook/ads/redexgen/X/7M;->A1k(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;)V

    .line 61491
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Lcom/facebook/ads/redexgen/X/Qx;
    :cond_10
    const/4 v7, 0x0

    .line 61492
    .local v13, "bound":Z
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A07()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61493
    iput v13, v11, Lcom/facebook/ads/redexgen/X/RK;->A04:I

    .line 61494
    .end local v14
    :cond_11
    :goto_4
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 61495
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_13

    .line 61496
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/R3;

    .line 61497
    .local v1, "rvLayoutParams":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61498
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/R3;
    :goto_5
    iput-object v11, v5, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/RK;

    .line 61499
    if-eqz v9, :cond_12

    if-eqz v7, :cond_12

    :goto_6
    iput-boolean v3, v5, Lcom/facebook/ads/redexgen/X/R3;->A02:Z

    .line 61500
    return-object v11

    .line 61501
    :cond_12
    const/4 v3, 0x0

    goto :goto_6

    .line 61502
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/R3;
    :cond_13
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/7M;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "zCboBEvvN0uPYmtuolLcQSfyvv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oQlbeeNPYINxaBCA8kGLswkn0x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_15

    .line 61503
    :goto_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/7M;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/R3;

    .line 61504
    .restart local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/R3;
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_15

    goto :goto_7

    .line 61505
    .end local v1    # "rvLayoutParams":Lcom/facebook/ads/redexgen/X/R3;
    :cond_15
    check-cast v5, Lcom/facebook/ads/redexgen/X/R3;

    goto :goto_5

    .line 61506
    :cond_16
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0k()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61507
    :cond_17
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/ht;->A04(I)I

    move-result v12

    .line 61508
    .local v14, "offsetPosition":I
    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/RA;->A0D(Lcom/facebook/ads/redexgen/X/RK;IIJ)Z

    move-result v7

    goto/16 :goto_4

    .line 61509
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    .end local v13    # "bound":Z
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10f

    const/16 v1, 0x16

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    .line 61510
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61511
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/RK;",
            ">;"
        }
    .end annotation

    .line 61512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A07:Ljava/util/List;

    return-object v0
.end method

.method public final A0K()V
    .locals 3

    .line 61513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 61514
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 61515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    .line 61516
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0S()V

    .line 61517
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61518
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 61519
    .local v1, "scrapCount":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 61520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0S()V

    .line 61521
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61522
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 61523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 61524
    .local v2, "changedScrapCount":I
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 61525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A0S()V

    .line 61526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61527
    .end local v2    # "changedScrapCount":I
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 61528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 61530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61531
    :cond_0
    return-void
.end method

.method public final A0M()V
    .locals 4

    .line 61532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61533
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 61534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    .line 61535
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R3;

    .line 61536
    .local v3, "layoutParams":Lcom/facebook/ads/redexgen/X/R3;
    if-eqz v1, :cond_0

    .line 61537
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/R3;->A01:Z

    .line 61538
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    .end local v3    # "layoutParams":Lcom/facebook/ads/redexgen/X/R3;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61539
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final A0N()V
    .locals 4

    .line 61540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61542
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 61543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RK;

    .line 61544
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v1, :cond_0

    .line 61545
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 61546
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0c(Ljava/lang/Object;)V

    .line 61547
    .end local v2    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61548
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A06()V

    .line 61549
    :cond_2
    return-void
.end method

.method public final A0O()V
    .locals 6

    .line 61550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/R2;->A00:I

    .line 61551
    .local v0, "extraCache":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    .line 61552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 61553
    .local v1, "i":I
    :goto_1
    if-ltz v5, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "FM5srU9o6TBj8QlSYYqmaX9MZyJMPTMr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mnADOFh1HT7Eu0tfTP5EsiAEmob0QgOc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-le v4, v3, :cond_2

    .line 61554
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/RA;->A07(I)V

    .line 61555
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 61556
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 61557
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final A0P()V
    .locals 1

    .line 61558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RA;->A06()V

    .line 61560
    return-void
.end method

.method public final A0Q(I)V
    .locals 0

    .line 61561
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:I

    .line 61562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0O()V

    .line 61563
    return-void
.end method

.method public final A0R(Landroid/view/View;)V
    .locals 2

    .line 61564
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 61565
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/RK;
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A07(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/RA;

    .line 61566
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0L(Lcom/facebook/ads/redexgen/X/RK;Z)Z

    .line 61567
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0U()V

    .line 61568
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/RA;->A0X(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61569
    return-void
.end method

.method public final A0S(Landroid/view/View;)V
    .locals 4

    .line 61570
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 61571
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/RK;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0o(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61572
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->A1y(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61573
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61574
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0b(Lcom/facebook/ads/redexgen/X/RA;Z)V

    .line 61575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61576
    :goto_0
    return-void

    .line 61577
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 61578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    .line 61579
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0b(Lcom/facebook/ads/redexgen/X/RA;Z)V

    .line 61580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61581
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x7a

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61582
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0T(Landroid/view/View;)V
    .locals 3

    .line 61583
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v2

    .line 61584
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/7M;->removeDetachedView(Landroid/view/View;Z)V

    .line 61586
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61587
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0Y()V

    .line 61588
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RA;->A0X(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61589
    return-void

    .line 61590
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61591
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A0U()V

    goto :goto_0
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/Qq;Lcom/facebook/ads/redexgen/X/Qq;Z)V
    .locals 1

    .line 61592
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0P()V

    .line 61593
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0H()Lcom/facebook/ads/redexgen/X/R9;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/R9;->A08(Lcom/facebook/ads/redexgen/X/Qq;Lcom/facebook/ads/redexgen/X/Qq;Z)V

    .line 61594
    return-void
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/R9;)V
    .locals 5

    .line 61595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    if-eqz v0, :cond_0

    .line 61596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R9;->A04()V

    .line 61597
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    .line 61598
    if-eqz p1, :cond_2

    .line 61599
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/R9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "lsZK0accpgBQgJYjkQv5Abfcayw6pcR0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Z7g3Rn3k4gV3vNYe90sCMa52PcoBzFf1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/R9;->A07(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 61600
    :cond_2
    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/RI;)V
    .locals 0

    .line 61601
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Lcom/facebook/ads/redexgen/X/RI;

    .line 61602
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 8

    .line 61603
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61604
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x38

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61605
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0h()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    .line 61606
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61607
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "XmVzY8sdohxIZJ5Ojk7HGi6GVO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "m3xjIJQIi7Ro4dRZ8OgPCgQ0SJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v4, :cond_f

    .line 61608
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-nez v0, :cond_e

    .line 61609
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0K(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v7

    .line 61610
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-eqz v0, :cond_6

    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    .line 61611
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qq;->A0N(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 61612
    .local v3, "forceRecycle":Z
    :goto_1
    const/4 v1, 0x0

    .line 61613
    .local v4, "cached":Z
    const/4 v6, 0x0

    .line 61614
    .local v5, "recycled":Z
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61615
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    if-lez v0, :cond_a

    .line 61616
    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0o(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 61617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 61618
    .local v6, "cachedViewSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:I

    if-lt v4, v0, :cond_5

    if-lez v4, :cond_5

    .line 61619
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/RA;->A07(I)V

    .line 61620
    add-int/lit8 v4, v4, -0x1

    .line 61621
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_0

    .line 61622
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 61623
    .local v1, "targetCacheIndex":I
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "Q1OZT6LnkVYbRcYxNkw6Mn7gWXto99yC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "RVxEgLz70808ymY8dF1xTnmhZlFYlEUe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A10()Z

    move-result v0

    if-eqz v0, :cond_9

    if-lez v4, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A02:Lcom/facebook/ads/redexgen/X/hs;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    .line 61624
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hs;->A05(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 61625
    add-int/lit8 v2, v4, -0x1

    .line 61626
    .local v7, "cacheIndex":I
    :goto_2
    if-ltz v2, :cond_8

    .line 61627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/RK;->A03:I

    .line 61628
    .local p0, "cachedPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A02:Lcom/facebook/ads/redexgen/X/hs;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/hs;->A05(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 61629
    :cond_8
    add-int/lit8 v4, v2, 0x1

    .line 61630
    .end local v7    # "cacheIndex":I
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 61631
    const/4 v1, 0x1

    .line 61632
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_a
    if-nez v1, :cond_b

    .line 61633
    invoke-virtual {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/RA;->A0Z(Lcom/facebook/ads/redexgen/X/RK;Z)V

    .line 61634
    const/4 v6, 0x1

    .line 61635
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0t:Lcom/facebook/ads/redexgen/X/RS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RS;->A0B(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61636
    if-nez v1, :cond_c

    if-nez v6, :cond_c

    if-eqz v7, :cond_c

    .line 61637
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61638
    :cond_c
    return-void

    .line 61639
    .end local p0    # "cachedPos":I
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 61640
    goto :goto_2

    .line 61641
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x6e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61642
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61643
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15d

    const/16 v1, 0x51

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61644
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 4

    .line 61645
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0I(Lcom/facebook/ads/redexgen/X/RK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61646
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61647
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61648
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RA;->A0A:[Ljava/lang/String;

    const-string v1, "g9dUUHlnr2dNWy2bvXbXpUnxFV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "1VljHDZyW4yQ7QRXruVc6WBcEp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61649
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A07(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/RA;

    .line 61650
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0L(Lcom/facebook/ads/redexgen/X/RK;Z)Z

    .line 61651
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RK;->A0U()V

    .line 61652
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/RK;Z)V
    .locals 3

    .line 61653
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0s(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61654
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/RK;->A0o(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61655
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/facebook/ads/redexgen/X/RK;->A0a(II)V

    .line 61656
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ph;->A0B(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PL;)V

    .line 61657
    :cond_0
    if-eqz p2, :cond_1

    .line 61658
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0B(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61659
    :cond_1
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A08:Lcom/facebook/ads/redexgen/X/7M;

    .line 61660
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RA;->A0H()Lcom/facebook/ads/redexgen/X/R9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R9;->A09(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 61661
    return-void
.end method
