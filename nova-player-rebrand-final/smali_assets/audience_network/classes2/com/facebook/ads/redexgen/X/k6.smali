.class public abstract Lcom/facebook/ads/redexgen/X/k6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/k5;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/k5;

.field public A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89424
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89425
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A04:Lcom/facebook/ads/redexgen/X/k5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    .line 89426
    return-void
.end method

.method private A01()Z
    .locals 2

    .line 89427
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A03:Lcom/facebook/ads/redexgen/X/k5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    .line 89428
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/k6;->A03()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A01:Ljava/lang/Object;

    .line 89429
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A02:Lcom/facebook/ads/redexgen/X/k5;

    if-eq v1, v0, :cond_0

    .line 89430
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A05:Lcom/facebook/ads/redexgen/X/k5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    .line 89431
    const/4 v0, 0x1

    return v0

    .line 89432
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A02()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 89433
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A02:Lcom/facebook/ads/redexgen/X/k5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    .line 89434
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A03()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final hasNext()Z
    .locals 4

    .line 89435
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A03:Lcom/facebook/ads/redexgen/X/k5;

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ki;->A0D(Z)V

    .line 89436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/k5;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89437
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/k6;->A01()Z

    move-result v0

    return v0

    .line 89438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89439
    :pswitch_1
    return v1

    .line 89440
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 89441
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/k6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89442
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A04:Lcom/facebook/ads/redexgen/X/k5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/k5;

    .line 89443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A01:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kb;->A00(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89444
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A01:Ljava/lang/Object;

    .line 89445
    return-object v1

    .line 89446
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 89447
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k6;, "Lcom/google/common/base/AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
