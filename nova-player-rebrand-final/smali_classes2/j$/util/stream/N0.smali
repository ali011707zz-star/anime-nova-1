.class public final Lj$/util/stream/N0;
.super Lj$/util/stream/O0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/C0;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u1;->R(Lj$/util/stream/C0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/u1;->U(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k([Ljava/lang/Object;I)V
    .locals 0

    .line 394
    check-cast p1, [Ljava/lang/Long;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/u1;->O(Lj$/util/stream/C0;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    .line 455
    new-array p1, p1, [J

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 915
    new-instance v0, Lj$/util/stream/e1;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/h1;-><init>(Lj$/util/stream/E0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/a0;
    .locals 1

    .line 915
    new-instance v0, Lj$/util/stream/e1;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/h1;-><init>(Lj$/util/stream/E0;)V

    return-object v0
.end method
