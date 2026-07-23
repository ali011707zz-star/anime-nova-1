.class public final enum Lj$/time/temporal/e;
.super Lj$/time/temporal/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v1, 0x2

    .line 290
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Lj$/time/temporal/m;)Z
    .locals 1

    .line 450
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
    .locals 4

    .line 454
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->i(Lj$/time/temporal/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {p1}, Lj$/time/g;->E(Lj$/time/temporal/m;)Lj$/time/g;

    move-result-object p1

    .line 596
    invoke-static {p1}, Lj$/time/temporal/g;->w(Lj$/time/g;)I

    move-result p1

    .line 597
    invoke-static {p1}, Lj$/time/temporal/g;->C(I)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 455
    throw p1
.end method

.method public final k()Lj$/time/temporal/t;
    .locals 4

    const-wide/16 v0, 0x34

    const-wide/16 v2, 0x35

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->f(JJ)Lj$/time/temporal/t;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lj$/time/temporal/m;)J
    .locals 2

    .line 461
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->i(Lj$/time/temporal/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p1}, Lj$/time/g;->E(Lj$/time/temporal/m;)Lj$/time/g;

    move-result-object p1

    invoke-static {p1}, Lj$/time/temporal/g;->s(Lj$/time/g;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 462
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 462
    throw p1
.end method

.method public final o(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 2

    .line 470
    invoke-virtual {p0}, Lj$/time/temporal/e;->k()Lj$/time/temporal/t;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/t;->b(JLj$/time/temporal/p;)V

    .line 471
    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->l(Lj$/time/temporal/m;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lj$/com/android/tools/r8/a;->A(JJ)J

    move-result-wide p2

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/r;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 513
    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
