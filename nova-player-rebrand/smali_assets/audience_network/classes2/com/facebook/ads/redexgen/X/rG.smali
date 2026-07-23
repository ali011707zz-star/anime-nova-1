.class public final Lcom/facebook/ads/redexgen/X/rG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/rF;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/hc;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rH;Lcom/facebook/ads/redexgen/X/rR;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/rW;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/rF;

.field public final synthetic A02:Ljava/lang/Exception;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/rG;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/rF;ILjava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106192
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/rG;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/rG;->A02:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/rG;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/rG;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x38t
        0x29t
        0x19t
        0x38t
        0x31t
        0x3ct
        0x24t
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

    .line 106193
    .local v0, "this":Lcom/facebook/ads/redexgen/X/rG;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A0C(Lcom/facebook/ads/redexgen/X/rF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106194
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Ao;->A07:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A0D(Lcom/facebook/ads/redexgen/X/rF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106195
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/rF;->A0F()V

    .line 106196
    return-void

    .line 106197
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/rG;
    :cond_1
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A02(Lcom/facebook/ads/redexgen/X/rF;)Lcom/facebook/ads/redexgen/X/hc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/hc;->ACf()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/rF;->A09(Lcom/facebook/ads/redexgen/X/rF;J)V

    .line 106198
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A03(Lcom/facebook/ads/redexgen/X/rF;)Lcom/facebook/ads/redexgen/X/rW;

    const/4 v0, 0x0

    if-nez v0, :cond_2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/rG;->A00:I

    .line 106199
    .local v1, "delay":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A01(Lcom/facebook/ads/redexgen/X/rF;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A04(Lcom/facebook/ads/redexgen/X/rF;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v0, v1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 106200
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A01:Lcom/facebook/ads/redexgen/X/rF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A03(Lcom/facebook/ads/redexgen/X/rF;)Lcom/facebook/ads/redexgen/X/rW;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rG;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106201
    .end local v1    # "delay":I
    :cond_3
    :goto_0
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106202
    :catch_0
    move-exception v1

    .line 106203
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/rG;->A02:Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106204
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106205
    :catchall_0
    move-exception v0

    .end local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
