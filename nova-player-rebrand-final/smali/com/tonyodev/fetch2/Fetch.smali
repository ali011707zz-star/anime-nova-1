.class public interface abstract Lcom/tonyodev/fetch2/Fetch;
.super Ljava/lang/Object;
.source "Fetch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Fetch$DefaultImpls;,
        Lcom/tonyodev/fetch2/Fetch$Impl;
    }
.end annotation


# static fields
.field public static final Impl:Lcom/tonyodev/fetch2/Fetch$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/tonyodev/fetch2/Fetch$Impl;->$$INSTANCE:Lcom/tonyodev/fetch2/Fetch$Impl;

    sput-object v0, Lcom/tonyodev/fetch2/Fetch;->Impl:Lcom/tonyodev/fetch2/Fetch$Impl;

    return-void
.end method


# virtual methods
.method public abstract addListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract cancel(I)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract cancel(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract delete(I)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract delete(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract enqueue(Lcom/tonyodev/fetch2/Request;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract getDownloads(Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract getDownloadsWithStatus(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract hasActiveDownloads(ZLcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract pause(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract pause(Ljava/util/List;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract remove(I)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract remove(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract removeListener(Lcom/tonyodev/fetch2/FetchListener;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract replaceExtras(ILcom/tonyodev/fetch2core/Extras;Lcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract resume(I)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract resume(ILcom/tonyodev/fetch2core/Func;Lcom/tonyodev/fetch2core/Func;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract resume(Ljava/util/List;)Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract resumeAll()Lcom/tonyodev/fetch2/Fetch;
.end method

.method public abstract retry(I)Lcom/tonyodev/fetch2/Fetch;
.end method
