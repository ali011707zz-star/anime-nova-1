.class public final Lj$/util/stream/E2;
.super Lj$/util/stream/x;
.source "SourceFile"


# instance fields
.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/E2;->t:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 2

    iget v0, p0, Lj$/util/stream/E2;->t:I

    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v0, Lj$/util/stream/d4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/d4;-><init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    return-object p1

    .line 273
    :pswitch_0
    sget-object v0, Lj$/util/stream/Z2;->SORTED:Lj$/util/stream/Z2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 273
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u1;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u1;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    check-cast p1, Lj$/util/stream/y0;

    .line 279
    invoke-interface {p1}, Lj$/util/stream/D0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 282
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 275
    new-instance p2, Lj$/util/stream/Q0;

    invoke-direct {p2, p1}, Lj$/util/stream/Q0;-><init>([D)V

    move-object p1, p2

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/E2;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/a;->G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 239
    :pswitch_0
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 239
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lj$/util/stream/a0;

    const/16 v1, 0x16

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 240
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/E2;->F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lj$/util/stream/e4;

    .line 245
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/S;

    const/4 p2, 0x1

    .line 1038
    invoke-direct {v0, p1, p2}, Lj$/util/stream/e4;-><init>(Lj$/util/Spliterator;I)V

    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final I0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 1

    iget v0, p0, Lj$/util/stream/E2;->t:I

    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance p1, Lj$/util/stream/X3;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/X3;-><init>(Lj$/util/stream/E2;Lj$/util/stream/l2;)V

    return-object p1

    .line 259
    :pswitch_0
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lj$/util/stream/Z2;->SORTED:Lj$/util/stream/Z2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    sget-object v0, Lj$/util/stream/Z2;->SIZED:Lj$/util/stream/Z2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Z2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Lj$/util/stream/J2;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/e2;-><init>(Lj$/util/stream/l2;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 266
    :cond_1
    new-instance p1, Lj$/util/stream/B2;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/e2;-><init>(Lj$/util/stream/l2;)V

    goto :goto_0

    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
