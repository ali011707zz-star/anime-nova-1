.class public final Lj$/util/stream/G2;
.super Lj$/util/stream/g0;
.source "SourceFile"


# instance fields
.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/a;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/G2;->t:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;
    .locals 2

    iget v0, p0, Lj$/util/stream/G2;->t:I

    packed-switch v0, :pswitch_data_0

    .line 196
    new-instance v0, Lj$/util/stream/d4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/d4;-><init>(Lj$/util/stream/a;Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    return-object p1

    .line 232
    :pswitch_0
    sget-object v0, Lj$/util/stream/Z2;->SORTED:Lj$/util/stream/Z2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 232
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u1;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/u1;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C0;

    .line 238
    invoke-interface {p1}, Lj$/util/stream/D0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 241
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 238
    new-instance p2, Lj$/util/stream/i1;

    invoke-direct {p2, p1}, Lj$/util/stream/i1;-><init>([J)V

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

    iget v0, p0, Lj$/util/stream/G2;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/a;->G0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_0
    sget-object v0, Lj$/util/stream/Z2;->ORDERED:Lj$/util/stream/Z2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 182
    invoke-virtual {v0, v1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lj$/util/stream/a0;

    const/16 v1, 0x14

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/a0;-><init>(I)V

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/G2;->F0(Lj$/util/stream/u1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/E0;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lj$/util/stream/E0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lj$/util/stream/i4;

    .line 188
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->y0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/X;

    const/4 p2, 0x1

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/i4;-><init>(Lj$/util/Spliterator;I)V

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

    iget v0, p0, Lj$/util/stream/G2;->t:I

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance p1, Lj$/util/stream/U3;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/U3;-><init>(Lj$/util/stream/G2;Lj$/util/stream/l2;)V

    return-object p1

    .line 218
    :pswitch_0
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lj$/util/stream/Z2;->SORTED:Lj$/util/stream/Z2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Z2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    sget-object v0, Lj$/util/stream/Z2;->SIZED:Lj$/util/stream/Z2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Z2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    new-instance p1, Lj$/util/stream/L2;

    .line 528
    invoke-direct {p1, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/l2;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    .line 225
    :cond_1
    new-instance p1, Lj$/util/stream/D2;

    .line 528
    invoke-direct {p1, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/l2;)V

    goto :goto_0

    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
