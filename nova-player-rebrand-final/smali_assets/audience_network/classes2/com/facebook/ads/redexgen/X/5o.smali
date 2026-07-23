.class public final Lcom/facebook/ads/redexgen/X/5o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProperties"
.end annotation


# instance fields
.field public A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A01:Ljava/util/Map;

    .line 15328
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 15329
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 15330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5o;->A01:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Ljava/util/Map;

    .line 15331
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5o;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 15332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 15333
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Ljava/util/Map;

    .line 15334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A01:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15335
    monitor-exit p0

    return-void

    .line 15336
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5o;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
