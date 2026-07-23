.class public final Lcoil/request/ViewTargetDisposable;
.super Ljava/lang/Object;
.source "Disposable.kt"

# interfaces
.implements Lcoil/request/Disposable;


# instance fields
.field private final requestId:Ljava/util/UUID;

.field private final target:Lcoil/target/ViewTarget;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcoil/target/ViewTarget;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcoil/request/ViewTargetDisposable;->requestId:Ljava/util/UUID;

    .line 61
    iput-object p2, p0, Lcoil/request/ViewTargetDisposable;->target:Lcoil/target/ViewTarget;

    return-void
.end method
