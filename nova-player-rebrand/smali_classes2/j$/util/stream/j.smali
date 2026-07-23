.class public final Lj$/util/stream/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field public final a:Lj$/time/format/a;

.field public final b:Lj$/time/format/a;

.field public final c:Lj$/time/format/a;

.field public final d:Lj$/time/format/a;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lj$/time/format/a;Lj$/time/format/a;Lj$/time/format/a;Ljava/util/Set;)V
    .locals 2

    .line 218
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 186
    new-instance v0, Lj$/time/format/a;

    const/16 v1, 0xf

    .line 0
    invoke-direct {v0, v1}, Lj$/time/format/a;-><init>(I)V

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lj$/util/stream/j;->a:Lj$/time/format/a;

    .line 208
    iput-object p2, p0, Lj$/util/stream/j;->b:Lj$/time/format/a;

    .line 209
    iput-object p3, p0, Lj$/util/stream/j;->c:Lj$/time/format/a;

    .line 210
    iput-object v0, p0, Lj$/util/stream/j;->d:Lj$/time/format/a;

    .line 211
    iput-object p4, p0, Lj$/util/stream/j;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 1

    .line 223
    iget-object v0, p0, Lj$/util/stream/j;->b:Lj$/time/format/a;

    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    .line 243
    iget-object v0, p0, Lj$/util/stream/j;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    .line 233
    iget-object v0, p0, Lj$/util/stream/j;->c:Lj$/time/format/a;

    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    .line 238
    iget-object v0, p0, Lj$/util/stream/j;->d:Lj$/time/format/a;

    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 1

    .line 228
    iget-object v0, p0, Lj$/util/stream/j;->a:Lj$/time/format/a;

    return-object v0
.end method
