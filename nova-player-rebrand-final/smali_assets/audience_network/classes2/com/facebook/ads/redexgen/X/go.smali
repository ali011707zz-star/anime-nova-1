.class public final Lcom/facebook/ads/redexgen/X/go;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gn;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gn;

.field public final synthetic A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/go;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gn;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
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

    .line 83514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/go;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/go;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/go;->A02:[B

    return-void

    :array_0
    .array-data 1
        0xet
        0x2ct
        0x2et
        0x33t
        0x30t
        -0x15t
        0x31t
        0x2ct
        0x34t
        0x37t
        -0x7t
        -0x6et
        -0x50t
        -0x4et
        -0x49t
        -0x4ct
        0x6ft
        -0x3et
        -0x3ct
        -0x4et
        -0x4et
        -0x4ct
        -0x3et
        -0x3et
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 83515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A00:Lcom/facebook/ads/redexgen/X/Sp;

    if-eqz v0, :cond_0

    .line 83516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0H:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0G(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 83518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83519
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    sget v5, Lcom/facebook/ads/redexgen/X/T0;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83520
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v7

    .line 83521
    const/16 v2, 0xb

    const/16 v1, 0xe

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/go;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/T0;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sq;ILjava/lang/String;J)V

    .line 83522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0U()V

    .line 83523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A00:Lcom/facebook/ads/redexgen/X/Sp;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Sp;->ADT()V

    .line 83524
    :cond_0
    :goto_0
    return-void

    .line 83525
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0G:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0G(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 83526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83527
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/gn;->A01:Lcom/facebook/ads/redexgen/X/Sq;

    sget v5, Lcom/facebook/ads/redexgen/X/T0;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 83528
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(Lcom/facebook/ads/redexgen/X/Sx;)J

    move-result-wide v7

    .line 83529
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/go;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/T0;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sq;ILjava/lang/String;J)V

    .line 83530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0V()V

    .line 83531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/go;->A00:Lcom/facebook/ads/redexgen/X/gn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gn;->A00:Lcom/facebook/ads/redexgen/X/Sp;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Sp;->ADL()V

    goto :goto_0
.end method
