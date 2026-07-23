.class public interface abstract Lcoil/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/ImageLoader$Builder;,
        Lcoil/ImageLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/ImageLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/ImageLoader$Companion;->$$INSTANCE:Lcoil/ImageLoader$Companion;

    sput-object v0, Lcoil/ImageLoader;->Companion:Lcoil/ImageLoader$Companion;

    return-void
.end method


# virtual methods
.method public abstract enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
.end method

.method public abstract execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getMemoryCache()Lcoil/memory/MemoryCache;
.end method
