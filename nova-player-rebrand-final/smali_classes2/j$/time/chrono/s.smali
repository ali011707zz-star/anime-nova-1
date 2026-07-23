.class public final enum Lj$/time/chrono/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/n;


# static fields
.field public static final enum AH:Lj$/time/chrono/s;

.field public static final synthetic a:[Lj$/time/chrono/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lj$/time/chrono/s;

    .line 89
    const-string v1, "AH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    sput-object v0, Lj$/time/chrono/s;->AH:Lj$/time/chrono/s;

    const/4 v1, 0x1

    .line 89
    new-array v1, v1, [Lj$/time/chrono/s;

    aput-object v0, v1, v2

    sput-object v1, Lj$/time/chrono/s;->a:[Lj$/time/chrono/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/s;
    .locals 1

    .line 89
    const-class v0, Lj$/time/chrono/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/s;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/s;
    .locals 1

    .line 89
    sget-object v0, Lj$/time/chrono/s;->a:[Lj$/time/chrono/s;

    invoke-virtual {v0}, [Lj$/time/chrono/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/s;

    return-object v0
.end method


# virtual methods
.method public final synthetic e(Lj$/time/temporal/p;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->m(Lj$/time/chrono/n;Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic i(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/time/chrono/n;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final k(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 2

    .line 155
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    .line 156
    invoke-static {v0, v1, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/q;->d(Lj$/time/temporal/m;Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic l(Lj$/time/format/a;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->q(Lj$/time/chrono/n;Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lj$/time/temporal/l;)Lj$/time/temporal/l;
    .locals 3

    .line 301
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    const/4 v1, 0x1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic w(Lj$/time/temporal/p;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->k(Lj$/time/chrono/n;Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method
