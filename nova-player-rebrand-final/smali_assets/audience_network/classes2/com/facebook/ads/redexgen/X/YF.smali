.class public final Lcom/facebook/ads/redexgen/X/YF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YG;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YG;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YF;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YG;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YF;->A01:Lcom/facebook/ads/redexgen/X/YG;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73812
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YF;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YF;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x74t
        -0x7ft
        0x6dt
        0x58t
        -0x5at
        0x53t
        0x56t
        0x58t
        -0x69t
        -0x6ft
        -0x7bt
        -0x71t
        -0x7et
        0x7et
        -0x7ft
        -0x70t
        0x7ct
        -0x80t
        -0x74t
        -0x6et
        -0x75t
        -0x6ft
        -0x7et
        -0x71t
        0x7ct
        -0x70t
        -0x7bt
        -0x74t
        -0x71t
        -0x6ft
        0x7ct
        -0x6ft
        0x7et
        -0x70t
        -0x78t
        0x7ct
        -0x7et
        -0x6bt
        -0x7et
        -0x80t
        -0x6et
        -0x6ft
        -0x74t
        -0x71t
    .end array-data
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    .line 73813
    const/16 v2, 0xa

    const/16 v1, 0x23

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A00(Ljava/lang/String;)V

    .line 73814
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YF;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YF;->A00:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73815
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73816
    return-object v0
.end method
