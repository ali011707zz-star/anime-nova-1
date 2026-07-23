.class public abstract Lj$/util/stream/l3;
.super Lj$/util/stream/m3;
.source "SourceFile"

# interfaces
.implements Lj$/util/a0;


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lj$/util/stream/m3;->a()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/a0;

    invoke-interface {v0, p1}, Lj$/util/a0;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 595
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    .line 568
    invoke-virtual {p0}, Lj$/util/stream/m3;->a()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/a0;

    invoke-interface {v0, p1}, Lj$/util/a0;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 595
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lj$/util/stream/l3;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
