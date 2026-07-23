.class public abstract Lcom/tonyodev/fetch2/Fetch$DefaultImpls;
.super Ljava/lang/Object;
.source "Fetch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Fetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic enqueue$default(Lcom/tonyodev/fetch2/Fetch;Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;ILjava/lang/Object;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 60
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/Fetch;->enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: enqueue"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic resume$default(Lcom/tonyodev/fetch2/Fetch;ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;ILjava/lang/Object;)Lcom/tonyodev/fetch2/Fetch;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 208
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/tonyodev/fetch2/Fetch;->resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resume"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
