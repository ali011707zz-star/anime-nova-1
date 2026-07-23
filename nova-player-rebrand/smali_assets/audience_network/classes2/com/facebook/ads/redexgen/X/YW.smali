.class public final Lcom/facebook/ads/redexgen/X/YW;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2515
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cuUzkH3QdbH3cJp2RF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kphHRdIOrc0r15jsPfyG2Jy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YnKzEWoXtdzuP95TROGjIP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "O6qhnuon9ci7avdCdn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JszjlqJauoZ2AkEe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2iwMqZkAQKEhQz1BEXGjAw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tv2fwm9vcfvUl0RC5d9GYW3eB7CSJdU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VWHYkG5jfvcYH9oXKfgyVS7MLxk2p9iO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YW;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YW;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/YW;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/YW;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A01:[Ljava/lang/String;

    const-string v1, "jOZxNa7dXP1jVDPJoO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "z9aGKGtKVlVAFuhw7X"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;)Ljava/util/Map;
    .locals 8
    .param p0    # Lcom/facebook/ads/redexgen/X/gi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74150
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74151
    .local v0, "windowInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 74152
    return-object v6

    .line 74153
    :cond_0
    :try_start_0
    const/16 v2, 0x28

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 74154
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YW;->A04(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 74155
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74156
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 74157
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_4

    .line 74158
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 74159
    .local v2, "window":Landroid/view/Window;
    if-eqz v1, :cond_4

    .line 74160
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74161
    .local v3, "flags":I
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 74162
    .local v4, "type":I
    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74163
    const/high16 v4, 0x400000

    and-int/2addr v4, v7

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 74164
    .local v5, "flagDismissKeyguardEnabled":Ljava/lang/String;
    :goto_0
    :try_start_1
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74165
    const/high16 v4, 0x80000

    and-int/2addr v4, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/YW;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YW;->A01:[Ljava/lang/String;

    const-string v1, "5jjmsuOSeLdxH4ITovSaNkR7tPO8fpvx"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 74166
    .local v6, "flagShowWhenLockedEnabled":Ljava/lang/String;
    :goto_1
    :try_start_2
    const/16 v2, 0x35

    const/4 v1, 0x5

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 74167
    :catch_0
    move-exception v7

    .line 74168
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YW;->A02:Ljava/lang/String;

    const/4 v2, 0x2

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74169
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A2T:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 74170
    const/16 v2, 0x2b

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 74171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-object v6
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YW;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x77t
        0x7at
        0x47t
        0x5ct
        0x5at
        0x4ft
        0x4bt
        0x56t
        0x50t
        0x51t
        0x1ft
        0x56t
        0x51t
        0x1ft
        0x48t
        0x56t
        0x51t
        0x5bt
        0x50t
        0x48t
        0x1ft
        0x56t
        0x51t
        0x59t
        0x50t
        0x1ft
        0x5ct
        0x57t
        0x5at
        0x5ct
        0x54t
        0x62t
        0x6ct
        0x70t
        0x6et
        0x7ct
        0x68t
        0x7bt
        0x6dt
        0x5bt
        0x57t
        0x42t
        0xft
        0x14t
        0xet
        0x16t
        0x4t
        0x60t
        0x71t
        0x73t
        0x7ct
        0x70t
        0x75t
        0x64t
        0x71t
        0x75t
        0x6et
        0x60t
        0x63t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 0

    .line 74172
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YW;->A01(Lcom/facebook/ads/redexgen/X/gi;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YC;->A04(Ljava/util/Map;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 3

    .line 74173
    const/16 v2, 0x20

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 74174
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
