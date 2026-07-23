.class public final Lcom/tonyodev/fetch2/fetch/LiveSettings;
.super Ljava/lang/Object;
.source "LiveSettings.kt"


# instance fields
.field private volatile didSanitizeDatabaseOnFirstEntry:Z

.field private final lock:Ljava/lang/Object;

.field private final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->namespace:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDidSanitizeDatabaseOnFirstEntry()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->didSanitizeDatabaseOnFirstEntry:Z

    return v0
.end method

.method public final setDidSanitizeDatabaseOnFirstEntry(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/fetch/LiveSettings;->didSanitizeDatabaseOnFirstEntry:Z

    return-void
.end method
