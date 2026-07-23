.class public abstract Lj$/util/stream/d2;
.super Lj$/util/stream/a;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Stream;


# virtual methods
.method public final B0(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 0

    .line 109
    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/u1;->X(Lj$/util/stream/u1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    return-object p1
.end method

.method public final C0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
    .locals 2

    .line 127
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/l2;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method public final D0()Lj$/util/stream/a3;
    .locals 1

    .line 101
    sget-object v0, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    return-object v0
.end method

.method public final E0(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    .line 121
    new-instance v0, Lj$/util/stream/m3;

    invoke-direct {v0, p1}, Lj$/util/stream/m3;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final L0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    .line 116
    new-instance v0, Lj$/util/stream/I3;

    .line 275
    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/b3;-><init>(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 533
    sget-object v0, Lj$/util/stream/r0;->ALL:Lj$/util/stream/r0;

    invoke-static {v0, p1}, Lj$/util/stream/u1;->u0(Lj$/util/stream/r0;Ljava/util/function/Predicate;)Lj$/util/concurrent/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 528
    sget-object v0, Lj$/util/stream/r0;->ANY:Lj$/util/stream/r0;

    invoke-static {v0, p1}, Lj$/util/stream/u1;->u0(Lj$/util/stream/r0;Ljava/util/function/Predicate;)Lj$/util/concurrent/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final collect(Lj$/util/stream/Collector;)Ljava/lang/Object;
    .locals 7

    .line 373
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->s:Z

    if-eqz v0, :cond_1

    .line 571
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/g;->CONCURRENT:Lj$/util/stream/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    iget v1, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/g;->UNORDERED:Lj$/util/stream/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 574
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 575
    new-instance v2, Lj$/util/concurrent/t;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1, v0}, Lj$/util/concurrent/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lj$/util/stream/d2;->forEach(Ljava/util/function/Consumer;)V

    move-object v6, p1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Collector;

    invoke-interface {v0}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v5

    .line 158
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v4

    .line 159
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    .line 177
    new-instance v1, Lj$/util/stream/G1;

    sget-object v2, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/G1;-><init>(Lj$/util/stream/a3;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)V

    .line 578
    invoke-virtual {p0, v1}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    :goto_0
    invoke-interface {v6}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lj$/util/stream/g;->IDENTITY_FINISH:Lj$/util/stream/g;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 582
    :cond_2
    invoke-interface {v6}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    .line 208
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lj$/util/stream/z1;

    sget-object v1, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    const/4 v5, 0x3

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/z1;-><init>(Lj$/util/stream/a3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 589
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    .line 248
    new-instance v0, Lj$/util/stream/B1;

    const/4 v1, 0x2

    .line 899
    invoke-direct {v0, v1}, Lj$/util/stream/B1;-><init>(I)V

    .line 605
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Lj$/util/q;)Lj$/util/stream/Stream;
    .locals 3

    .line 255
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Z2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final distinct()Lj$/util/stream/Stream;
    .locals 3

    .line 56
    new-instance v0, Lj$/util/stream/m;

    sget v1, Lj$/util/stream/Z2;->m:I

    sget v2, Lj$/util/stream/Z2;->t:I

    or-int/2addr v1, v2

    .line 94
    invoke-direct {v0, p0, v1}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 2

    .line 490
    sget v0, Lj$/util/stream/l4;->a:I

    .line 332
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v0, Lj$/util/stream/P3;

    sget v1, Lj$/util/stream/l4;->b:I

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/P3;-><init>(Lj$/util/stream/d2;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    .line 163
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Z2;->t:I

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final findAny()Lj$/util/Optional;
    .locals 1

    .line 60
    sget-object v0, Lj$/util/stream/G;->d:Lj$/util/stream/C;

    .line 548
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final findFirst()Lj$/util/Optional;
    .locals 1

    .line 60
    sget-object v0, Lj$/util/stream/G;->c:Lj$/util/stream/C;

    .line 543
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    .line 71
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/Consumer;Z)V

    .line 497
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 2

    .line 71
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/Consumer;Z)V

    .line 502
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lj$/util/stream/a;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    .line 667
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v1, Lj$/util/c0;

    invoke-direct {v1, v0}, Lj$/util/c0;-><init>(Lj$/util/Spliterator;)V

    return-object v1
.end method

.method public final l(Lj$/util/q;)Lj$/util/stream/LongStream;
    .locals 3

    .line 388
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v0, Lj$/util/stream/e0;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Z2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/e0;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/Stream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 470
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/w2;->h(Lj$/util/stream/d2;JJ)Lj$/util/stream/n2;

    move-result-object p1

    return-object p1

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final map(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 3

    .line 187
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 3

    .line 238
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
    .locals 3

    .line 204
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lj$/util/stream/T;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/T;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
    .locals 3

    .line 221
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lj$/util/stream/e0;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/e0;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final max(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 2

    .line 73
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lj$/util/function/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/function/a;-><init>(Ljava/util/Comparator;I)V

    .line 594
    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final min(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 2

    .line 58
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lj$/util/function/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/function/a;-><init>(Ljava/util/Comparator;I)V

    .line 599
    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/util/q;)Lj$/util/stream/IntStream;
    .locals 3

    .line 300
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v0, Lj$/util/stream/T;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Z2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/T;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 538
    sget-object v0, Lj$/util/stream/r0;->NONE:Lj$/util/stream/r0;

    invoke-static {v0, p1}, Lj$/util/stream/u1;->u0(Lj$/util/stream/r0;Ljava/util/function/Predicate;)Lj$/util/concurrent/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;
    .locals 1

    .line 433
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Lj$/util/stream/q;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/q;-><init>(Lj$/util/stream/d2;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;
    .locals 3

    .line 106
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lj$/util/stream/x1;

    sget-object v1, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/x1;-><init>(Lj$/util/stream/a3;Ljava/lang/Object;I)V

    .line 558
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/Optional;

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 6

    .line 70
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lj$/util/stream/z1;

    sget-object v1, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    const/4 v5, 0x2

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/z1;-><init>(Lj$/util/stream/a3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 563
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 6

    .line 70
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lj$/util/stream/z1;

    sget-object v1, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    const/4 v5, 0x2

    move-object v3, p2

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/z1;-><init>(Lj$/util/stream/a3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 553
    invoke-virtual {p0, v0}, Lj$/util/stream/a;->z0(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)Lj$/util/stream/Stream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 480
    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/w2;->h(Lj$/util/stream/d2;JJ)Lj$/util/stream/n2;

    move-result-object p1

    return-object p1

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/Stream;
    .locals 1

    .line 51
    new-instance v0, Lj$/util/stream/H2;

    invoke-direct {v0, p0}, Lj$/util/stream/H2;-><init>(Lj$/util/stream/d2;)V

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1

    .line 63
    new-instance v0, Lj$/util/stream/H2;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/H2;-><init>(Lj$/util/stream/d2;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final t0(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;
    .locals 0

    .line 133
    invoke-static {p1, p2, p3}, Lj$/util/stream/u1;->W(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 2

    .line 485
    sget v0, Lj$/util/stream/l4;->a:I

    .line 63
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lj$/util/stream/N3;

    sget v1, Lj$/util/stream/l4;->a:I

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/N3;-><init>(Lj$/util/stream/d2;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 523
    new-instance v0, Lj$/util/stream/a0;

    const/16 v1, 0xc

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 523
    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    .line 517
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->A0(Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/util/stream/u1;->i0(Lj$/util/stream/E0;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object v0

    .line 518
    invoke-interface {v0, p1}, Lj$/util/stream/E0;->m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toList()Ljava/util/List;
    .locals 2

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lj$/util/stream/d2;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lj$/util/q;)Lj$/util/stream/DoubleStream;
    .locals 3

    .line 344
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/Z2;->p:I

    sget v2, Lj$/util/stream/Z2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Z2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method
