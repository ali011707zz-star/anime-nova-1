.class public Lcom/tonyodev/fetch2core/FetchLogger;
.super Ljava/lang/Object;
.source "FetchLogger.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/Logger;


# instance fields
.field private enabled:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "loggingTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/tonyodev/fetch2core/FetchLogger;->enabled:Z

    .line 18
    iput-object p2, p0, Lcom/tonyodev/fetch2core/FetchLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method private final getLoggingTag()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FetchLogger;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 23
    const-string v0, "fetch2"

    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FetchLogger;->tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/FetchLogger;->getLoggingTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public getEnabled()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/tonyodev/fetch2core/FetchLogger;->enabled:Z

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tonyodev/fetch2core/FetchLogger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/tonyodev/fetch2core/FetchLogger;->enabled:Z

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/tonyodev/fetch2core/FetchLogger;->tag:Ljava/lang/String;

    return-void
.end method
