.class public abstract Lcom/facebook/ads/redexgen/X/Wt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2242
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sZHdN6DnxhyjInuuwKT0RhtuIDa6RijQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8cuc4SRnt52u8A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2WFcqn3uWqeuESEsgYZMEltW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X9bY0baThRQoxJWrF88Q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LV97W74qtL9kCw5aLEufLebev1Dp02F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HRzTSkX2nkKPhEUot3qqZNsXHT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bu0g"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NlYn9LsIhiHyd3xbWzs6ij1u9O30FtmN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A03()V

    return-void
.end method

.method public static A00()Landroid/app/Activity;
    .locals 1

    .line 71552
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A01()Landroid/app/Activity;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71553
    .local v0, "ex":Ljava/lang/Exception;
    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A01()Landroid/app/Activity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 71554
    const/16 v2, 0x8

    const/16 v1, 0x1a

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 71555
    .local v0, "activityThreadClass":Ljava/lang/Class;
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Class;

    const/16 v2, 0x22

    const/16 v1, 0x15

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 71556
    .local v1, "activityThread":Ljava/lang/Object;
    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71557
    .local v2, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71558
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 71559
    .local v5, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 71560
    return-object v7

    .line 71561
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 71562
    .local v7, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 71563
    .local p0, "activityRecordClass":Ljava/lang/Class;
    const/16 v2, 0x42

    const/4 v1, 0x6

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71564
    .local p1, "pausedField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71565
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71566
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71567
    .local v3, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71568
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 71569
    :cond_2
    return-object v7
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wt;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wt;->A01:[Ljava/lang/String;

    const-string v1, "tITZfrjeKeNOj3ZL7JO2M2Srx7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "270Z6IsJIOKvltqMP1US5A2c"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wt;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x67t
        0x70t
        0x6dt
        0x72t
        0x6dt
        0x70t
        0x7dt
        0x6ft
        0x60t
        0x6at
        0x7ct
        0x61t
        0x67t
        0x6at
        0x20t
        0x6ft
        0x7et
        0x7et
        0x20t
        0x4ft
        0x6dt
        0x7at
        0x67t
        0x78t
        0x67t
        0x7at
        0x77t
        0x5at
        0x66t
        0x7ct
        0x6bt
        0x6ft
        0x6at
        0x6bt
        0x7dt
        0x7at
        0x7at
        0x6dt
        0x66t
        0x7ct
        0x49t
        0x6bt
        0x7ct
        0x61t
        0x7et
        0x61t
        0x7ct
        0x71t
        0x5ct
        0x60t
        0x7at
        0x6dt
        0x69t
        0x6ct
        0xft
        0x23t
        0x1t
        0x16t
        0xbt
        0x14t
        0xbt
        0x16t
        0xbt
        0x7t
        0x11t
        0x4dt
        0x5ct
        0x48t
        0x4et
        0x58t
        0x59t
    .end array-data
.end method
