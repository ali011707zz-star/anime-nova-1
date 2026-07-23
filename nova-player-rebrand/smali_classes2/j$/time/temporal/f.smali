.class public final enum Lj$/time/temporal/f;
.super Lj$/time/temporal/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEEK_BASED_YEAR"

    const/4 v1, 0x3

    .line 290
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Lj$/time/temporal/m;)Z
    .locals 1

    .line 531
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/m;->e(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/i;->a:Lj$/time/temporal/g;

    .line 736
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->t(Lj$/time/temporal/m;)Lj$/time/chrono/m;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {p1, v0}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lj$/time/temporal/m;)Lj$/time/temporal/t;
    .locals 1

    .line 541
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->i(Lj$/time/temporal/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p0}, Lj$/time/temporal/f;->k()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: WeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 542
    throw p1
.end method

.method public final k()Lj$/time/temporal/t;
    .locals 1

    .line 527
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object v0, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    return-object v0
.end method

.method public final l(Lj$/time/temporal/m;)J
    .locals 2

    .line 535
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->i(Lj$/time/temporal/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {p1}, Lj$/time/g;->E(Lj$/time/temporal/m;)Lj$/time/g;

    move-result-object p1

    .line 0
    invoke-static {p1}, Lj$/time/temporal/g;->w(Lj$/time/g;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 536
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: WeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 536
    throw p1
.end method

.method public final o(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 4

    .line 549
    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->i(Lj$/time/temporal/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object v0, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    .line 552
    sget-object v1, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    invoke-virtual {v0, p2, p3, v1}, Lj$/time/temporal/t;->a(JLj$/time/temporal/p;)I

    move-result p2

    .line 553
    invoke-static {p1}, Lj$/time/g;->E(Lj$/time/temporal/m;)Lj$/time/g;

    move-result-object p3

    .line 554
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {p3, v0}, Lj$/time/g;->i(Lj$/time/temporal/p;)I

    move-result v1

    .line 555
    invoke-static {p3}, Lj$/time/temporal/g;->s(Lj$/time/g;)I

    move-result p3

    const/16 v2, 0x35

    if-ne p3, v2, :cond_0

    .line 0
    invoke-static {p2}, Lj$/time/temporal/g;->C(I)I

    move-result v2

    const/16 v3, 0x34

    if-ne v2, v3, :cond_0

    move p3, v3

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 559
    invoke-static {p2, v3, v2}, Lj$/time/g;->K(III)Lj$/time/g;

    move-result-object p2

    .line 560
    invoke-virtual {p2, v0}, Lj$/time/g;->i(Lj$/time/temporal/p;)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr p3, v1

    int-to-long v0, p3

    .line 561
    invoke-virtual {p2, v0, v1}, Lj$/time/g;->N(J)Lj$/time/g;

    move-result-object p2

    .line 562
    invoke-interface {p1, p2}, Lj$/time/temporal/l;->j(Lj$/time/g;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1

    .line 550
    :cond_1
    new-instance p1, Lj$/time/temporal/s;

    const-string p2, "Unsupported field: WeekBasedYear"

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 550
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 566
    const-string v0, "WeekBasedYear"

    return-object v0
.end method
