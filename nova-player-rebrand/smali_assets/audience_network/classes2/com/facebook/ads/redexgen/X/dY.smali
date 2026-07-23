.class public final Lcom/facebook/ads/redexgen/X/dY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5G;->A00(Lcom/facebook/ads/redexgen/X/E9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5G;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dY;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5G;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:Lcom/facebook/ads/redexgen/X/5G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x53

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/dY;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x71t
        0x7ct
        0x7dt
        0x77t
        0x48t
        0x74t
        0x79t
        0x61t
        0x7at
        0x79t
        0x7bt
        0x73t
        0x5dt
        0x6at
        0x6at
        0x77t
        0x6at
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 80224
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dY;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/dY;->A00:Lcom/facebook/ads/redexgen/X/5G;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5G;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/dm;->AGQ(Ljava/lang/String;)V

    .line 80225
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dY;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
