.class public abstract Lcom/facebook/ads/redexgen/X/WU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/WS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2205
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2206
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WU;->A00:Ljava/util/Set;

    .line 2207
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WU;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WU;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70648
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70649
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A00:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70650
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wj;->A00()Lcom/facebook/ads/redexgen/X/Wi;

    move-result-object v1

    const/16 v0, 0xcea

    invoke-interface {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Wi;->AAx(ILjava/lang/Throwable;)V

    .line 70651
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WS;

    .line 70652
    .local v0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/WS;
    if-eqz v0, :cond_0

    .line 70653
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/WS;->AIZ(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 70654
    .end local v0    # "contextRepairHelper":Lcom/facebook/ads/redexgen/X/WS;
    :cond_0
    return-void

    .line 70655
    :cond_1
    throw p0
.end method

.method public static A01(ZLcom/facebook/ads/redexgen/X/WS;)V
    .locals 1

    .line 70656
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70657
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70658
    return-void
.end method

.method public static A02(Ljava/lang/Object;)Z
    .locals 1

    .line 70659
    sget-object v0, Lcom/facebook/ads/redexgen/X/WU;->A00:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
