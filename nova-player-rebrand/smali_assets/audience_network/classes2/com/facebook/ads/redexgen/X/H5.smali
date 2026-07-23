.class public final Lcom/facebook/ads/redexgen/X/H5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H4;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/H4;

.field public final A01:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H5;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H4;)V
    .locals 2

    .line 38357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38358
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H5;->A00:Lcom/facebook/ads/redexgen/X/H4;

    .line 38359
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38360
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H5;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/H9;",
            ">;"
        }
    .end annotation

    .line 38361
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 38362
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A01:Ljava/lang/reflect/Constructor;

    monitor-exit v4

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A00:Lcom/facebook/ads/redexgen/X/H4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H4;->A7R()Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    return-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38365
    :catch_0
    move-exception v3

    .line 38366
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 38367
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/H5;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H5;->A01:Ljava/lang/reflect/Constructor;

    monitor-exit v4

    return-object v0

    .line 38369
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H5;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x0t
        0x0t
        0x1dt
        0x0t
        0x52t
        0x1bt
        0x1ct
        0x1t
        0x6t
        0x13t
        0x1ct
        0x6t
        0x1bt
        0x13t
        0x6t
        0x1bt
        0x1ct
        0x15t
        0x52t
        0x17t
        0xat
        0x6t
        0x17t
        0x1ct
        0x1t
        0x1bt
        0x1dt
        0x1ct
        0x25t
        0x1et
        0x15t
        0x8t
        0x0t
        0x15t
        0x13t
        0x4t
        0x15t
        0x14t
        0x50t
        0x15t
        0x2t
        0x2t
        0x1ft
        0x2t
        0x50t
        0x13t
        0x2t
        0x15t
        0x11t
        0x4t
        0x19t
        0x1et
        0x17t
        0x50t
        0x15t
        0x8t
        0x4t
        0x2t
        0x11t
        0x13t
        0x4t
        0x1ft
        0x2t
    .end array-data
.end method


# virtual methods
.method public final varargs A03([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/H9;
    .locals 4

    .line 38370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/H5;->A01()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 38371
    .local v0, "extractorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/androidx/media3/extractor/Extractor;>;"
    if-nez v0, :cond_0

    .line 38372
    const/4 v0, 0x0

    return-object v0

    .line 38373
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H9;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38374
    :catch_0
    move-exception v3

    .line 38375
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, 0x1d

    const/16 v1, 0x23

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
