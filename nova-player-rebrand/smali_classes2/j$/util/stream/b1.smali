.class public final Lj$/util/stream/b1;
.super Lj$/util/stream/R2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/A0;
.implements Lj$/util/stream/u0;


# virtual methods
.method public final a(I)Lj$/util/stream/D0;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic a(I)Lj$/util/stream/E0;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/b1;->a(I)Lj$/util/stream/D0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u1;->C()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u1;->K()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u1;->G(Lj$/util/stream/j2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1696
    invoke-super {p0}, Lj$/util/stream/V2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final build()Lj$/util/stream/A0;
    .locals 0

    return-object p0
.end method

.method public final build()Lj$/util/stream/E0;
    .locals 0

    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1670
    invoke-virtual {p0}, Lj$/util/stream/V2;->clear()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/V2;->s(J)V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u1;->F(Lj$/util/stream/j2;Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p2, [I

    .line 1690
    invoke-super {p0, p1, p2}, Lj$/util/stream/V2;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 1662
    invoke-super {p0, p1}, Lj$/util/stream/V2;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/u1;->T(Lj$/util/stream/A0;JJ)Lj$/util/stream/A0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k([Ljava/lang/Object;I)V
    .locals 0

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/u1;->N(Lj$/util/stream/A0;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final synthetic m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u1;->L(Lj$/util/stream/D0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/R2;->v()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/a0;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/R2;->v()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
