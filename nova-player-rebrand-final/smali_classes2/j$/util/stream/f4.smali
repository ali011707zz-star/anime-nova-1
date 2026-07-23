.class public final Lj$/util/stream/f4;
.super Lj$/util/stream/h4;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 885
    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 923
    new-instance v0, Lj$/util/stream/f4;

    .line 833
    invoke-direct {v0, p1, p0}, Lj$/util/stream/k4;-><init>(Lj$/util/Spliterator;Lj$/util/stream/k4;)V

    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2

    .line 896
    iget-boolean v0, p0, Lj$/util/stream/k4;->c:Z

    iget-object v1, p0, Lj$/util/stream/k4;->a:Lj$/util/Spliterator;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lj$/util/stream/k4;->c:Z

    .line 900
    check-cast v1, Lj$/util/Spliterator$OfInt;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {p0}, Lj$/util/stream/k4;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/util/stream/h4;->e:I

    const/4 v0, 0x0

    .line 902
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 912
    iget v1, p0, Lj$/util/stream/h4;->e:I

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    return v0

    .line 917
    :cond_3
    check-cast v1, Lj$/util/Spliterator$OfInt;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method
