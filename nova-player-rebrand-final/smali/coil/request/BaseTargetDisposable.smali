.class public final Lcoil/request/BaseTargetDisposable;
.super Ljava/lang/Object;
.source "Disposable.kt"

# interfaces
.implements Lcoil/request/Disposable;


# instance fields
.field private final job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/BaseTargetDisposable;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
