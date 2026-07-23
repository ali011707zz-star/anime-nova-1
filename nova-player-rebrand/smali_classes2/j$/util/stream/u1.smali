.class public abstract Lj$/util/stream/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/K3;


# static fields
.field public static final a:Lj$/util/stream/W0;

.field public static final b:Lj$/util/stream/U0;

.field public static final c:Lj$/util/stream/V0;

.field public static final d:Lj$/util/stream/T0;

.field public static final e:[I

.field public static final f:[J

.field public static final g:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lj$/util/stream/W0;

    .line 566
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object v0, Lj$/util/stream/u1;->a:Lj$/util/stream/W0;

    .line 68
    new-instance v0, Lj$/util/stream/U0;

    .line 566
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    sput-object v0, Lj$/util/stream/u1;->b:Lj$/util/stream/U0;

    .line 69
    new-instance v0, Lj$/util/stream/V0;

    .line 566
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object v0, Lj$/util/stream/u1;->c:Lj$/util/stream/V0;

    .line 70
    new-instance v0, Lj$/util/stream/T0;

    .line 566
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    sput-object v0, Lj$/util/stream/u1;->d:Lj$/util/stream/T0;

    const/4 v0, 0x0

    .line 1316
    new-array v1, v0, [I

    sput-object v1, Lj$/util/stream/u1;->e:[I

    .line 1317
    new-array v1, v0, [J

    sput-object v1, Lj$/util/stream/u1;->f:[J

    .line 1318
    new-array v0, v0, [D

    sput-object v0, Lj$/util/stream/u1;->g:[D

    return-void
.end method

.method public static C()V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static D(Lj$/util/stream/i2;Ljava/lang/Double;)V
    .locals 2

    .line 229
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/i2;->accept(D)V

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfDouble.accept(Double)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic E(Lj$/util/stream/i2;Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Lj$/util/stream/i2;->n(Ljava/lang/Double;)V

    return-void
.end method

.method public static F(Lj$/util/stream/j2;Ljava/lang/Integer;)V
    .locals 1

    .line 195
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lj$/util/stream/j2;->accept(I)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic G(Lj$/util/stream/j2;Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lj$/util/stream/j2;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method public static H(Lj$/util/stream/k2;Ljava/lang/Long;)V
    .locals 2

    .line 212
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/k2;->accept(J)V

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic I(Lj$/util/stream/k2;Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Lj$/util/stream/k2;->l(Ljava/lang/Long;)V

    return-void
.end method

.method public static J()V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static K()V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static L(Lj$/util/stream/D0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4

    .line 268
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 271
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 274
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 275
    invoke-interface {p0, p1, v0}, Lj$/util/stream/E0;->k([Ljava/lang/Object;I)V

    return-object p1

    .line 273
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static M(Lj$/util/stream/y0;[Ljava/lang/Double;I)V
    .locals 4

    .line 505
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 508
    invoke-interface {p0}, Lj$/util/stream/D0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    const/4 v0, 0x0

    .line 509
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 510
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static N(Lj$/util/stream/A0;[Ljava/lang/Integer;I)V
    .locals 3

    .line 349
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 352
    invoke-interface {p0}, Lj$/util/stream/D0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    .line 353
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 354
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static O(Lj$/util/stream/C0;[Ljava/lang/Long;I)V
    .locals 4

    .line 426
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 429
    invoke-interface {p0}, Lj$/util/stream/D0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    .line 430
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 431
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static P(Lj$/util/stream/y0;Ljava/util/function/Consumer;)V
    .locals 1

    .line 483
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/D0;->g(Ljava/lang/Object;)V

    return-void

    .line 487
    :cond_0
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 489
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object p0

    check-cast p0, Lj$/util/S;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static Q(Lj$/util/stream/A0;Ljava/util/function/Consumer;)V
    .locals 1

    .line 329
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 330
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/D0;->g(Ljava/lang/Object;)V

    return-void

    .line 333
    :cond_0
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 335
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfInt;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static R(Lj$/util/stream/C0;Ljava/util/function/Consumer;)V
    .locals 1

    .line 406
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 407
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/D0;->g(Ljava/lang/Object;)V

    return-void

    .line 410
    :cond_0
    sget-boolean v0, Lj$/util/stream/M3;->a:Z

    if-nez v0, :cond_1

    .line 412
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object p0

    check-cast p0, Lj$/util/X;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 411
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/M3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static S(Lj$/util/stream/y0;JJ)Lj$/util/stream/y0;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 516
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 519
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object v2

    check-cast v2, Lj$/util/S;

    .line 520
    invoke-static {v0, v1}, Lj$/util/stream/u1;->e0(J)Lj$/util/stream/t0;

    move-result-object v3

    .line 521
    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    .line 522
    new-instance v6, Lj$/util/stream/x0;

    const/4 v7, 0x0

    .line 0
    invoke-direct {v6, v7}, Lj$/util/stream/x0;-><init>(I)V

    .line 522
    invoke-interface {v2, v6}, Lj$/util/S;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 523
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 524
    invoke-interface {v2, v3}, Lj$/util/S;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 526
    invoke-interface {v2, v3}, Lj$/util/S;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 528
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    .line 529
    invoke-interface {v3}, Lj$/util/stream/t0;->build()Lj$/util/stream/y0;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lj$/util/stream/A0;JJ)Lj$/util/stream/A0;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 363
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator$OfInt;

    .line 364
    invoke-static {v0, v1}, Lj$/util/stream/u1;->o0(J)Lj$/util/stream/u0;

    move-result-object v3

    .line 365
    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    .line 366
    new-instance v6, Lj$/util/stream/z0;

    const/4 v7, 0x0

    .line 0
    invoke-direct {v6, v7}, Lj$/util/stream/z0;-><init>(I)V

    .line 366
    invoke-interface {v2, v6}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 368
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 370
    invoke-interface {v2, v3}, Lj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    .line 373
    invoke-interface {v3}, Lj$/util/stream/u0;->build()Lj$/util/stream/A0;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 437
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 440
    invoke-interface {p0}, Lj$/util/stream/D0;->spliterator()Lj$/util/a0;

    move-result-object v2

    check-cast v2, Lj$/util/X;

    .line 441
    invoke-static {v0, v1}, Lj$/util/stream/u1;->p0(J)Lj$/util/stream/v0;

    move-result-object v3

    .line 442
    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    .line 443
    new-instance v6, Lj$/util/stream/B0;

    const/4 v7, 0x0

    .line 0
    invoke-direct {v6, v7}, Lj$/util/stream/B0;-><init>(I)V

    .line 443
    invoke-interface {v2, v6}, Lj$/util/X;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 445
    invoke-interface {v2, v3}, Lj$/util/X;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 447
    invoke-interface {v2, v3}, Lj$/util/X;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 449
    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    .line 450
    invoke-interface {v3}, Lj$/util/stream/v0;->build()Lj$/util/stream/C0;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lj$/util/stream/E0;JJLjava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 121
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    .line 123
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    sub-long v1, p3, p1

    .line 125
    invoke-static {v1, v2, p5}, Lj$/util/stream/u1;->W(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;

    move-result-object p5

    .line 126
    invoke-interface {p5, v1, v2}, Lj$/util/stream/l2;->c(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 127
    new-instance v5, Lj$/util/stream/a0;

    const/4 v6, 0x3

    .line 0
    invoke-direct {v5, v6}, Lj$/util/stream/a0;-><init>(I)V

    .line 127
    invoke-interface {v0, v5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 129
    invoke-interface {v0, p5}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v1

    if-gez p0, :cond_3

    .line 131
    invoke-interface {v0, p5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    :cond_3
    :goto_2
    invoke-interface {p5}, Lj$/util/stream/l2;->end()V

    .line 134
    invoke-interface {p5}, Lj$/util/stream/w0;->build()Lj$/util/stream/E0;

    move-result-object p0

    return-object p0
.end method

.method public static W(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 176
    new-instance v0, Lj$/util/stream/Y0;

    .line 1207
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/H0;-><init>(JLjava/util/function/IntFunction;)V

    return-object v0

    .line 187
    :cond_0
    new-instance p0, Lj$/util/stream/q1;

    .line 1259
    invoke-direct {p0}, Lj$/util/stream/W2;-><init>()V

    return-object p0
.end method

.method public static X(Lj$/util/stream/u1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 6

    .line 328
    invoke-virtual {p0, p1}, Lj$/util/stream/u1;->h0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 329
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 332
    invoke-interface {p3, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 333
    new-instance p3, Lj$/util/stream/o1;

    invoke-direct {p3, p1, p0, p2}, Lj$/util/stream/o1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/u1;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 148
    new-instance p0, Lj$/util/stream/H0;

    invoke-direct {p0, p2}, Lj$/util/stream/H0;-><init>([Ljava/lang/Object;)V

    return-object p0

    .line 331
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 336
    :cond_1
    new-instance v0, Lj$/util/stream/J0;

    .line 2207
    new-instance v3, Lj$/util/stream/J;

    .line 0
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p3, v3, Lj$/util/stream/J;->a:Ljava/util/function/IntFunction;

    .line 2207
    new-instance v4, Lj$/util/stream/a0;

    const/16 v1, 0xb

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/a0;-><init>(I)V

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p1

    .line 2207
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/J0;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 336
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/E0;

    if-eqz p2, :cond_2

    .line 337
    invoke-static {p0, p3}, Lj$/util/stream/u1;->i0(Lj$/util/stream/E0;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static Y(Lj$/util/stream/u1;Lj$/util/Spliterator;Z)Lj$/util/stream/y0;
    .locals 6

    .line 441
    invoke-virtual {p0, p1}, Lj$/util/stream/u1;->h0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 442
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 445
    new-array p2, p2, [D

    .line 446
    new-instance v0, Lj$/util/stream/l1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/l1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/u1;[D)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 275
    new-instance p0, Lj$/util/stream/Q0;

    invoke-direct {p0, p2}, Lj$/util/stream/Q0;-><init>([D)V

    return-object p0

    .line 444
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 450
    :cond_1
    new-instance v0, Lj$/util/stream/J0;

    .line 2231
    new-instance v3, Lj$/util/stream/a0;

    const/4 v1, 0x5

    .line 0
    invoke-direct {v3, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 2231
    new-instance v4, Lj$/util/stream/a0;

    const/4 v1, 0x6

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/a0;-><init>(I)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 2231
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/J0;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 450
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/y0;

    if-eqz p2, :cond_2

    .line 451
    invoke-static {p0}, Lj$/util/stream/u1;->j0(Lj$/util/stream/y0;)Lj$/util/stream/y0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static Z(Lj$/util/stream/u1;Lj$/util/Spliterator;Z)Lj$/util/stream/A0;
    .locals 6

    .line 365
    invoke-virtual {p0, p1}, Lj$/util/stream/u1;->h0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 366
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 369
    new-array p2, p2, [I

    .line 370
    new-instance v0, Lj$/util/stream/m1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/m1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/u1;[I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 201
    new-instance p0, Lj$/util/stream/Z0;

    invoke-direct {p0, p2}, Lj$/util/stream/Z0;-><init>([I)V

    return-object p0

    .line 368
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1
    new-instance v0, Lj$/util/stream/J0;

    .line 2215
    new-instance v3, Lj$/util/stream/a0;

    const/4 v1, 0x7

    .line 0
    invoke-direct {v3, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 2215
    new-instance v4, Lj$/util/stream/a0;

    const/16 v1, 0x8

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/a0;-><init>(I)V

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 2215
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/J0;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 374
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/A0;

    if-eqz p2, :cond_2

    .line 375
    invoke-static {p0}, Lj$/util/stream/u1;->k0(Lj$/util/stream/A0;)Lj$/util/stream/A0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a0(Lj$/util/stream/u1;Lj$/util/Spliterator;Z)Lj$/util/stream/C0;
    .locals 6

    .line 403
    invoke-virtual {p0, p1}, Lj$/util/stream/u1;->h0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 404
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 407
    new-array p2, p2, [J

    .line 408
    new-instance v0, Lj$/util/stream/n1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/n1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/u1;[J)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 238
    new-instance p0, Lj$/util/stream/i1;

    invoke-direct {p0, p2}, Lj$/util/stream/i1;-><init>([J)V

    return-object p0

    .line 406
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_1
    new-instance v0, Lj$/util/stream/J0;

    .line 2223
    new-instance v3, Lj$/util/stream/a0;

    const/16 v1, 0x9

    .line 0
    invoke-direct {v3, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 2223
    new-instance v4, Lj$/util/stream/a0;

    const/16 v1, 0xa

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/a0;-><init>(I)V

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    .line 2223
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/J0;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/C0;

    if-eqz p2, :cond_2

    .line 413
    invoke-static {p0}, Lj$/util/stream/u1;->l0(Lj$/util/stream/C0;)Lj$/util/stream/C0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static b0(Lj$/util/stream/a3;Lj$/util/stream/E0;Lj$/util/stream/E0;)Lj$/util/stream/G0;
    .locals 2

    .line 122
    sget-object v0, Lj$/util/stream/F0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    new-instance p0, Lj$/util/stream/L0;

    check-cast p1, Lj$/util/stream/y0;

    check-cast p2, Lj$/util/stream/y0;

    .line 855
    invoke-direct {p0, p1, p2}, Lj$/util/stream/G0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/E0;)V

    return-object p0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown shape "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    new-instance p0, Lj$/util/stream/N0;

    check-cast p1, Lj$/util/stream/C0;

    check-cast p2, Lj$/util/stream/C0;

    .line 855
    invoke-direct {p0, p1, p2}, Lj$/util/stream/G0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/E0;)V

    return-object p0

    .line 126
    :cond_2
    new-instance p0, Lj$/util/stream/M0;

    check-cast p1, Lj$/util/stream/A0;

    check-cast p2, Lj$/util/stream/A0;

    .line 855
    invoke-direct {p0, p1, p2}, Lj$/util/stream/G0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/E0;)V

    return-object p0

    .line 124
    :cond_3
    new-instance p0, Lj$/util/stream/P0;

    .line 791
    invoke-direct {p0, p1, p2}, Lj$/util/stream/G0;-><init>(Lj$/util/stream/E0;Lj$/util/stream/E0;)V

    return-object p0
.end method

.method public static e0(J)Lj$/util/stream/t0;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 288
    new-instance v0, Lj$/util/stream/R0;

    .line 1597
    invoke-direct {v0, p0, p1}, Lj$/util/stream/Q0;-><init>(J)V

    return-object v0

    .line 298
    :cond_0
    new-instance p0, Lj$/util/stream/S0;

    .line 980
    invoke-direct {p0}, Lj$/util/stream/V2;-><init>()V

    return-object p0
.end method

.method public static f0(Lj$/util/stream/a3;)Lj$/util/stream/X0;
    .locals 3

    .line 91
    sget-object v0, Lj$/util/stream/F0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 95
    sget-object p0, Lj$/util/stream/u1;->d:Lj$/util/stream/T0;

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown shape "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    sget-object p0, Lj$/util/stream/u1;->c:Lj$/util/stream/V0;

    return-object p0

    .line 93
    :cond_2
    sget-object p0, Lj$/util/stream/u1;->b:Lj$/util/stream/U0;

    return-object p0

    .line 92
    :cond_3
    sget-object p0, Lj$/util/stream/u1;->a:Lj$/util/stream/W0;

    return-object p0
.end method

.method public static i0(Lj$/util/stream/E0;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 4

    .line 473
    invoke-interface {p0}, Lj$/util/stream/E0;->o()I

    move-result v0

    if-lez v0, :cond_1

    .line 474
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 477
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 478
    new-instance v0, Lj$/util/stream/t1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/t1;-><init>(Lj$/util/stream/E0;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 148
    new-instance p0, Lj$/util/stream/H0;

    invoke-direct {p0, p1}, Lj$/util/stream/H0;-><init>([Ljava/lang/Object;)V

    return-object p0

    .line 476
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static j0(Lj$/util/stream/y0;)Lj$/util/stream/y0;
    .locals 4

    .line 551
    invoke-interface {p0}, Lj$/util/stream/E0;->o()I

    move-result v0

    if-lez v0, :cond_1

    .line 552
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 555
    new-array v0, v0, [D

    .line 556
    new-instance v1, Lj$/util/stream/r1;

    const/4 v2, 0x0

    .line 2152
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/t1;-><init>(Lj$/util/stream/E0;Ljava/lang/Object;I)V

    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 275
    new-instance p0, Lj$/util/stream/Q0;

    invoke-direct {p0, v0}, Lj$/util/stream/Q0;-><init>([D)V

    return-object p0

    .line 554
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static k0(Lj$/util/stream/A0;)Lj$/util/stream/A0;
    .locals 4

    .line 499
    invoke-interface {p0}, Lj$/util/stream/E0;->o()I

    move-result v0

    if-lez v0, :cond_1

    .line 500
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 503
    new-array v0, v0, [I

    .line 504
    new-instance v1, Lj$/util/stream/s1;

    const/4 v2, 0x0

    .line 2136
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/t1;-><init>(Lj$/util/stream/E0;Ljava/lang/Object;I)V

    .line 504
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 201
    new-instance p0, Lj$/util/stream/Z0;

    invoke-direct {p0, v0}, Lj$/util/stream/Z0;-><init>([I)V

    return-object p0

    .line 502
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static l0(Lj$/util/stream/C0;)Lj$/util/stream/C0;
    .locals 4

    .line 525
    invoke-interface {p0}, Lj$/util/stream/E0;->o()I

    move-result v0

    if-lez v0, :cond_1

    .line 526
    invoke-interface {p0}, Lj$/util/stream/E0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 529
    new-array v0, v0, [J

    .line 530
    new-instance v1, Lj$/util/stream/r1;

    const/4 v2, 0x0

    .line 2144
    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/t1;-><init>(Lj$/util/stream/E0;Ljava/lang/Object;I)V

    .line 530
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 238
    new-instance p0, Lj$/util/stream/i1;

    invoke-direct {p0, v0}, Lj$/util/stream/i1;-><init>([J)V

    return-object p0

    .line 528
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static m0(Ljava/util/Set;)Ljava/util/Set;
    .locals 5

    if-eqz p0, :cond_a

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 22
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    instance-of v2, v1, Lj$/util/stream/g;

    const-string v3, "java.util.stream.Collector.Characteristics"

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 28
    :try_start_0
    check-cast v1, Lj$/util/stream/g;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_1

    .line 0
    :cond_1
    sget-object v2, Lj$/util/stream/g;->CONCURRENT:Lj$/util/stream/g;

    if-ne v1, v2, :cond_2

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    goto :goto_1

    :cond_2
    sget-object v2, Lj$/util/stream/g;->UNORDERED:Lj$/util/stream/g;

    if-ne v1, v2, :cond_3

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 32
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0, v3}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_4
    instance-of v2, v1, Ljava/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_9

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 40
    :try_start_1
    check-cast v1, Ljava/util/stream/Collector$Characteristics;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_5

    move-object v1, v4

    goto :goto_3

    .line 0
    :cond_5
    sget-object v2, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    if-ne v1, v2, :cond_6

    sget-object v1, Lj$/util/stream/g;->CONCURRENT:Lj$/util/stream/g;

    goto :goto_3

    :cond_6
    sget-object v2, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    if-ne v1, v2, :cond_7

    sget-object v1, Lj$/util/stream/g;->UNORDERED:Lj$/util/stream/g;

    goto :goto_3

    :cond_7
    sget-object v1, Lj$/util/stream/g;->IDENTITY_FINISH:Lj$/util/stream/g;

    .line 44
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception p0

    .line 15
    invoke-static {p0, v3}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_8
    return-object v0

    .line 48
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 15
    invoke-static {p0, v3}, Lj$/util/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_a
    :goto_4
    return-object p0
.end method

.method public static n0(Ljava/util/function/Function;)Lj$/util/q;
    .locals 2

    .line 17
    new-instance v0, Lj$/util/q;

    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, v1}, Lj$/util/q;-><init>(I)V

    .line 37
    iput-object p0, v0, Lj$/util/q;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static o0(J)Lj$/util/stream/u0;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 214
    new-instance v0, Lj$/util/stream/a1;

    .line 1489
    invoke-direct {v0, p0, p1}, Lj$/util/stream/Z0;-><init>(J)V

    return-object v0

    .line 224
    :cond_0
    new-instance p0, Lj$/util/stream/b1;

    .line 752
    invoke-direct {p0}, Lj$/util/stream/V2;-><init>()V

    return-object p0
.end method

.method public static p0(J)Lj$/util/stream/v0;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 251
    new-instance v0, Lj$/util/stream/j1;

    .line 1543
    invoke-direct {v0, p0, p1}, Lj$/util/stream/i1;-><init>(J)V

    return-object v0

    .line 261
    :cond_0
    new-instance p0, Lj$/util/stream/k1;

    .line 865
    invoke-direct {p0}, Lj$/util/stream/V2;-><init>()V

    return-object p0
.end method

.method public static q0(Lj$/util/stream/r0;)Lj$/util/concurrent/t;
    .locals 4

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lj$/util/concurrent/t;

    sget-object v1, Lj$/util/stream/a3;->DOUBLE_VALUE:Lj$/util/stream/a3;

    new-instance v2, Lj$/util/stream/l0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/r0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/t;-><init>(Lj$/util/stream/a3;Lj$/util/stream/r0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static r0(Lj$/util/stream/r0;)Lj$/util/concurrent/t;
    .locals 4

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lj$/util/concurrent/t;

    sget-object v1, Lj$/util/stream/a3;->INT_VALUE:Lj$/util/stream/a3;

    new-instance v2, Lj$/util/stream/l0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/r0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/t;-><init>(Lj$/util/stream/a3;Lj$/util/stream/r0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static s0(Lj$/util/stream/r0;)Lj$/util/concurrent/t;
    .locals 4

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lj$/util/concurrent/t;

    sget-object v1, Lj$/util/stream/a3;->LONG_VALUE:Lj$/util/stream/a3;

    new-instance v2, Lj$/util/stream/l0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/r0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/t;-><init>(Lj$/util/stream/a3;Lj$/util/stream/r0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static u0(Lj$/util/stream/r0;Ljava/util/function/Predicate;)Lj$/util/concurrent/t;
    .locals 4

    .line 81
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lj$/util/concurrent/t;

    sget-object v1, Lj$/util/stream/a3;->REFERENCE:Lj$/util/stream/a3;

    new-instance v2, Lj$/util/concurrent/t;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, p1}, Lj$/util/concurrent/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/t;-><init>(Lj$/util/stream/a3;Lj$/util/stream/r0;Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public abstract c0(Lj$/util/Spliterator;Lj$/util/stream/l2;)V
.end method

.method public abstract d0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
.end method

.method public f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lj$/util/stream/u1;->v0()Lj$/util/stream/P1;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/a;->w0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    check-cast v0, Lj$/util/stream/P1;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;
.end method

.method public abstract h0(Lj$/util/Spliterator;)J
.end method

.method public i(Lj$/util/stream/u1;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .line 919
    new-instance v0, Lj$/util/stream/W1;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/W1;-><init>(Lj$/util/stream/u1;Lj$/util/stream/u1;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/P1;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract t0(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;
.end method

.method public synthetic v()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract v0()Lj$/util/stream/P1;
.end method

.method public abstract w0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;
.end method

.method public abstract x0(Lj$/util/stream/l2;)Lj$/util/stream/l2;
.end method

.method public abstract y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
.end method
