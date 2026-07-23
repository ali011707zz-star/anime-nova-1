.class public abstract Lcoil/fetch/Fetcher$DefaultImpls;
.super Ljava/lang/Object;
.source "Fetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/fetch/Fetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static handles(Lcoil/fetch/Fetcher;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
