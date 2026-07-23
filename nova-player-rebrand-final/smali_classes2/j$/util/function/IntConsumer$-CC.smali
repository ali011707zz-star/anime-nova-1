.class public final synthetic Lj$/util/function/IntConsumer$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    .line 64
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lj$/util/function/d;

    invoke-direct {v0, p0, p1}, Lj$/util/function/d;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method
