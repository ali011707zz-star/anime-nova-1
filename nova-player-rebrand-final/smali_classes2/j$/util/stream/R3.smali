.class public final Lj$/util/stream/R3;
.super Lj$/util/stream/X;
.source "SourceFile"


# virtual methods
.method public final F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 1

    .line 139
    new-instance v0, Lj$/util/stream/d4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/d4;-><init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    return-object p1
.end method

.method public final G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 125
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 125
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lj$/util/stream/a0;

    const/16 v1, 0x12

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 126
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/R3;->F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    new-instance v0, Lj$/util/stream/g4;

    .line 131
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Spliterator$OfInt;

    .line 828
    invoke-direct {v0, p1}, Lj$/util/stream/k4;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final I0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 0

    .line 145
    new-instance p1, Lj$/util/stream/Q3;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/Q3;-><init>(Lj$/util/stream/R3;Lj$/util/stream/l2;)V

    return-object p1
.end method
