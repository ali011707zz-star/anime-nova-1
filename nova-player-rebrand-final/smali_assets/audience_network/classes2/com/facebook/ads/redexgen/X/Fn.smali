.class public abstract Lcom/facebook/ads/redexgen/X/Fn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoFrameProcessorAccessor"
.end annotation


# static fields
.field public static A00:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static A01:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static A02:Ljava/lang/reflect/Method;

.field public static A03:Ljava/lang/reflect/Method;

.field public static A04:Ljava/lang/reflect/Method;

.field public static A05:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fn;->A03()V

    return-void
.end method

.method public static A00(F)Lcom/facebook/ads/redexgen/X/4H;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36177
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fn;->A04()V

    .line 36178
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fn;->A00:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 36179
    .local v0, "builder":Ljava/lang/Object;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A04:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36180
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fn;->A02:Ljava/lang/reflect/Method;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/5E;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36181
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fn;->A04()V

    .line 36182
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fn;->A01:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 36183
    .local v0, "builder":Ljava/lang/Object;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fn;->A03:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    .line 36184
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 36185
    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fn;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xc9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x42t
        0x5et
        0x5bt
        0x53t
        0x54t
        0x58t
        0x5at
        0x19t
        0x51t
        0x56t
        0x54t
        0x52t
        0x55t
        0x58t
        0x58t
        0x5ct
        0x19t
        0x56t
        0x53t
        0x44t
        0x19t
        0x56t
        0x59t
        0x53t
        0x45t
        0x58t
        0x5et
        0x53t
        0x4ft
        0x19t
        0x5at
        0x52t
        0x53t
        0x5et
        0x56t
        0x4t
        0x19t
        0x52t
        0x4ft
        0x58t
        0x47t
        0x5bt
        0x56t
        0x4et
        0x52t
        0x45t
        0x19t
        0x52t
        0x51t
        0x51t
        0x52t
        0x54t
        0x43t
        0x19t
        0x73t
        0x52t
        0x51t
        0x56t
        0x42t
        0x5bt
        0x43t
        0x61t
        0x5et
        0x53t
        0x52t
        0x58t
        0x71t
        0x45t
        0x56t
        0x5at
        0x52t
        0x67t
        0x45t
        0x58t
        0x54t
        0x52t
        0x44t
        0x44t
        0x58t
        0x45t
        0x13t
        0x71t
        0x56t
        0x54t
        0x43t
        0x58t
        0x45t
        0x4et
        0x13t
        0x75t
        0x42t
        0x5et
        0x5bt
        0x53t
        0x52t
        0x45t
        0x76t
        0x7at
        0x78t
        0x3bt
        0x73t
        0x74t
        0x76t
        0x70t
        0x77t
        0x7at
        0x7at
        0x7et
        0x3bt
        0x74t
        0x71t
        0x66t
        0x3bt
        0x74t
        0x7bt
        0x71t
        0x67t
        0x7at
        0x7ct
        0x71t
        0x6dt
        0x3bt
        0x78t
        0x70t
        0x71t
        0x7ct
        0x74t
        0x26t
        0x3bt
        0x70t
        0x6dt
        0x7at
        0x65t
        0x79t
        0x74t
        0x6ct
        0x70t
        0x67t
        0x3bt
        0x70t
        0x73t
        0x73t
        0x70t
        0x76t
        0x61t
        0x3bt
        0x46t
        0x76t
        0x74t
        0x79t
        0x70t
        0x54t
        0x7bt
        0x71t
        0x47t
        0x7at
        0x61t
        0x74t
        0x61t
        0x70t
        0x41t
        0x67t
        0x74t
        0x7bt
        0x66t
        0x73t
        0x7at
        0x67t
        0x78t
        0x74t
        0x61t
        0x7ct
        0x7at
        0x7bt
        0x31t
        0x57t
        0x60t
        0x7ct
        0x79t
        0x71t
        0x70t
        0x67t
        0x3bt
        0x2dt
        0x3ct
        0x1at
        0x27t
        0x3ct
        0x29t
        0x3ct
        0x21t
        0x27t
        0x26t
        0xct
        0x2dt
        0x2ft
        0x3at
        0x2dt
        0x2dt
        0x3bt
    .end array-data
.end method

.method public static A04()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "scaleAndRotateTransformationBuilderConstructor",
            "setRotationMethod",
            "buildScaleAndRotateTransformationMethod",
            "videoFrameProcessorFactoryBuilderConstructor",
            "buildVideoFrameProcessorFactoryMethod"
        }
    .end annotation

    .line 36186
    sget-object v5, Lcom/facebook/ads/redexgen/X/Fn;->A00:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A04:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A02:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 36187
    :cond_0
    const/16 v2, 0x61

    const/16 v1, 0x56

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 36188
    .local v0, "scaleAndRotateTransformationBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Class;

    .line 36189
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Ljava/lang/reflect/Constructor;

    .line 36190
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v4

    .line 36191
    const/16 v2, 0xb7

    const/16 v1, 0x12

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A04:Ljava/lang/reflect/Method;

    .line 36192
    new-array v0, v4, [Ljava/lang/Class;

    .line 36193
    invoke-virtual {v6, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A02:Ljava/lang/reflect/Method;

    .line 36194
    .end local v0    # "scaleAndRotateTransformationBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A03:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 36195
    :cond_2
    const/4 v2, 0x5

    const/16 v1, 0x5c

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36196
    .local v0, "videoFrameProcessorFactoryBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v4, [Ljava/lang/Class;

    .line 36197
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Ljava/lang/reflect/Constructor;

    .line 36198
    new-array v0, v4, [Ljava/lang/Class;

    .line 36199
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A03:Ljava/lang/reflect/Method;

    .line 36200
    .end local v0    # "videoFrameProcessorFactoryBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-void
.end method
