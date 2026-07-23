.class public final Lj$/util/stream/F;
.super Lj$/util/stream/H;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/k2;


# static fields
.field public static final c:Lj$/util/stream/C;

.field public static final d:Lj$/util/stream/C;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 242
    new-instance v0, Lj$/util/stream/C;

    sget-object v2, Lj$/util/stream/a3;->LONG_VALUE:Lj$/util/stream/a3;

    .line 243
    new-instance v4, Lj$/util/stream/o;

    const/4 v1, 0x6

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/o;-><init>(I)V

    .line 243
    new-instance v5, Lj$/util/stream/o;

    const/4 v1, 0x7

    .line 0
    invoke-direct {v5, v1}, Lj$/util/stream/o;-><init>(I)V

    const/4 v1, 0x1

    .line 243
    sget-object v3, Lj$/util/D;->c:Lj$/util/D;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/C;-><init>(ZLj$/util/stream/a3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/F;->c:Lj$/util/stream/C;

    .line 245
    new-instance v1, Lj$/util/stream/C;

    .line 246
    new-instance v5, Lj$/util/stream/o;

    const/4 v0, 0x6

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/o;-><init>(I)V

    .line 246
    new-instance v6, Lj$/util/stream/o;

    const/4 v0, 0x7

    .line 0
    invoke-direct {v6, v0}, Lj$/util/stream/o;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 246
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/C;-><init>(ZLj$/util/stream/a3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/F;->d:Lj$/util/stream/C;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/H;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/e;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 239
    iget-boolean v0, p0, Lj$/util/stream/H;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/H;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 113
    new-instance v2, Lj$/util/D;

    invoke-direct {v2, v0, v1}, Lj$/util/D;-><init>(J)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
