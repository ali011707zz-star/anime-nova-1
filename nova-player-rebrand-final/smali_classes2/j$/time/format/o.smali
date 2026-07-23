.class public final Lj$/time/format/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;


# instance fields
.field public final synthetic a:Lj$/time/chrono/b;

.field public final synthetic b:Lj$/time/temporal/m;

.field public final synthetic c:Lj$/time/chrono/m;

.field public final synthetic d:Lj$/time/w;


# direct methods
.method public constructor <init>(Lj$/time/chrono/b;Lj$/time/temporal/m;Lj$/time/chrono/m;Lj$/time/w;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/o;->a:Lj$/time/chrono/b;

    iput-object p2, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    iput-object p3, p0, Lj$/time/format/o;->c:Lj$/time/chrono/m;

    iput-object p4, p0, Lj$/time/format/o;->d:Lj$/time/w;

    return-void
.end method


# virtual methods
.method public final e(Lj$/time/temporal/p;)Z
    .locals 2

    .line 188
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v0, p1}, Lj$/time/chrono/b;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1

    .line 191
    :cond_0
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    invoke-interface {v0, p1}, Lj$/time/temporal/m;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final synthetic i(Lj$/time/temporal/p;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/q;->a(Lj$/time/temporal/m;Lj$/time/temporal/p;)I

    move-result p1

    return p1
.end method

.method public final k(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 2

    .line 195
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v0, p1}, Lj$/time/temporal/m;->k(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    invoke-interface {v0, p1}, Lj$/time/temporal/m;->k(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lj$/time/format/a;)Ljava/lang/Object;
    .locals 1

    .line 210
    sget-object v0, Lj$/time/temporal/q;->b:Lj$/time/format/a;

    if-ne p1, v0, :cond_0

    .line 211
    iget-object p1, p0, Lj$/time/format/o;->c:Lj$/time/chrono/m;

    return-object p1

    .line 213
    :cond_0
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/format/a;

    if-ne p1, v0, :cond_1

    .line 214
    iget-object p1, p0, Lj$/time/format/o;->d:Lj$/time/w;

    return-object p1

    .line 216
    :cond_1
    sget-object v0, Lj$/time/temporal/q;->c:Lj$/time/format/a;

    if-ne p1, v0, :cond_2

    .line 217
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    invoke-interface {v0, p1}, Lj$/time/temporal/m;->l(Lj$/time/format/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 219
    :cond_2
    invoke-virtual {p1, p0}, Lj$/time/format/a;->a(Lj$/time/temporal/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 225
    const-string v0, ""

    iget-object v1, p0, Lj$/time/format/o;->c:Lj$/time/chrono/m;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " with chronology "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 226
    :goto_0
    iget-object v2, p0, Lj$/time/format/o;->d:Lj$/time/w;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " with zone "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lj$/time/temporal/p;)J
    .locals 2

    .line 202
    iget-object v0, p0, Lj$/time/format/o;->a:Lj$/time/chrono/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/p;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v0, p1}, Lj$/time/temporal/m;->w(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_0
    iget-object v0, p0, Lj$/time/format/o;->b:Lj$/time/temporal/m;

    invoke-interface {v0, p1}, Lj$/time/temporal/m;->w(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method
