.class public final Lj$/util/stream/B3;
.super Lj$/util/stream/D3;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public f:I


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1151
    iput p1, p0, Lj$/util/stream/B3;->f:I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 1135
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 1166
    new-instance v0, Lj$/util/stream/B3;

    .line 1081
    invoke-direct {v0, p1, p0}, Lj$/util/stream/G3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/G3;)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/c;->b(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 1135
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 1156
    iget v0, p0, Lj$/util/stream/B3;->f:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final i(I)Lj$/util/stream/f3;
    .locals 1

    .line 1161
    new-instance v0, Lj$/util/stream/d3;

    invoke-direct {v0, p1}, Lj$/util/stream/d3;-><init>(I)V

    return-object v0
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/c;->g(Lj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
