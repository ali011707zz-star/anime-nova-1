.class public abstract synthetic Lkotlinx/coroutines/future/ContinuationHandler$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/util/concurrent/CompletionException;)Ljava/lang/Throwable;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
