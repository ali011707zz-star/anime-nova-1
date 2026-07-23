.class public final Lj$/util/stream/Y3;
.super Lj$/util/stream/e2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/b4;


# direct methods
.method public constructor <init>(Lj$/util/stream/Z3;Lj$/util/stream/l2;Z)V
    .locals 0

    .line 596
    invoke-direct {p0, p2}, Lj$/util/stream/e2;-><init>(Lj$/util/stream/l2;)V

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    const/4 v0, 0x0

    .line 601
    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->test(D)Z

    throw v0
.end method

.method public final h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
