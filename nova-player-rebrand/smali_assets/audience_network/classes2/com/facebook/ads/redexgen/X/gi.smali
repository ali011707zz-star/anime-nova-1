.class public Lcom/facebook/ads/redexgen/X/gi;
.super Lcom/facebook/ads/redexgen/X/T8;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/facebook/ads/internal/context/Repairable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/T6;

.field public final A03:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/T5;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Lt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2901
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Fl94EIzOk67aYUPduHJ8UazEL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sAhktSZOOrm35xxj8Imdq8RPkj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oRYwVa3KjTvntAfrBK1sqTqE8vcnrhu1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DAigVkrFkMuOUy14T2FK5zmWgvJcIn3a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "an5oIaHMQLp81wCZBnKMJTBSx7KtQFJf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wEWpxEoKGSO43ttKCSegU3t35jPnkl3s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WpWdxAQuBweGThqHfmbUTgqTG7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dWX8I2VlCkDjmK6jHvJYkvPP690yaesv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gi;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V
    .locals 1

    .line 83386
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)V

    .line 83387
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    .line 83388
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83389
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83390
    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/T6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Lcom/facebook/ads/redexgen/X/T6;

    .line 83391
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83393
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Ljava/lang/ref/WeakReference;

    .line 83394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;Lcom/facebook/ads/redexgen/X/Lt;)V
    .locals 2

    .line 83395
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)V

    .line 83396
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    .line 83397
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83398
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83399
    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/T6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Lcom/facebook/ads/redexgen/X/T6;

    .line 83400
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83402
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/gi;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 83403
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 83404
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Ljava/lang/ref/WeakReference;

    .line 83405
    :goto_0
    return-void

    .line 83406
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 83407
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 83408
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 83409
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 83410
    :cond_0
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/gi;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gi;

    .line 83411
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83412
    check-cast p0, Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 83413
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 83414
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final A0E()Landroid/app/Activity;
    .locals 1

    .line 83415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public A0F()Lcom/facebook/ads/redexgen/X/Lt;
    .locals 1

    .line 83416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lt;

    .line 83417
    .local v0, "funnel":Lcom/facebook/ads/redexgen/X/Lt;
    if-nez v0, :cond_0

    .line 83418
    new-instance v0, Lcom/facebook/ads/redexgen/X/kX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kX;-><init>()V

    .line 83419
    :cond_0
    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/T5;
    .locals 1

    .line 83420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/T5;

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/T6;
    .locals 1

    .line 83421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Lcom/facebook/ads/redexgen/X/T6;

    return-object v0
.end method

.method public final A0I()Ljava/lang/Object;
    .locals 1

    .line 83422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0J(Landroid/app/Activity;)V
    .locals 1

    .line 83423
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Ljava/lang/ref/WeakReference;

    .line 83424
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/Lt;)V
    .locals 1

    .line 83425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83426
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 83427
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V

    .line 83428
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    .line 83429
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 83430
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0K(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 83431
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T8;->A0D(Ljava/lang/String;)V

    .line 83432
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gi;->A0G()Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0N(Lcom/facebook/ads/redexgen/X/T5;)V

    .line 83433
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/T5;)V
    .locals 1

    .line 83434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83435
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/internal/context/Repairable;)V
    .locals 2

    .line 83436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83437
    return-void
.end method

.method public final A0P(Ljava/lang/Object;)V
    .locals 1

    .line 83438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83439
    return-void
.end method

.method public final A0Q(Ljava/lang/Throwable;)V
    .locals 5

    .line 83440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/gi;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/gi;->A06:[Ljava/lang/String;

    const-string v1, "cq4W2mN05Su2gaFDi5CYFjM7nJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "g7MgkZWMqMCaiMVBRzNoHUUy7c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83441
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/context/Repairable;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/context/Repairable;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/context/Repairable;->repair(Ljava/lang/Throwable;)V

    .line 83442
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/facebook/ads/internal/context/Repairable;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 83443
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
