.class public final Lj$/util/stream/c4;
.super Lj$/util/stream/d;
.source "SourceFile"


# instance fields
.field public final h:Lj$/util/stream/a;

.field public final i:Ljava/util/function/IntFunction;

.field public final j:Z

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V
    .locals 0

    .line 1310
    invoke-direct {p0, p2, p3}, Lj$/util/stream/d;-><init>(Lj$/util/stream/u1;Lj$/util/Spliterator;)V

    .line 1312
    iput-object p1, p0, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    .line 1313
    iput-object p4, p0, Lj$/util/stream/c4;->i:Ljava/util/function/IntFunction;

    .line 1314
    sget-object p1, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    check-cast p2, Lj$/util/stream/a;

    .line 509
    iget p2, p2, Lj$/util/stream/a;->m:I

    .line 1314
    invoke-virtual {p1, p2}, Lj$/util/stream/Z2;->l(I)Z

    move-result p1

    iput-boolean p1, p0, Lj$/util/stream/c4;->j:Z

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/c4;Lj$/util/Spliterator;)V
    .locals 0

    .line 1318
    invoke-direct {p0, p1, p2}, Lj$/util/stream/d;-><init>(Lj$/util/stream/d;Lj$/util/Spliterator;)V

    .line 1319
    iget-object p2, p1, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    iput-object p2, p0, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    .line 1320
    iget-object p2, p1, Lj$/util/stream/c4;->i:Ljava/util/function/IntFunction;

    iput-object p2, p0, Lj$/util/stream/c4;->i:Ljava/util/function/IntFunction;

    .line 1321
    iget-boolean p1, p1, Lj$/util/stream/c4;->j:Z

    iput-boolean p1, p0, Lj$/util/stream/c4;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1331
    invoke-virtual {p0}, Lj$/util/stream/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-boolean v1, p0, Lj$/util/stream/c4;->j:Z

    if-eqz v1, :cond_0

    sget-object v1, Lj$/util/stream/Z2;->SIZED:Lj$/util/stream/Z2;

    iget-object v2, p0, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    iget v3, v2, Lj$/util/stream/a;->j:I

    .line 512
    iget v1, v1, Lj$/util/stream/Z2;->e:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    .line 1335
    iget-object v1, p0, Lj$/util/stream/d;->b:Lj$/util/Spliterator;

    invoke-virtual {v2, v1}, Lj$/util/stream/a;->h0(Lj$/util/Spliterator;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 1337
    :goto_0
    iget-object v3, p0, Lj$/util/stream/d;->a:Lj$/util/stream/u1;

    iget-object v4, p0, Lj$/util/stream/c4;->i:Ljava/util/function/IntFunction;

    invoke-virtual {v3, v1, v2, v4}, Lj$/util/stream/u1;->t0(JLjava/util/function/IntFunction;)Lj$/util/stream/w0;

    move-result-object v1

    .line 1339
    iget-object v2, p0, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    check-cast v2, Lj$/util/stream/a4;

    .line 1342
    iget-boolean v3, p0, Lj$/util/stream/c4;->j:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v1, v0}, Lj$/util/stream/a4;->h(Lj$/util/stream/w0;Z)Lj$/util/stream/b4;

    move-result-object v0

    .line 1343
    iget-object v2, p0, Lj$/util/stream/d;->a:Lj$/util/stream/u1;

    iget-object v3, p0, Lj$/util/stream/d;->b:Lj$/util/Spliterator;

    invoke-virtual {v2, v3, v0}, Lj$/util/stream/u1;->w0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    .line 1345
    invoke-interface {v1}, Lj$/util/stream/w0;->build()Lj$/util/stream/E0;

    move-result-object v1

    .line 1346
    invoke-interface {v1}, Lj$/util/stream/E0;->count()J

    move-result-wide v2

    iput-wide v2, p0, Lj$/util/stream/c4;->k:J

    .line 1347
    invoke-interface {v0}, Lj$/util/stream/b4;->h()J

    move-result-wide v2

    iput-wide v2, p0, Lj$/util/stream/c4;->l:J

    return-object v1
.end method

.method public final c(Lj$/util/Spliterator;)Lj$/util/stream/d;
    .locals 1

    .line 1326
    new-instance v0, Lj$/util/stream/c4;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/c4;-><init>(Lj$/util/stream/c4;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 7

    .line 267
    iget-object v0, p0, Lj$/util/stream/d;->d:Lj$/util/stream/d;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1354
    :cond_0
    iget-boolean v1, p0, Lj$/util/stream/c4;->j:Z

    if-eqz v1, :cond_1

    .line 1355
    move-object v1, v0

    check-cast v1, Lj$/util/stream/c4;

    iget-wide v2, v1, Lj$/util/stream/c4;->l:J

    iput-wide v2, p0, Lj$/util/stream/c4;->l:J

    .line 1358
    iget-wide v4, v1, Lj$/util/stream/c4;->k:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1359
    iget-object v1, p0, Lj$/util/stream/d;->e:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/c4;

    iget-wide v4, v1, Lj$/util/stream/c4;->l:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lj$/util/stream/c4;->l:J

    .line 1362
    :cond_1
    check-cast v0, Lj$/util/stream/c4;

    iget-wide v1, v0, Lj$/util/stream/c4;->k:J

    iget-object v3, p0, Lj$/util/stream/d;->e:Lj$/util/stream/d;

    check-cast v3, Lj$/util/stream/c4;

    iget-wide v4, v3, Lj$/util/stream/c4;->k:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lj$/util/stream/c4;->k:J

    .line 1371
    iget-wide v1, v0, Lj$/util/stream/c4;->k:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 245
    iget-object v0, v3, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 1374
    check-cast v0, Lj$/util/stream/E0;

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 1376
    :cond_2
    iget-wide v1, v3, Lj$/util/stream/c4;->k:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    .line 245
    iget-object v0, v0, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 1379
    check-cast v0, Lj$/util/stream/E0;

    goto :goto_0

    .line 1383
    :cond_3
    iget-object v0, p0, Lj$/util/stream/c4;->h:Lj$/util/stream/a;

    invoke-virtual {v0}, Lj$/util/stream/a;->D0()Lj$/util/stream/a3;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/d;->d:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/c4;

    .line 245
    iget-object v1, v1, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 1384
    check-cast v1, Lj$/util/stream/E0;

    iget-object v2, p0, Lj$/util/stream/d;->e:Lj$/util/stream/d;

    check-cast v2, Lj$/util/stream/c4;

    .line 245
    iget-object v2, v2, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 1384
    check-cast v2, Lj$/util/stream/E0;

    .line 1383
    invoke-static {v0, v1, v2}, Lj$/util/stream/u1;->b0(Lj$/util/stream/a3;Lj$/util/stream/E0;Lj$/util/stream/E0;)Lj$/util/stream/G0;

    move-result-object v0

    goto :goto_0

    .line 1364
    :goto_1
    invoke-virtual {p0}, Lj$/util/stream/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1389
    iget-boolean v0, p0, Lj$/util/stream/c4;->j:Z

    if-eqz v0, :cond_4

    .line 1390
    iget-wide v2, p0, Lj$/util/stream/c4;->l:J

    invoke-interface {v1}, Lj$/util/stream/E0;->count()J

    move-result-wide v4

    iget-object v6, p0, Lj$/util/stream/c4;->i:Ljava/util/function/IntFunction;

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/E0;->i(JJLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object v1

    .line 255
    :cond_4
    iput-object v1, p0, Lj$/util/stream/d;->f:Ljava/lang/Object;

    .line 1367
    :goto_2
    invoke-super {p0, p1}, Lj$/util/stream/d;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
