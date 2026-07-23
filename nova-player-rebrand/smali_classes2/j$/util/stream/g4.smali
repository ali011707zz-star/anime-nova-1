.class public final Lj$/util/stream/g4;
.super Lj$/util/stream/h4;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 843
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 881
    new-instance v0, Lj$/util/stream/g4;

    .line 833
    invoke-direct {v0, p1, p0}, Lj$/util/stream/k4;-><init>(Lj$/util/Spliterator;Lj$/util/stream/k4;)V

    return-object v0
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 843
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/g4;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1

    .line 855
    iget-boolean p1, p0, Lj$/util/stream/k4;->c:Z

    if-eqz p1, :cond_1

    .line 856
    invoke-virtual {p0}, Lj$/util/stream/k4;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj$/util/stream/k4;->a:Lj$/util/Spliterator;

    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 857
    invoke-interface {p1, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/util/stream/h4;->e:I

    const/4 v0, 0x0

    .line 858
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 864
    iput-boolean p1, p0, Lj$/util/stream/k4;->c:Z

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfInt;
    .locals 1

    .line 876
    iget-object v0, p0, Lj$/util/stream/k4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/k4;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/g4;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/a0;
    .locals 1

    .line 843
    invoke-virtual {p0}, Lj$/util/stream/g4;->trySplit()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
