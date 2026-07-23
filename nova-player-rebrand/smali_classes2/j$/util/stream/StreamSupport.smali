.class public final Lj$/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TT;>;>;IZ)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lj$/util/stream/a2;

    .line 751
    sget v1, Lj$/util/stream/Z2;->f:I

    and-int/2addr p1, v1

    .line 71
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/a;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method
