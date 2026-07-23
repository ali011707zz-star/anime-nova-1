.class public final enum Lj$/time/temporal/d;
.super Lj$/time/temporal/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "QUARTER_OF_YEAR"

    const/4 v1, 0x1

    .line 290
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Lj$/time/temporal/m;)Z
    .locals 1

    .line 395
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

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

    .line 406
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->i(Lj$/time/temporal/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p0}, Lj$/time/temporal/d;->k()Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 407
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: QuarterOfYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 407
    throw p1
.end method

.method public final k()Lj$/time/temporal/t;
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    .line 391
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lj$/time/temporal/m;)J
    .locals 4

    .line 399
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->i(Lj$/time/temporal/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/m;->w(Lj$/time/temporal/p;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    .line 403
    div-long/2addr v0, v2

    return-wide v0

    .line 400
    :cond_0
    new-instance p1, Lj$/time/temporal/s;

    const-string v0, "Unsupported field: QuarterOfYear"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 400
    throw p1
.end method

.method public final o(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 5

    .line 415
    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->l(Lj$/time/temporal/m;)J

    move-result-wide v0

    .line 416
    invoke-virtual {p0}, Lj$/time/temporal/d;->k()Lj$/time/temporal/t;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/t;->b(JLj$/time/temporal/p;)V

    .line 417
    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/m;->w(Lj$/time/temporal/p;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, p2, p3, v2}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 421
    const-string v0, "QuarterOfYear"

    return-object v0
.end method
