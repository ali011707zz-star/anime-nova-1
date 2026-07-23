.class public final Lcom/facebook/ads/redexgen/X/pZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pZ;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/pg;

.field public final A02:Z

.field public final A03:[I

.field public final A04:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3380
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A07:Ljava/lang/String;

    .line 3381
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A09:Ljava/lang/String;

    .line 3382
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A08:Ljava/lang/String;

    .line 3383
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A06:Ljava/lang/String;

    .line 3384
    new-instance v0, Lcom/facebook/ads/redexgen/X/pa;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pa;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;Z[I[Z)V
    .locals 4

    .line 104353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104354
    iget v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A00:I

    .line 104355
    iget v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A00:I

    array-length v0, p3

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A00:I

    array-length v0, p4

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 104356
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A01:Lcom/facebook/ads/redexgen/X/pg;

    .line 104357
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A00:I

    if-le v0, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/pZ;->A02:Z

    .line 104358
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A03:[I

    .line 104359
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A04:[Z

    .line 104360
    return-void

    .line 104361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pZ;
    .locals 5

    .line 104362
    sget-object v1, Lcom/facebook/ads/redexgen/X/pg;->A06:Lcom/facebook/ads/redexgen/X/23;

    sget-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A07:Ljava/lang/String;

    .line 104363
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/pg;

    .line 104364
    .local v0, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    sget-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A09:Ljava/lang/String;

    .line 104365
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v0, v0, [I

    .line 104366
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 104367
    .local v1, "trackSupport":[I
    sget-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A08:Ljava/lang/String;

    .line 104368
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v0, v0, [Z

    .line 104369
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 104370
    .local v2, "selected":[Z
    sget-object v1, Lcom/facebook/ads/redexgen/X/pZ;->A06:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 104371
    .local v3, "adaptiveSupported":Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/pZ;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/pZ;-><init>(Lcom/facebook/ads/redexgen/X/pg;Z[I[Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104372
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 104373
    return v3

    .line 104374
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 104375
    .end local v2
    :cond_1
    return v2

    .line 104376
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/pZ;

    .line 104377
    .local v2, "that":Lcom/facebook/ads/redexgen/X/pZ;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pZ;->A02:Z

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A01:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pZ;->A01:Lcom/facebook/ads/redexgen/X/pg;

    .line 104378
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A03:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pZ;->A03:[I

    .line 104379
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pZ;->A04:[Z

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pZ;->A04:[Z

    .line 104380
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104381
    :goto_0
    return v3

    .line 104382
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 104383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A01:Lcom/facebook/ads/redexgen/X/pg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pg;->hashCode()I

    move-result v0

    .line 104384
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A02:Z

    add-int/2addr v1, v0

    .line 104385
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A03:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 104386
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pZ;->A04:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 104387
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
