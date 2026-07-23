.class public final Lj$/util/stream/N3;
.super Lj$/util/stream/b2;
.source "SourceFile"


# instance fields
.field public final synthetic t:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/d2;ILjava/util/function/Predicate;)V
    .locals 0

    .line 64
    iput-object p3, p0, Lj$/util/stream/N3;->t:Ljava/util/function/Predicate;

    .line 94
    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 1

    .line 82
    new-instance v0, Lj$/util/stream/d4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/d4;-><init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    return-object p1
.end method

.method public final G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 68
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 68
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lj$/util/stream/a0;

    const/4 v1, 0x4

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/N3;->F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    new-instance v0, Lj$/util/stream/j4;

    .line 74
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/N3;->t:Ljava/util/function/Predicate;

    const/4 v1, 0x1

    .line 740
    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/j4;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    return-object v0
.end method

.method public final I0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 0

    .line 88
    new-instance p1, Lj$/util/stream/k;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/k;-><init>(Lj$/util/stream/N3;Lj$/util/stream/l2;)V

    return-object p1
.end method
