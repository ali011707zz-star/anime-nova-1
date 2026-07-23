.class public abstract Lcom/facebook/ads/redexgen/X/43;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/lang/reflect/Method;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 164
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rt6CjKtQUOFxarnmkWqgGWje"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3nuh3b0J3kR9pkmWbi6mdwRc069ydG03"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vgqSEb59pwcvKw9WdixQFoz3Va18KFsr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "h35Isj3aZViVWltuKEoucz22tQqncTnx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yJGJRoZVng69n9xQNPvqaXzNAukE8cwJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZigbL863Rtw4tWoi2mLflUon"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "c977rkHkuANnZfYHmbWrwArrI1mgRqhG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I5ankwGA25juUPMFKSRh1H9yjdqc0trO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/43;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/43;->A03()V

    return-void
.end method

.method public static A00(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 11136
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 11137
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 11138
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/43;->A01(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/43;->A02:[Ljava/lang/String;

    const-string v1, "R1pRDUJQUvAtWdszhYbqbgNcOgXvgcSI"

    const/4 v0, 0x7

    aput-object v1, p0, v0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8

    .line 11139
    sget-object v3, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/lang/reflect/Method;

    .line 11140
    .local v0, "getIBinder":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 11141
    :try_start_0
    const-class v3, Landroid/os/Bundle;

    const/16 v2, 0x58

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/lang/reflect/Method;

    .line 11142
    sget-object v0, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11143
    sget-object v3, Lcom/facebook/ads/redexgen/X/43;->A00:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 11144
    :catch_0
    move-exception v3

    .line 11145
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const/16 v2, 0x34

    const/16 v1, 0x24

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11146
    return-object v7

    .line 11147
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    :try_start_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v6

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11148
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    .line 11149
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const/16 v2, 0xa

    const/16 v1, 0x2a

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11150
    return-object v7
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

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

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/43;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x5ct
        0x47t
        0x4dt
        0x45t
        0x4ct
        0x7ct
        0x5dt
        0x40t
        0x45t
        0x2ct
        0xbt
        0x3t
        0x6t
        0xft
        0xet
        0x4at
        0x1et
        0x5t
        0x4at
        0x3t
        0x4t
        0x1ct
        0x5t
        0x1t
        0xft
        0x4at
        0xdt
        0xft
        0x1et
        0x23t
        0x28t
        0x3t
        0x4t
        0xet
        0xft
        0x18t
        0x4at
        0x1ct
        0x3t
        0xbt
        0x4at
        0x18t
        0xft
        0xct
        0x6t
        0xft
        0x9t
        0x1et
        0x3t
        0x5t
        0x4t
        0x63t
        0x44t
        0x4ct
        0x49t
        0x40t
        0x41t
        0x5t
        0x51t
        0x4at
        0x5t
        0x57t
        0x40t
        0x51t
        0x57t
        0x4ct
        0x40t
        0x53t
        0x40t
        0x5t
        0x42t
        0x40t
        0x51t
        0x6ct
        0x67t
        0x4ct
        0x4bt
        0x41t
        0x40t
        0x57t
        0x5t
        0x48t
        0x40t
        0x51t
        0x4dt
        0x4at
        0x41t
        0x78t
        0x7at
        0x6bt
        0x56t
        0x5dt
        0x76t
        0x71t
        0x7bt
        0x7at
        0x6dt
    .end array-data
.end method
