.class public abstract Lcom/facebook/ads/redexgen/X/WP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2203
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Sq0yZcwOgTGXIMbLXRKfOSdr7WdDOtyr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WnfyQ5g3TOMlbPuUI1S38a6tMB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BxTfzMbMUk2Qmg34ayslQfc8Uzo4QxVA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "G4BpHh0l6RWcqwLcVWEAByBTvG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Wi1pgJHqhNt1rkC03e0JnQGSkCoA4pQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kTE0MmPx9fRa1cZyXVlJ3kyazaX8qf2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b5YZOJ5Dove32nH3VcyYtuQbqE02hip"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2Ait9FMgROtB2NZo6j3UC5dnhoYmjwMQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WP;->A00:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WP;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Ljava/lang/Throwable;
    .locals 4

    .line 70606
    sget-object v0, Lcom/facebook/ads/redexgen/X/WP;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WP;->A00:[Ljava/lang/String;

    const-string v1, "SrEDgE7BL0uBLmhOMBZPSVpD24D14xc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UbLf4323SSK9wFof04kcdZ3h6JYQV0q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method


# virtual methods
.method public abstract A01()V
.end method

.method public final run()V
    .locals 2

    .line 70607
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/WP;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70608
    :catchall_0
    move-exception v1

    .line 70609
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/WP;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70610
    throw v1

    .line 70611
    :goto_0
    return-void
.end method
