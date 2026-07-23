.class public abstract Lcom/facebook/ads/redexgen/X/Bv;
.super Lcom/facebook/ads/redexgen/X/4C;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/lk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/4C<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/lk;

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

    .line 31310
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bv;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4C;-><init>()V

    .line 31311
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A04:Lcom/facebook/ads/redexgen/X/lk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    .line 31312
    return-void
.end method

.method private A00()Z
    .locals 2

    .line 31313
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bv;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A03:Lcom/facebook/ads/redexgen/X/lk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    .line 31314
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A02()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Ljava/lang/Object;

    .line 31315
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A02:Lcom/facebook/ads/redexgen/X/lk;

    if-eq v1, v0, :cond_0

    .line 31316
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A05:Lcom/facebook/ads/redexgen/X/lk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    .line 31317
    const/4 v0, 0x1

    return v0

    .line 31318
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A01()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 31319
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bv;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A02:Lcom/facebook/ads/redexgen/X/lk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    .line 31320
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A02()Ljava/lang/Object;
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

    .line 31321
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bv;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A03:Lcom/facebook/ads/redexgen/X/lk;

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ki;->A0D(Z)V

    .line 31322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lk;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 31323
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A00()Z

    move-result v0

    return v0

    .line 31324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31325
    :pswitch_1
    return v1

    .line 31326
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
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31327
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bv;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bv;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31328
    sget-object v0, Lcom/facebook/ads/redexgen/X/lk;->A04:Lcom/facebook/ads/redexgen/X/lk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Lcom/facebook/ads/redexgen/X/lk;

    .line 31329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qF;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31330
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Ljava/lang/Object;

    .line 31331
    return-object v1

    .line 31332
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
