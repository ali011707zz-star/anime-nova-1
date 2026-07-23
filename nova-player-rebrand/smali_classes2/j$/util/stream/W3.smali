.class public final Lj$/util/stream/W3;
.super Lj$/util/stream/g0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/a4;


# virtual methods
.method public final F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 1

    .line 506
    new-instance v0, Lj$/util/stream/c4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/c4;-><init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    return-object p1
.end method

.method public final G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 492
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 492
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lj$/util/stream/a0;

    const/16 v1, 0x15

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 493
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/W3;->F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 497
    :cond_0
    new-instance v0, Lj$/util/stream/i4;

    .line 498
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/X;

    const/4 p2, 0x0

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/i4;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method public final I0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 1

    .line 544
    new-instance p1, Lj$/util/stream/V3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/V3;-><init>(Lj$/util/stream/W3;Lj$/util/stream/l2;Z)V

    return-object p1
.end method

.method public final h(Lj$/util/stream/w0;Z)Lj$/util/stream/b4;
    .locals 1

    .line 544
    new-instance v0, Lj$/util/stream/V3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/V3;-><init>(Lj$/util/stream/W3;Lj$/util/stream/l2;Z)V

    return-object v0
.end method
