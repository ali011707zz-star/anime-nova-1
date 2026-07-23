.class public abstract Lj$/util/stream/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/l2;


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(Lj$/util/stream/r0;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iget-boolean p1, p1, Lj$/util/stream/r0;->b:Z

    xor-int/lit8 p1, p1, 0x1

    .line 257
    iput-boolean p1, p0, Lj$/util/stream/q0;->b:Z

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u1;->C()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u1;->J()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/u1;->K()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(J)V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lj$/util/stream/q0;->a:Z

    return v0
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method
