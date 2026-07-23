.class public abstract Lj$/util/stream/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/j2;


# instance fields
.field public final a:Lj$/util/stream/l2;


# direct methods
.method public constructor <init>(Lj$/util/stream/l2;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/l2;

    iput-object p1, p0, Lj$/util/stream/f2;->a:Lj$/util/stream/l2;

    return-void
.end method


# virtual methods
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

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public c(J)V
    .locals 1

    .line 285
    iget-object v0, p0, Lj$/util/stream/f2;->a:Lj$/util/stream/l2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/l2;->c(J)V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/u1;->F(Lj$/util/stream/j2;Ljava/lang/Integer;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lj$/util/stream/f2;->a:Lj$/util/stream/l2;

    invoke-interface {v0}, Lj$/util/stream/l2;->e()Z

    move-result v0

    return v0
.end method

.method public end()V
    .locals 1

    .line 290
    iget-object v0, p0, Lj$/util/stream/f2;->a:Lj$/util/stream/l2;

    invoke-interface {v0}, Lj$/util/stream/l2;->end()V

    return-void
.end method
