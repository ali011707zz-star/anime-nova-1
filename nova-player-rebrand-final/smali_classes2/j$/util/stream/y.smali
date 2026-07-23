.class public abstract Lj$/util/stream/y;
.super Lj$/util/stream/z;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 623
    const-class v0, Lj$/util/stream/z;

    return-void
.end method


# virtual methods
.method public final E0(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    .line 152
    new-instance v0, Lj$/util/stream/i3;

    .line 563
    invoke-direct {v0, p1}, Lj$/util/stream/m3;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final parallel()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 311
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/a;->s:Z

    return-object p0
.end method

.method public final sequential()Lj$/util/stream/DoubleStream;
    .locals 2

    .line 304
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/a;->s:Z

    return-object p0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lj$/util/stream/z;->spliterator()Lj$/util/S;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 513
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    iget v1, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 311
    :cond_0
    new-instance v0, Lj$/util/stream/r;

    sget v1, Lj$/util/stream/Z2;->r:I

    const/4 v2, 0x1

    .line 90
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method
